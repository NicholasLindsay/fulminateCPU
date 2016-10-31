#include "stdafx.h"
#include "computersystem.h"
#include "Device.h"
#include "cpu.h"

using namespace CNOSim;

// Initilise static members
std::ostringstream NoMappedDeviceException::out_s;

ComputerSystem::~ComputerSystem()
{
	// Detach all devices in the memory map
	while (!mAddressMapEntries.empty()) {
		Device * dev = mAddressMapEntries.front().mDevice;
		DetachDevice(dev);
	}

	// Detach the processor
	mCPU->SetParentComputerSystem(nullptr);
}

// Write to a byte at a certain address through computer bus
void ComputerSystem::BusWriteByte(Address addr, Byte data)
{
	Address dev_addr;
	Device *dev = GetDeviceAndAddress(addr, dev_addr);

	// If nullptr (no device), just return
	if (!dev) return;

	dev->WriteByte(dev_addr, data);
}

// Write to a word at a certain address through computer bus
void ComputerSystem::BusWriteWord(Address addr, Word data)
{
	Address dev_addr;
	Device *dev = GetDeviceAndAddress(addr & 0xfffe, dev_addr);

	if (!dev) return;

	dev->WriteWord(dev_addr, data);
}

// Read a byte from a certain address through the computer bus
Byte ComputerSystem::BusReadByte(Address addr)
{
	Address dev_addr;
	Device *dev = GetDeviceAndAddress(addr, dev_addr);

	if (!dev) return 0;

	return dev->ReadByte(dev_addr);
}

// Read a word from a certain address through the computer bus
Word ComputerSystem::BusReadWord(Address addr)
{
	Address dev_addr;
	Device *dev = GetDeviceAndAddress(addr & 0xfffe, dev_addr);

	if (!dev) return 0;

	return dev->ReadWord(dev_addr);
}

// Poke a byte at a certain address
void ComputerSystem::BusPokeByte(Address addr, Byte data)
{
	Address dev_addr;
	Device *dev = TryGetDeviceAndAddress(addr, dev_addr);

	dev->PokeByte(dev_addr, data);
}

// Poke a word at a certain address
void ComputerSystem::BusPokeWord(Address addr, Word data)
{
	Address dev_addr;
	Device *dev = TryGetDeviceAndAddress(addr & 0xfffe, dev_addr);

	dev->PokeWord(dev_addr, data);
}

// Peek a byte at a certain address
Byte ComputerSystem::BusPeekByte(Address addr)
{
	Address dev_addr;
	Device *dev = TryGetDeviceAndAddress(addr, dev_addr);

	return dev->PeekByte(dev_addr);
}

// Peek a word at a certain address
Word ComputerSystem::BusPeekWord(Address addr)
{
	Address dev_addr;
	Device *dev = TryGetDeviceAndAddress(addr & 0xfffe, dev_addr);

	return dev->PeekWord(dev_addr);
}

// Connect a device to the computer bus with lowest address base
void ComputerSystem::AttachDevice(Device * device, Address base)
{
	// Creates a new memory map entry and pushes it to the front of the list
	Address end_address = base + device->AddressRange();
	AddressMapEntry entry(device, base, end_address);
	mAddressMapEntries.push_front(entry);

	device->SetParentComputerSystem(this);
}

// Disconnect a device from the computer bus
void ComputerSystem::DetachDevice(Device * dev)
{
	std::list<AddressMapEntry> & addr_mapping = mAddressMapEntries;

	//// NOTE: all device address mappings are delected
	//for (auto i = addr_mapping.begin(); i != addr_mapping.end(); i++)
	//{
	//	if (i->mDevice == dev) {
	//		i = addr_mapping.erase(i);
	//	}
	//}

	// try a lambda
	addr_mapping.remove_if(
		[dev](AddressMapEntry e){return (dev == e.mDevice); });

	dev->SetParentComputerSystem(nullptr);

	return;
}

// Connect a CPU to the computer bus
void ComputerSystem::AttachCPU(CPU * c)
{
	// If CPU already connected, disconnect
	if (mCPU) {
		mCPU->SetParentComputerSystem(nullptr);
	}

	mCPU = c;
	mCPU->SetParentComputerSystem(this);
}

// Disconnect the CPU from the computer bus
void ComputerSystem::DetachCPU()
{
	if (mCPU) {
		mCPU->SetParentComputerSystem(nullptr);
	}
}

// Lookups a device-address pair from the memory map for a given address
Device * ComputerSystem::GetDeviceAndAddress(Address addr, Address &addr_dev)
{
	std::list<AddressMapEntry> &addr_mapping = mAddressMapEntries;
	for (auto i = addr_mapping.begin(); i != addr_mapping.end(); i++) {
		if (addr >= i->mBaseAddress && addr <= i->mFinalAddress) {
			addr_dev = addr - i->mBaseAddress;
			return i->mDevice;
		}
	}

	return nullptr;
}

// Tries to lookup a device-address pair for a given address, or throws except
Device * ComputerSystem::TryGetDeviceAndAddress(Address addr, Address &addr_dev)
{
	// Perform normal lookup
	Address addr_dev_temp;
	Device * dev = GetDeviceAndAddress(addr, addr_dev_temp);

	// If nullptr, throw exception
	if (!dev) throw NoMappedDeviceException(addr);

	// Return device + address
	addr_dev = addr_dev_temp;
	return dev;
}

