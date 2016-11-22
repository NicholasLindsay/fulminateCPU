#pragma once
#include "cpu.h"

namespace CNOSim
{
	class FulminateCPU : public CPU
	{
	public:
		FulminateCPU();

		virtual void ITick();
		virtual void Reset();
		virtual void PrintState(std::ostream* str);
		void UnitTest();

		enum FlagBits {
			CARRYBIT = 1,
			SIGNBIT = 2,
			ZEROBIT = 4,
			OVERFLOWBIT=8
		};

		enum ALUOp_t {
			ADD = 0,
			SUB = 1,
			ADC = 2,
			SWB = 3,
			AND = 4,
			CMP = 5,
			XOR = 6,
			OR = 7,
			TEST = 100
		};

	private:
		reg32 pc;
		reg16 gpr[8];
		reg32 adr[4];
		reg16 flags;

		Word GetOperand(int operand, int bw);
		Word GetByteOrWord(Address addr, int bw);
		Address GetEffectiveAddress(int operand, int bw);
		void ALUTwoOp(Word opcode, int bw);		
		void UpdateCarry(int sum);
		Word ALUOp(ALUOp_t op, int bw, Word a, Word b);
		void ExtendedMemOp(Word opcode, int bw);
		Word ReadBusByteProper(Address addr);
		void BranchInstruction(Word opcode);
	};
}
