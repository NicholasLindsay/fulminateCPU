#include "stdafx.h"
#include "fulminate_cpu.h"
#include "computersystem.h"

#include <iostream>

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
	switch (instr >> 14)
	{
	case 2: { // ALL TWO OPERAND ALU INSTRUCTIONS
		ALUOperation(instr, bw);
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

/* Tests all effective address calculations */
void FulminateCPU::UnitTest()
{
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
	if (bw == 0) {
		return mSys->BusReadByte(ea);
	}
	else if (bw == 1) {
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
		Address rv = adr[rA] + mSys->BusReadWord(pc);
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

/* Executes an instruction in the ALU, updating flags as neccessary */
void FulminateCPU::ALUOperation(Word opcode, int bw)
{
	int alu_op = extract(opcode, 13, 11);
	Word reg_a = extract(opcode, 10, 8);
	Word op = GetOperand(opcode, bw); // data value of operand b
	Word reg_val = gpr[reg_a]; // data value of operand a
	Word result;
	int carry_in = flags & SIGNBIT;

	switch (alu_op){
	case 0: // ADD
	{
		int sum = (int)reg_val + (int)op;
		UpdateCarry(sum);

		// Do a cast and hope it works -> not sure and neccesary
		result = (Word)(sum & 0xffff);
		break;
	}
	case 1: // SUB
	{
		int sum = (int) reg_val + (int)(Word) ~op + 1; // 2's complement
		UpdateCarry(sum);
		result = (Word)(sum & 0xffff);
		break;
	}
	case 2: // ADC
	{
		int sum = (int)reg_val + (int)op + carry_in;
		UpdateCarry(sum);
		result = (Word)(sum & 0xffff);
		break;
	}
	case 3: // SBB
	{
		int sum = (int)reg_val + (int)(Word)~op + 1 - carry_in;
		UpdateCarry(sum);
		result = (Word)(sum & 0xffff);
		break;
	}
	case 4: // AND
	{
		result = reg_val & op;
		break;
	}
	case 5: // CMP
	{
		int sum = (int)reg_val - (int)op;
		UpdateCarry(sum);
		break;
	}
	case 6: // XOR
	{
		result = reg_val ^ op;
		break;
	}
	case 7: // OR
	{
		result = reg_val | op;
		break;
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