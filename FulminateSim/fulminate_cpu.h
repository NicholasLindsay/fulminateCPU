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
		void UnitTest();

		enum FlagBits {
			CARRYBIT = 1,
			SIGNBIT = 2,
			ZEROBIT = 4,
			OVERFLOWBIT=8
		};

	private:
		reg32 pc;
		reg16 gpr[8];
		reg32 adr[4];
		reg16 flags;

		Word GetOperand(int operand, int bw);
		Word GetByteOrWord(Address addr, int bw);
		Address GetEffectiveAddress(int operand, int bw);
		void ALUOperation(Word opcode, int bw);
		void UpdateCarry(int sum);
	};
}
