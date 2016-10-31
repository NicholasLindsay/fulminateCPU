#pragma once
#include "types.h"

namespace CNOSim
{
	// Decleration of classes in other files
	class ComputerSystem;

	class CPU
	{
		friend class ComputerSystem;
	public:
		CPU() :
			mSys(nullptr) {};

		virtual void ITick() = 0;
		virtual void Reset() = 0;

		CPU(CPU const &) = delete;
		CPU& operator=(CPU const &) = delete;

		virtual ~CPU();
	protected:
		void SetParentComputerSystem(ComputerSystem * sys);
		ComputerSystem * mSys;
	};
}