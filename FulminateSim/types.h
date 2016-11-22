#pragma once
#include <cstdint>

namespace CNOSim {
	typedef unsigned char Byte;
	typedef signed char SByte;
	typedef unsigned short Word;
	typedef signed short SWord;
	typedef unsigned int Address;
	typedef signed int SDWord;

	typedef unsigned short reg16;
	typedef unsigned int reg32;

	/* Extract a bitfield from a word */
	Word extract(Word data, int high_bit, int low_bit);
	/* Sign extend a field of width w into a word */
	Word sext_w(Word data, int w);

}
