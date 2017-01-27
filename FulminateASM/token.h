#ifndef TOKEN_H
#define TOKEN_H
#include <inttypes.h>

enum INSTRUCTION_FMT {
	TWOOP_I, // two operand
	EXTEN_I, // extended memory instruction
	IMM8_I, // 8 bit immediete instruction
	BRANCH_I // branch instruction
};

/*
	Describes an operation the CPU can perform
*/
typedef struct {
	char* name;
	enum INSTRUCTION_FMT fmt;
	uint16_t base_opcode;
} InstrDescriptor;


/*
	Stores a Token from the input stream.

	The type of value stored value depends on the token type.

	For instructions, idescript_ptr is set to the first entry in the Instruction
	Descriptor Table (IDT) corresponding to the decoded instruction. There may be 
	multiple formats for the same instruction, which are stored as consequitive
	members in the IDT.

*/
typedef struct
{
	enum Type {
		END_OF_FILE,
		G_REGISTER,
		A_REGISTER,
		INSTRUCTION,
		MACRO_INSTRUCTION,
		NUMERIC_LITERAL,
		TEXT_LITERAL,
		COLON,
		DOUBLE_COLON,
		IDENTIFIER,
		NEWLINE,
		LEFT_SQ_BRKT,
		RIGHT_SQ_BRKT,
		ILLEGAL_NUMBER, // OCTAL numbers with digits '8' or '9' for example
		ILLEGAL_SYMBOL // symbol not in lexicon
	} type;

	union {
		uint32_t numeric_value;
		char* string_value;
		InstrDescriptor* idescript_ptr;
	} value;
} Token;

// cur_tkn - the last read token
Token cur_tkn;

int LoadFile(const char* name);
Token CurToken();
void NextToken();

#endif