#include "stdafx.h"
#include "cpu.h"
#include "computersystem.h"

using namespace CNOSim;


CPU::~CPU()
{
	// Disconnect any computer systems
	if (mSys != nullptr) {
		mSys->DetachCPU();
	}
}

void CPU::SetParentComputerSystem(ComputerSystem *sys)
{
	mSys = sys;
}