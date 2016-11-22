#pragma once
#include "computersystem.h"
#include "Device.h"
#include "fulminate_cpu.h"
#include <iostream>

/*
*	The simulation class represents a complete simulated system, with all the
*	devices, CPU and bus objects stored in this class.
*/
namespace CNOSim
{
	class Simulation
	{
	public:
		Simulation();
		~Simulation();

		//void RunDebugShell();
		int RunCommands(std::istream* in, std::ostream* out,
			bool prompt = false);
	private:
		CNOSim::ComputerSystem mSys;
		CNOSim::FulminateCPU mCpu;
		CNOSim::RAMDevice * mRAM;

		// Shell commands:
		bool PokeString(std::stringstream *ss, std::ostream* out);
		bool PokeBytes(std::stringstream *ss, std::ostream* out);
	};
}