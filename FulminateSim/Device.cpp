#include "stdafx.h" // everything before this is precompiled
#include "Device.h"
#include "computersystem.h"

using namespace CNOSim;

Device::~Device()
{
	// Make sure no computer system thinks I still exit
	if (mComputerSys) {
		mComputerSys->DetachDevice(this);
	}

	SetParentComputerSystem(nullptr);
}

void Device::SetParentComputerSystem(ComputerSystem * sys)
{
	mComputerSys = sys;
}

/*
RAMDevice class: A generic random access memory device
*/
RAMDevice::RAMDevice(uint32_t size)
{
	mContents.resize(size);
}

Byte RAMDevice::ReadByte(Address addr)
{
	return PeekByte(addr);
}

Word RAMDevice::ReadWord(Address addr)
{
	range_check(addr);
	return ((mContents[addr & 0xfffe] << 8) + mContents[addr | 1]);
}

void RAMDevice::WriteByte(Address addr, Byte data)
{
	range_check(addr);
	mContents[addr] = data;
}

void RAMDevice::WriteWord(Address addr, Word data)
{
	range_check(addr | 1);

	mContents[addr & 0xfffe] = (data >> 8);
	mContents[addr | 1] = (data & 0xff);
}

Byte RAMDevice::PeekByte(Address addr)
{
	range_check(addr);
	return mContents[addr];
}

Word RAMDevice::PeekWord(Address addr)
{
	word_alignment_check(addr);
	range_check(addr | 1);

	return ((mContents[addr] << 8) + mContents[addr + 1]);

}

void RAMDevice::PokeByte(Address addr, Byte data)
{
	range_check(addr);
	mContents[addr] = data;
}

void RAMDevice::PokeWord(Address addr, Word data)
{
	word_alignment_check(addr);
	range_check(addr | 1);

	mContents[addr] = (data >> 8);
	mContents[addr + 1] = (data & 0xff);
}

