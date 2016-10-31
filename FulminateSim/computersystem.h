#pragma once
#include "types.h"
#include <exception>
#include <list>
#include <sstream>

/*
	A ComputerSystem represents the "backbone" of a computing system. Devices
	and a processor are connected to the ComputerSystem class using the 
	attach() functions. ComputerSystem handles all interactions between
	processor and devices
*/

namespace CNOSim
{
	class Device;
	class CPU;
	//extern std::ostream out_s;

	/* NoMappedDevice exception - tried to access a memory location not mapped
	to any device */
	class NoMappedDeviceException : public std::exception
	{
	public:
		NoMappedDeviceException(Address addr)
			: mAddr(addr) {}

		virtual const char * what() const
		{
			out_s.clear();
			out_s << "Attempted to read/write to address " << std::hex << mAddr;
			out_s << ". No device is mapped.";
			return out_s.str().c_str();
		}
	private:
		Address mAddr;
		static std::ostringstream out_s;
	};

	/* ComputerSystem: Backbone of system - handles communication
	   between CPU and devices */
	class ComputerSystem
	{
	public:
		ComputerSystem() {};
		ComputerSystem(const ComputerSystem &) = delete;
		ComputerSystem& operator=(ComputerSystem &) = delete;

		void BusWriteByte(Address addr, Byte data);
		void BusWriteWord(Address addr, Word data);
		Byte BusReadByte(Address addr);
		Word BusReadWord(Address addr);

		Byte BusPeekByte(Address addr);
		Word BusPeekWord(Address addr);
		void BusPokeByte(Address addr, Byte data);
		void BusPokeWord(Address addr, Word data);

		void AttachDevice(Device * device, Address base);
		void DetachDevice(Device * device);

		void AttachCPU(CPU * c);
		void DetachCPU();

		~ComputerSystem();
	private:
		Device * GetDeviceAndAddress(Address addr, Address &dev_addr);
		Device * TryGetDeviceAndAddress(Address addr, Address &dev_addr);

		struct AddressMapEntry
		{
			Device * mDevice;
			Address mBaseAddress;
			Address mFinalAddress;

			AddressMapEntry(Device *device, Address base, Address fin)
				: mDevice(device), mBaseAddress(base), mFinalAddress(fin) {};
		};

		CPU * mCPU;

		std::list<AddressMapEntry> mAddressMapEntries;
	};
}