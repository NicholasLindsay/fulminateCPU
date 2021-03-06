#include "stdafx.h"
#include "fulminate_cpu.h"
#include "computersystem.h"

#include <iostream>
#include <iomanip>

using namespace CNOSim;

FulminateCPU::FulminateCPU()
{
	Reset();
}

void FulminateCPU::ITick()
{
	if (!mSys) return;

	// Fetch instruction
	Word instr = mSys->BusReadWord(pc);
	pc += 2;

	// Decode instruction
	int bw = extract(instr, 7, 7); // byte/word field

	/* Look at upper two bits then decide what to do */
	switch (instr >> 14)
	{
	case 0: { // HOBBLY GOBBLY
		if (extract(instr, 13, 13) == 1) {
			if (extract(instr, 12, 11) == 0) { // TEST

			}
			else { // BRANCH
				BranchInstruction(instr);
			}
		}
		break;
	}
	case 1: { // GET/SET EXTENDED INSTRUCTIONS
		ExtendedMemOp(instr, bw);
		break;
	}
	case 2: { // ALL TWO OPERAND ALU INSTRUCTIONS
		ALUTwoOp(instr, bw);
		break;
		}
	case 3: { // 11xxx - ADDI/SUBI/GET/SET/ANDI/CMPI/GETI/ORI
		int bits13to11 = extract(instr, 13, 11);
		switch (bits13to11) {
		case 0: // ADDI (fall through)
		case 1: // SUBI (fall through)
		case 4: // ANDI (fall through)
		case 5: // CMPI (fall through)
		case 6: // GETI (fall through)
		case 7: { // ORI
			ShortImmOp(instr);
			break;
		}
		case 2: { // GET (two op)
			GetTwoOp(instr, bw);
			break;
		}
		case 3: { // SET (two op)
			SetTwoOp(instr, bw);
			break;
		}
		}
		break;
	}
	}
}

/* Resets the CPU */
void FulminateCPU::Reset()
{
	pc = 0;

	// Clear flags
	flags = 0;
}

/* Prints out the state of internal registers and flags */
void FulminateCPU::PrintState(std::ostream* str)
{
	// Save state
	std::ios::fmtflags fstate(str->flags());

	// Set up hex output
	*str << std::hex << std::setfill('0') << std::right;

	// Title
	*str << "\t\tCPU Status\t\t\n";

	// Print out address registers
	*str << "ADR: \t";
	for (int i = 0; i < 4; i++) {
		*str << "a" << i << ": ";
		*str << std::setw(8) << adr[i] << "        ";
	}
	*str << "\n";
	
	*str << "GPR:\t";
	for (int i = 0; i < 8; i++) {
		*str << "g" << i << ": ";
		*str << std::setw(4) << std::right << gpr[i] << "  ";
	}
	*str << "\n";

	// Print out addr
	
	// Print out PC and flags
	*str << "\tPC:     " << std::setw(8) << pc << "\t\t     Flags: ";
	*str << std::setw(4) << flags << "  (";

	// Print out flags with letter if set and dash if unset/dc
	*str << "------------";
	*str << ((flags & OVERFLOWBIT) ? 'O' : '-');
	*str << ((flags & ZEROBIT) ? 'Z' : '-');
	*str << ((flags & SIGNBIT) ? 'S' : '-');
	*str << ((flags & CARRYBIT) ? 'C' : '-');
	*str << ")\n";

	// Restore state
	str->flags(fstate);
}

/* Fetches the data from a multi-operand */
Word FulminateCPU::GetOperand(int op, int bw)
{
	// Reg direct
	if (extract(op, 6, 3) == 0) {
		return gpr[extract(op, 2, 0)];
	}
	// Hardwired 0
	else if (extract(op, 6, 0) == 0x1E) {
		return 0;
	}

	// Otherwise, get from memory
	Address ea = GetEffectiveAddress(op, bw);
	if (bw == 1) {
		return ReadBusByteProper(ea);
	}
	else if (bw == 0) {
		return mSys->BusReadWord(ea);
	}

	return 0; //TEMPORARY
}

/* Reads either a byte or word from memory */
Word FulminateCPU::GetByteOrWord(Address addr, int bw)
{
	if (bw) {
		return mSys->BusReadWord(addr);
	}
	else {
		return mSys->BusReadByte(addr);
	}
}

/* Returns the effective address, if any, of a multi-operand */
Address FulminateCPU::GetEffectiveAddress(int op, int bw)
{
	int rA = extract(op, 1, 0);
	int reg4 = extract(op, 4, 2);

	if (extract(op, 6, 6)) { // [rA + offset]
		return adr[rA] + (SWord) sext_w(extract(op, 5, 2), 4);
	}
	else if (extract(op, 5, 5)) { // [rA + reg]
		return adr[rA] + (SWord)(gpr[reg4]);
	}
	else if (extract(op, 5, 3) == 0) { // reg direct
		return 0;
	}
	else if (extract(op, 5, 2) == 2) { // [rA--]
		Address rv = adr[rA];
		if (bw) adr[rA] -= 2; 
		else adr[rA]--;
		return rv;
	}
	else if (extract(op, 5, 2) == 3) { // [++rA]
		adr[rA]++;
		if (bw) adr[rA]++;
		return adr[rA];
	}
	else if (extract(op, 5, 2) == 4) { // [rA + 8]
		return adr[rA] + 8;
	}
	else if (extract(op, 5, 2) == 5) { // [rA + imm16]
		Address rv = adr[rA] + (SWord) mSys->BusReadWord(pc);
		pc += 2;
		return rv;
	}
	else if (extract(op, 5, 2) == 6) { // [rA + imm32]
		Address rv = mSys->BusReadWord(pc) << 16;
		pc += 2;
		rv |= mSys->BusReadWord(pc);
		pc += 2;
		return rv + adr[rA];
	}
	else if (extract(op, 5, 2) == 7) {
		int low2 = extract(op, 1, 0);
		if (low2 == 0) { // imm ([PC])
			Address rv = pc;
			pc += 2;
			return rv;
		}
		else if (low2 == 2) { // hardwird 0 (no address)
			return 0;
		}
	}

	return 0;
}

/* Executes a two operand ALU instruction (opcodes 10xxx) */
void FulminateCPU::ALUTwoOp(Word opcode, int bw)
{
	/* Decode ALU opcode direct from instruction */
	ALUOp_t alu_op = (ALUOp_t) extract(opcode, 13, 11);

	/* Fetch operands */
	Word reg_a = extract(opcode, 10, 8);
	Word op = GetOperand(opcode, bw); // data value of operand b
	Word reg_val = gpr[reg_a]; // data value of operand a

	int carry_in = flags & SIGNBIT;

	/* Perform operation, keep result */
	Word result = ALUOp(alu_op, bw, reg_val, op);

	/* Store result back into register file */
	gpr[reg_a] = result;
}

/* Updates the carry flag depending on result of arithmetic sum */
void FulminateCPU::UpdateCarry(int sum)
{
	if (sum & 0x10000) { // if carry, set flag
		flags |= CARRYBIT;
	}
	else { // otherwise mask out flag
		flags &= !CARRYBIT;
	}
}

/* Performs an ALU calculation, updates flags, and returns result */
Word FulminateCPU::ALUOp(FulminateCPU::ALUOp_t op, int bw, Word a, Word b)
{
	Word result = a;
	int carry_in = flags & CARRYBIT;

	switch (op) {
	case ADD : {
		int sum = (int)a + (int)b;
		UpdateCarry(sum);
		// Do a cast and hope it works -> not sure if neccesary
		result = (sum & 0xffff);
		break;
	}
	case SUB: {
		int sum = (int)a + (int)~b + 1; // 2's complement
		UpdateCarry(sum);
		result = (sum & 0xffff);
		break;
	}
	case ADC: // ADC
	{
		int sum = (int)a + (int)b + carry_in;
		UpdateCarry(sum);
		result = (Word)(sum & 0xffff);
		break;
	}
	case SWB: // SBB
	{
		int sum = (int)a + (int)~b + 1 - carry_in;
		UpdateCarry(sum);
		result = (Word)(sum & 0xffff);
		break;
	}
	case AND:
	{
		result = a & b;
		break;
	}
	case CMP:
	{
		int sum = (int)a - (int)b;
		UpdateCarry(sum);
		break;
	}
	case XOR:
	{
		result = a ^ b;
		break;
	}
	case OR:
	{
		result = a | b;
		break;
	}
	case TEST:
	{
		result = a & b;
	}
	}

	// Update flags
	if (result == 0) { // Zero flag if result 0
		flags |= ZEROBIT;
	}
	else {
		flags &= ~ZEROBIT;
	}

	if (result & 0x8000) { // Sign bit
		flags |= SIGNBIT;
	}
	else {
		flags &= ~SIGNBIT;
	}

	// If TEST, set a as result
	if (op == TEST) return a;

	// otherwise, return result
	return result;
}

/* Performs an Extended Memory Operation*/
void FulminateCPU::ExtendedMemOp(Word opcode, int bw)
{
	/* Extract addr_reg and gpr_reg from opcode */
	int addr_reg = extract(opcode, 13, 12);
	int gpr_reg = extract(opcode, 10, 8);

	/* Convert offset field into a whole word */
	Word offset = sext_w(extract(opcode, 6, 0), 7);

	/* Decide if this is a get or set */
	int isSet = extract(opcode, 11, 11);

	/* Find the effective memory address */
	Address ea = adr[addr_reg] + offset;

	/* If instruction is GET (i.e. load from memory) */
	if (isSet == 0) {
		if (bw) gpr[gpr_reg] = ReadBusByteProper(ea);
		else gpr[gpr_reg] = mSys->BusReadWord(ea);
	}
	/* Otherwise, instruction is SET (i.e. store to memory) */
	else {
		if (bw) mSys->BusWriteByte(ea, gpr[gpr_reg] & 0xff);
		else mSys->BusWriteWord(ea, gpr[gpr_reg]);
	}
}

/* Reads a byte from the system bus and sign extends */
Word FulminateCPU::ReadBusByteProper(Address addr)
{
	return sext_w(mSys->BusReadByte(addr), 8);
};

/* Performs a branch instruction */
void FulminateCPU::BranchInstruction(Word opcode)
{
	// Decide if branch should be taken
	bool take_branch = false;
	
	// the condition is encoded by bits 12-9 of the instruction
	int cond = extract(opcode, 12, 9);
	
	switch (cond) {
	case 0x4: { // BEQ (BZ)
		take_branch = flags & ZEROBIT;
		break;
	}
	case 0x5: { // BNE (BNZ)
		take_branch = !(flags & ZEROBIT);
		break;
	}
	case 0x6: { // BGTU
		take_branch = (flags & CARRYBIT & !ZEROBIT);
		break;
	}
	case 0x7: { // BLEU
		take_branch = !(flags & CARRYBIT & !ZEROBIT);
		break;
	}
	case 0x8: { // BC
		take_branch = (flags & CARRYBIT);
		break;
	}
	case 0x9: { // BNC
		take_branch = !(flags & CARRYBIT);
		break;
	}
	case 0xa: { // BGT (signed)
		take_branch = (flags & !CARRYBIT & !ZEROBIT);
		break;
	}
	case 0xb: { // BLEU (signed)
		take_branch = !(flags & !CARRYBIT & !ZEROBIT);
		break;
	}
	case 0xc: { // BGE (signed)
		take_branch = (flags & !CARRYBIT);
		break;
	}
	case 0xd: { // BLT (signed)
		take_branch = !(flags & !CARRYBIT);
		break;
	}
	case 0xe: { // BOV
		take_branch = (flags & OVERFLOWBIT);
		break;
	}
	case 0xf: { // Branch always
		take_branch = true;
		break;
	}
	default: { // Never branch - SHOULD NEVER REACH HERE
		take_branch = false;
	}
	}
	
	if (take_branch) {
		// Get offset from lower 9 bits
		signed int offset = (SWord) sext_w(extract(opcode, 8, 0),9);	
		
		// Add this to pc (branch address is relative to PC + 2)
		// i.e. offset = dest - opcode_addr - 2
		// TODO: offset in words, not bytes. At moment fine
		//pc += (offset << 1);
		pc += offset;
	}
	
	return;
}

/* Performs an 8 bit immediate instruction (ADDI, ANDI, CMPI, GETI, ORI) */
void FulminateCPU::ShortImmOp(Word opcode)
{
	// Extract instruction parameters
	// Note that alu_op = 6 is NOT xor. This is handled below.
	ALUOp_t alu_op = (ALUOp_t) extract(opcode, 13, 11);
	Word reg_a = extract(opcode, 10, 8);
	Word imm = extract(opcode, 7, 0);

	Word res;

	// Is operation GETI?
	if (alu_op == 6) {
		res = imm;
	}
	// Perform alu operation
	else {
		Word res = ALUOp(alu_op, 0, gpr[reg_a], imm);
	}

	// Store result
	gpr[reg_a] = res;
}

/* Performs the 2-operand GET instruction */
void FulminateCPU::GetTwoOp(Word opcode, int bw) 
{
	/* Fetch operands */
	int reg_a;
	Word op_2;
	GetTwoOpOperands(opcode, bw, &reg_a, &op_2);
	
	/* Perform operation */
	gpr[reg_a] = op_2;
}

/* Fetches reg_a register number and operand value for two-op instructions */
void FulminateCPU::GetTwoOpOperands(Word opcode, int bw, int* reg_a, Word* op)
{
	*reg_a = extract(opcode, 10, 8);
	*op = GetOperand(opcode, bw); // data value of operand b
}

/* Performs a Set instruction with a register and a multi-operand */
void FulminateCPU::SetTwoOp(Word opcode, int bw)
{
	// Extract multioperand
	int multi_op = extract(opcode, 6, 0);
	int reg = extract(opcode, 10, 8);

	// If non-memory and non-register, do nothing
	if (extract(multi_op, 6, 2) == 7) {
		// do nothing
	}
	else {
		Address ea = GetEffectiveAddress(opcode, bw);

		if (bw) {
			mSys->BusWriteByte(ea, gpr[reg]);
		}
		else {
			mSys->BusWriteWord(ea, gpr[reg]);
		}
	}
}