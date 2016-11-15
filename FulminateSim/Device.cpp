#include "stdafx.h" // everything before this is precompiled
#include "Device.h"
#include "computersystem.h"
#include <iomanip>

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

/*
PokeByteString() places a string of bytes str with length sz into the memory
location starting at addr
*/
void RAMDevice::PokeByteString(Address addr, const char* str, int sz)
{
	Address end_addr = addr + sz;
	for (; addr < end_addr; addr++) {
		PokeByte(addr, *str);
		str++;
	}
}

/*
PokeByteHexStream() reads a .hex file into memory, starting at address addr
Returns - number of bytes written to
*/
int RAMDevice::PokeByteHexStream(Address addr, std::istream* str)
{
	// Save flag state
	std::ios::fmtflags fstate(str->flags());

	// Set up to read hex
	*str >> std::hex >> std::skipws;

	// Temporary variables
	int data_in;
	int byte_count = 0;

	while (*str >> data_in) {
		if (data_in & ~0xff) { // if too large
			throw FileFormatException("Hex input exceeds one byte");
		}
		else {
			mContents[addr++] = data_in;
			byte_count++;
		}
	}

	// Check for error
	if (!str->eof()) {
		throw FileFormatException("Invalid data in file");
	}

	// Restore state
	str->flags(fstate);

	return byte_count;
}


void RAMDevice::PokeWord(Address addr, Word data)
{
	word_alignment_check(addr);
	range_check(addr | 1);

	mContents[addr] = (data >> 8);
	mContents[addr + 1] = (data & 0xff);
}

/*
	HexDump() outputs the memory between addresses start and end onto
	the output stream as hex numbers in the following format:
	addr:	00	11	22	33	44	55	66	77	88	99	aa	bb	cc	dd	ee	ff
	addr:	00	11	22	33	44	55	66	77	88	99	aa	bb	cc	dd	ee	ff
	addr:   ...
	If start is not aligned to a 16 byte boundary, the preceding memory
	locations will be blank and the memory contents will be displayed mid-row.
	The same applies to end.
*/
void RAMDevice::HexDump(std::ostream* str, Address start, Address end)

{
	// Save flags state
	std::ios::fmtflags fstate(str->flags());

	// Output in hex, with 0 as padding character infront of bytes
	*str << std::hex << std::setfill('0') << std::right;

	// If we start mid block, indent with spaces
	if (start % 16 != 0) {
		int j = start % 16;
		*str << std::setw(6) << (start & ~0xf) << ": ";
		for (; j > 0; j--) {
			*str << "   ";
		}
	}

	for (int i = start; i <= end; i++)
	{
		// Every block of 16 bytes
		if (i % 16 == 0) {
			// Print address
			*str << std::setw(6) << i << ": ";
		}
		*str << std::setw(2) << (int) mContents[i] << " ";

		// At end of every block
		if (i % 16 == 15) {
			// Print char representation at end of previous line
			// First line requires some jiggery pokery
			int j = i - 15;
			for (; j < start; j++) {
				*str << ' ';
			}
			for (; j <= i; j++){
				char curchar = mContents[j];
				// Replace control and extended characters with '.'
				if (!(curchar & ~0x1F) || (curchar == 0x7f) || (curchar & 0x80))
					*str << '.';
				else *str << (char) curchar;
			}

			// New line at end of row
			*str << "\n";
		}
	}

	// Append with spaces so char can be added at the end
	for (int i = end; (i % 16) != 15; i++)
	{
		*str << "   ";
	}

	// Final char dump
	// Need to be careful here - if whole address range under 16, need to 
	//	prepend with spaces
	if (end % 16 != 15) {
		for (int i = end & ~0xF; i < (end & ~0xF) + 16; i++) {
			if (i > end || i < start) {
				*str << " ";
			}
			else {
				char curchar = mContents[i];
				if (!(curchar && !0x1F) || curchar >= 0x7f) *str << '.';
				else *str << (char)curchar;
			}
		}

		// End with new line
		*str << "\n";
	}

	// Restore flags state
	str->flags(fstate);
}



