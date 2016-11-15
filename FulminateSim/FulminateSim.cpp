// FulminateSim.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "Device.h"
#include "computersystem.h"
#include "fulminate_cpu.h"
#include <iostream>
#include <sstream>

int _tmain(int argc, _TCHAR* argv[])
{
	CNOSim::ComputerSystem sys;
	CNOSim::FulminateCPU CPU;
	CNOSim::RAMDevice ram(1024);

	sys.AttachCPU(&CPU);
	sys.AttachDevice(&ram, 0);
	
	std::stringstream hex;
	hex << "54 bc  7c 04";

	ram.PokeWord(60, 0xabcd);

	int i = ram.PokeByteHexStream(0, &hex);

	CPU.PrintState(&std::cout);
	CPU.ITick();
	CPU.PrintState(&std::cout);
	CPU.ITick();
	CPU.PrintState(&std::cout);

	//ram.HexDump(&std::cout, 0, 255);
	//CPU.PrintState(&std::cout);
	getchar();

	return 0;
}

