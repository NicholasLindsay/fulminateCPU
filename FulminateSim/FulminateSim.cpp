// FulminateSim.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "Device.h"
#include "computersystem.h"
#include "fulminate_cpu.h"
#include <iostream>

int _tmain(int argc, _TCHAR* argv[])
{
	CNOSim::ComputerSystem sys;
	CNOSim::FulminateCPU CPU;
	CNOSim::RAMDevice ram(1024);

	sys.AttachCPU(&CPU);
	sys.AttachDevice(&ram, 0);

	ram.PokeWord(0, 0x849C); // ADD r4, imm
	ram.PokeWord(2, 0xffff); // -1
	ram.PokeWord(4, 0x80d8); // ADD r0, [a0 + 6]
	ram.PokeWord(6, 0x8c80);
	ram.PokeWord(8, 0x8c80); // SUB r4, r0

	CPU.ITick();
	CPU.ITick();
	CPU.ITick();

	getchar();

	return 0;
}

