#include "token.h"

// Pointer to the memory location at the start of the binary
uint16_t* binary;
uint32_t binary_size;

/*
	A RelocationEntry is an entry in the Relocation Table which describes
	how a symbol should be resolved into the binary.

	mem_addr - the address, relative to the start of the binary, to which
	the symbol is to be inserted. In the case of 32 bit insertion,
	the mem_addr refers to the first word in the lowest address.

	name - the name of the symbol which holds the value to be substituted in

	offset - an offset, used by relative relocations

	reloc_type - the type of relocation: see below
*/
typedef struct
{
	uint32_t mem_addr; 
	char* name;
	uint32_t offset;

	/*
		RelocType: specifies in what way the relocation is treated so that it
		results in a well-formed instruction.

		Absolute types: the address in the symbol table should be loaded as-is

		Relative types: the address in the symbol table MINUS some OFFSET is
		loaded - useful for accessing structs, tables, etc ([rA + off] instr,
		the OFFSET would correspond to the expected value of rA, set by the 
		programmer using an ASSUME statement.

		PC-Relative type: used for PC-relative jumps in which -2 must be
		subtracted from the relative displacement
	*/
	enum RelocType {
		RABS32, // 32 bit absolute value
		RREL32, // 32 bit relative value
		RREL16, // 16 bit relative value
		ROFF7, // 7 bit offset
		RIMM8, // 8 bit immiediete
		RPCOFF9, // 9 bit PC-relative offset
		RIMM16 // 16 bit immiediete
	} reloc_type;
} RelocationEntry;

typedef struct
{
	RelocationEntry entries[255];
	RelocationEntryBlock* next_block;
	int cur_idx;
} RelocationEntryBlock;

RelocationEntryBlock *first_block, *current_block;

/*
	Adds an entry to the Relocation table. Returns 1 if successful
	Note that name is not copied by this function and therefor must not be
	deleted by the caller.
*/
int AddRelocationEntry(uint32_t mem_addr, const char* name, uint32_t type, uint32_t offset)
{
	RelocationEntry entry = { mem_addr, name, offset, type };

	if (current_block->cur_idx == 254) {
		current_block->next_block = malloc(sizeof(RelocationEntryBlock));
		if (!current_block->next_block) return 0;
		current_block = current_block->next_block;
		current_block->cur_idx = 0;
	}

	current_block->entries[current_block->cur_idx++] = entry;

	return 1;
}

/*
	Correctly terminates Relocation table - must be called after all entries are added
*/
void FinishRelocationEntries()
{
	
}

/*
	Attempts to parse an instruction from the input, storing the potentially
	incomplete opcode into the binary and adding any relocation entries if
	neccessary.

	Returns 1 if successful, 0 otherwise
*/
int ParseInstruction(Token itkn) {
	
	if (cur_tkn.type == A_REGISTER) {

	}
	else if (cur_tkn.type == G_REGISTER) {

	}
	else if (cur_tkn.type == IDENTIFIER) {

	}
	else if (cur_tkn.type == LEFT_SQ_BRKT) {
		NextToken();
		if (cur_tkn.type == IDENTIFIER) {
			NextToken();
			// expect ']'
		}
		else if (cur_tkn.type == NUMERIC_LITERAL) {

		}
		else if (cur_tkn.type == A_REGISTER) {
			NextToken();
			if (cur_tkn.type == DOUBLE_COLON) {
				if (cur_tkn.type == IDENTIFIER) {
					// expect ']'
				}
				else if (cur_tkn.type == NUMERIC_LITERAL) {
					// expect ']'
				}
				else if (cur_tkn.type == G_REGISTER){
					// expect ']'
				}
			}
			else if (cur_tkn.type == RIGHT_SQ_BRKT) {

			}
		}
	}
	
}

/*
	The first pass of the assembler constructs the program in memory, but does
	not replace symbols. Returns 1 if successful, 0 otherwise
*/
int FirstPass() {
	NextToken();

	// Read line by line
	while (cur_tkn.type != END_OF_FILE) {
		switch (cur_tkn.type){


		}

		
		NextToken();
	}
}

int main() {
	if (LoadFile("test.txt")) {

	}

}