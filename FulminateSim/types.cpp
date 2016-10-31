#include "stdafx.h"
#include "types.h"

using namespace CNOSim;

/* Extract a bitfield from a word */
Word CNOSim::extract(Word data, int high_bit, int low_bit) {
	Word mask = 0;
	int range = high_bit - low_bit;
	data = data >> low_bit;
	for (int i = 0; i <= range; i++) {
		mask = (mask << 1) | 1;
	}
	return (mask & data);
}

/* Sign extend a field of width w into a word */
Word CNOSim::sext_w(Word data, int w) {
	// Extract MSB
	int MSB = extract(data, w - 1, w - 1);
	if (MSB) {
		Word mask = 0xffff << w;
		return (data | mask);
	}
	else return data;
}

