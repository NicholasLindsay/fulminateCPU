#include <cstdint>
#include <vector>
#include <exception>
#include <sstream>
#include "types.h"
/*
	A Device is a slave I/O or memory device connected to the main bus of 
	the simulator.
*/

namespace CNOSim {
	class ComputerSystem;

	static std::stringstream util_ss; // utility string stream - used for exception what()s
	static std::string util_s;

	/* Error thrown when attempting to access a memory location beyond the range of a device*/
	class AddressOutOfRangeException : public std::exception {
	public:
		AddressOutOfRangeException(Address addr, uint32_t size)
			:mAddr(addr), mSize(size){}

		virtual const char* what() const {
			util_ss = std::stringstream();
			util_ss.clear();

			util_ss << "Address " << std::hex << mAddr << " is out of range. Memory size is " <<
				std::hex << (unsigned int)mSize << ".";
			util_ss.put(0);

			util_s = util_ss.str();

			return util_s.c_str();
		}


		Address getAddr() const { return mAddr; }
		uint32_t getSize() const { return mSize; }
	private:
		Address mAddr;
		uint32_t mSize;
	};

	/* Error thrown when attempting to read/write accross an alignment boundary */
	class AddressAlignmentException : public std::exception
	{
	public:
		AddressAlignmentException(Address addr)
			: mAddr(addr) {};

		virtual const char* what() const {
			util_ss = std::stringstream();
			util_ss.clear();

			util_ss << "Attempted to read/write data accross an alignment boundary at address: " << std::hex << mAddr;

			util_s = util_ss.str();

			return util_s.c_str();
		}

		Address getAddr() const { return mAddr; }
	private:
		Address mAddr;
	};

	/* Error thrown when input file in incorrect format */
	class FileFormatException : public std::exception
	{
	public:
		FileFormatException(const char* mes)
			: message(mes) {}
		virtual const char* what() const
		{
			util_ss = std::stringstream();
			util_ss << "Error in reading file: " << message;

			util_s = util_ss.str();

			return util_s.c_str();
		}
	private:
		const char* message;
	};

	/* Abstract class for hardware device */
	class Device {
		friend class ComputerSystem;
	public:
		Device()
			: mComputerSys(nullptr) {};

		virtual uint32_t AddressRange() const =0;

		virtual Byte ReadByte(Address addr) =0;
		virtual Word ReadWord(Address addr) =0;
		virtual void WriteByte(Address addr, Byte data) =0;
		virtual void WriteWord(Address addr, Word data) =0;

		virtual Byte PeekByte(Address addr) =0;
		virtual Word PeekWord(Address addr) =0;
		virtual void PokeByte(Address addr, Byte data) =0;
		virtual void PokeWord(Address addr, Word data) =0;

		Device(Device const &) = delete;
		Device& operator=(Device const&) = delete;

		virtual ~Device();
	private:
		void SetParentComputerSystem(ComputerSystem * sys);
		ComputerSystem * mComputerSys;
	};

	/* Generic RAM class */
	class RAMDevice : public Device {
	public:
		RAMDevice(uint32_t size);

		virtual Byte ReadByte(Address addr);
		virtual Word ReadWord(Address addr);
		virtual void WriteByte(Address addr, Byte data);
		virtual void WriteWord(Address addr, Word data);

		virtual Byte PeekByte(Address addr);
		virtual Word PeekWord(Address addr);
		virtual void PokeByte(Address addr, Byte data);
		virtual void PokeByteString(Address addr, const char* str, int sz);
		virtual int PokeByteHexStream(Address addr, std::istream* str);
		virtual void PokeWord(Address addr, Word data);

		virtual void HexDump(std::ostream* str, Address start, Address end);
		

		virtual uint32_t AddressRange() const { return mContents.size(); };
	protected:
		std::vector<Byte> mContents;

		inline void word_alignment_check(Address addr) {
			if (addr & 0x1) {
				throw AddressAlignmentException(addr);
			}
		}

		inline void range_check(Address addr) {
			if (addr >= mContents.size()) {
				throw AddressOutOfRangeException(addr, mContents.size());
			}
		}
	};

	/* Generic ROM class */
	class ROMDevice : public RAMDevice
	{
	public:
		ROMDevice(uint32_t size)
			: RAMDevice(size) {};

		virtual void WriteByte(Address addr, Byte data) {};
		virtual void WriteWord(Address addr, Word data) {};
	};
}