// FulminateSim.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "simulation.h"
#include <iostream>
#include <sstream>

int _tmain(int argc, _TCHAR* argv[])
{
	CNOSim::Simulation sim;
	sim.RunCommands(&std::cin, &std::cout, true);

	//CPU.PrintState(&std::cout);
	getchar();

	return 0;
}

