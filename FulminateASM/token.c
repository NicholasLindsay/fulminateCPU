#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include "token.h"

#define TOKEN_STRING_BUF_SIZE 50

/*
Instruction table lists every instruction and format. Instructions with more
than one format must follow immidetialy after one another, and table must be
null-terminated
*/
const InstrDescriptor INSTR_TABLE[] = {
		{ "TST", TWOOP_I, 0x2000 },
		{ "BEQ", BRANCH_I, 0x2800 },
		{ "BNE", BRANCH_I, 0x2A00 },
		{ "BGTU", BRANCH_I, 0x2C00 },
		{ "BLEU", BRANCH_I, 0x2E00 },
		{ "BC", BRANCH_I, 0x3000 },
		{ "BNC", BRANCH_I, 0x3200 },
		{ "BGT", BRANCH_I, 0x3400 },
		{ "BLTE", BRANCH_I, 0x3600 },
		{ "BGE", BRANCH_I, 0x3800 },
		{ "BLT", BRANCH_I, 0x3A00 },
		{ "BOV", BRANCH_I, 0x3C00 },
		{ "BRA", BRANCH_I, 0x3E00 },
		{ "GET", EXTEN_I, 0x4000 },
		{ "GET", TWOOP_I, 0xD000 },
		{ "GET", IMM8_I, 0xF000 },
		{ "GET.B", EXTEN_I, 0x4080 },
		{ "GET.B", TWOOP_I, 0xD080 },
		{ "ADD", TWOOP_I, 0x8000 },
		{ "ADD", IMM8_I, 0xC000 },
		{ "ADD.B", TWOOP_I, 0x8080 },
		{ "SUB", TWOOP_I, 0x8800 },
		{ "SUB", IMM8_I, 0xC800 },
		{ "SUB.B", TWOOP_I, 0x8880 },
		{ "ADC", TWOOP_I, 0x9000 },
		{ "ADC.B", TWOOP_I, 0x9080 },
		{ "SWB", TWOOP_I, 0xa000 },
		{ "SWB.B", TWOOP_I, 0xa080 },
		{ "AND", TWOOP_I, 0xb000 },
		{ "AND", IMM8_I, 0xe000 },
		{ "AND.B", TWOOP_I, 0xb080 },
		{ "CMP", TWOOP_I, 0xc000 },
		{ "CMP", IMM8_I, 0xe800 },
		{ "CMP.B", TWOOP_I, 0xc080 },
		{ "XOR", TWOOP_I, 0xB000 },
		{ "XOR.B", TWOOP_I, 0xB080 },
		{ "OR", TWOOP_I, 0xB800 },
		{ "OR", IMM8_I, 0xF800 },
		{ "OR.B", TWOOP_I, 0xB880 },
		{ "NOGETHERE", 0, 0x0000 }
};

/*
	The code is then file reads from an input file a token and returns a token.
*/

FILE* source_file;
char curchar = '\0';

/*
	Fetches the next character from the source file and stores in current_char
*/
void NextChar() {
	curchar = fgetc(source_file);
}

/*
	Returns the previously retrieved character back to the file stream
*/
void UndoNextChar() {
	ungetc(curchar, source_file);
}

/*
	Keywords are stored in a hash-table, which is initialised at program startup.
*/
struct {
	const char* key;
	Token keyword_tkn;
} KeywordHashTable[256];

// Forward declare
int KeywordHasher();

void InitHashTable()
{
	/* Initilise with instruction mneumonics */
	int no_entries = sizeof(INSTR_TABLE) / sizeof(INSTR_TABLE[0]);

	for (int i = 0; i < no_entries; i++){
		char *istr = INSTR_TABLE[i].name;
		int c = KeywordHasher(istr);

		/* If entry exists and has a different value (remember multiple instr with same name allowed,
		   as long as there are consecutive ) */
		if (KeywordHashTable[c].key && strcmp(KeywordHashTable[c].key, istr))
			printf("Overriding %s with %s.\n", KeywordHashTable[c].key, istr);

		KeywordHashTable[c].key = istr;
		KeywordHashTable[c].keyword_tkn.type = INSTRUCTION;
		KeywordHashTable[c].keyword_tkn.value.idescript_ptr = &INSTR_TABLE[i];
	}

	/* Initilise with GPRs */
	for (int i = 0; i <= 7; i++){
		char* reg_nm = malloc(3 * sizeof(char));
		reg_nm[0] = 'g';
		reg_nm[1] = '0' + i;
		reg_nm[2] = 0;
		
		int c = KeywordHasher(reg_nm);
		if (KeywordHashTable[c].key) printf("Collision: %s and %s", reg_nm, KeywordHashTable[c].key);
		KeywordHashTable[c].key = reg_nm;
		KeywordHashTable[c].keyword_tkn.type = G_REGISTER;
		KeywordHashTable[c].keyword_tkn.value.numeric_value = i;
	}

	/* Initilise with A regs */
	for (int i = 0; i <= 3; i++){
		char* reg_nm = malloc(3 * sizeof(char));
		reg_nm[0] = 'a';
		reg_nm[1] = '0' + i;
		reg_nm[2] = 0;

		int c = KeywordHasher(reg_nm);
		if (KeywordHashTable[c].key) printf("Collision: %s and %s", reg_nm, KeywordHashTable[c].key);
		KeywordHashTable[c].key = reg_nm;
		KeywordHashTable[c].keyword_tkn.type = A_REGISTER;
		KeywordHashTable[c].keyword_tkn.value.numeric_value = i;
	}
}

/*
	KeywordHasher implements the hash-function used for keywords
*/
int KeywordHasher(char* name)
{
	int c = 0;
	char* pos = name;

	// Hashing function: this was chosen by trial and error
	do {
		c = (c << 1) ^ (*pos) ^ (c << 3) - 'c';
		pos++;
	} while (*pos != 0);
	c = (c & 0xff);

	return c;
}

/*
	KeywordLookup - sets *tkn to  the looked up token, if found, and returns 1.
					If unsuccessful, returns 0
*/
int KeywordLookup(char* str, Token* tkn) {
	int hash_value = KeywordHasher(str);

	if (KeywordHashTable[hash_value].key) {
		if (strcmp(KeywordHashTable[hash_value].key, str) == 0) {
			*tkn = KeywordHashTable[hash_value].keyword_tkn;
			return 1;
		}
		else {
			return 0;
		}
	}
	else {
		return 0;
	}

	
}


/*
	Returns true if character is hexadecimal digit (lowercase)
*/
int ishex(char c) {
	return !(c < '0' || (c > '9' && c < 'a') || c > 'f');
}

/*
	Converts a character holding a hex digit into it's equivaled hex value.
	Undefined behaviour when used on non-hex digit
*/
int char_to_hex(char c) {
	if (c >= '0' && c <= '9') return c - '0';
	else return c - 'a' + 10;
}

/*
	Tries to load a file for lexing. Returns 1 if successful, 0 otherwise
*/
int LoadFile(const char* fname)
{
	source_file = fopen(fname, "r");
	if (source_file == NULL) return 0;
	else return 1;
}

/*
Reads a Token from the input file, updating the current token.

This is implemented as a series of if-then statements and do-while loops.
This could be implemented as an explicit FSM, however the following code
serves the same purpose and is in my opinion easier to read.

NextToken() ignores whitespace and ignores text after a character, however
it returns a token upon reaching a newline. This is because it certain
contexts a new line is important (i.e. it indicates the end of the instruction
operands) and others not so (after a line that contains only a comment).
NextToken() may trim away this in the future.

*/
void NextToken()
{
	// Create a temporary variable tkn - unneccessary and should be optimised
	// away in future
	Token tkn;

	int buf_idx = 0; int buffer_sz = 50;
	char* buffer = malloc(buffer_sz * sizeof(char));

	// Fetch next character into curchar
	NextChar();

	// Ignore whitespaces:
	if (curchar == ' ' || curchar == '\t'){
		do {
			NextChar();
		} while (curchar == ' ' || curchar == '\t');
	}

	// After semicolon, ignore until end of line
	if (curchar == ';'){
		do {
			NextChar();
		} while (curchar != '\n' && curchar != EOF);
		if (curchar == EOF) tkn.type = END_OF_FILE;
		if (curchar == '\n') {
			tkn.type = NEWLINE;
		}
	}

	// Newline
	else if (curchar == '\n') {
		tkn.type = NEWLINE;
	}
	// Colon
	else if (curchar == ':') {
		// Check for double colon
		NextChar();
		if (curchar == ':') tkn.type = DOUBLE_COLON;
		else {
			UndoNextChar();
			tkn.type = COLON;
		}
	}
	// End of File
	else if (curchar == EOF) {
		tkn.type = END_OF_FILE;
	}
	// Numeric literals
	else if (curchar == '0'){
		tkn.type = NUMERIC_LITERAL;
		NextChar();
		// Hexadecimal:
		if (curchar == 'x') {
			NextChar();
			if (!ishex(curchar)) {
				tkn.type = ILLEGAL_NUMBER;
			}
			else {
				int num = 0;
				do {
					num = num * 16 + char_to_hex(curchar);
					NextChar();
				} while (ishex(curchar));
				UndoNextChar();
				tkn.value.numeric_value = num;
			}
		}
		// Octal:
		else if (curchar >= '0' && curchar <= '7') {
			int num = 0;
			do {
				num = num * 8 + curchar - '0';
				NextChar();
			} while (curchar >= '0' && curchar <= '7');

			// Check for illegal numbers (8,9)
			if (curchar == '8' || curchar == '9'){
				tkn.type = ILLEGAL_NUMBER;
				while (isdigit(curchar)) NextChar();
			}

			UndoNextChar();
			tkn.value.numeric_value = num;
		}
		// Single 0:
		else {
			UndoNextChar();
			tkn.value.numeric_value = 0;
		}
	}
	// Decimal number:
	else if (isdigit(curchar)){
		int num = 10;
		do {
			num = num * 10 + curchar - '0';
			NextChar();
		} while (isdigit(curchar));

		// Char doesn't belong to us:
		UndoNextChar();
		tkn.type = NUMERIC_LITERAL;
		tkn.value.numeric_value = num;
	}
	// TODO: String literals
	/* else if (curchar == '\"'){
	buffer[buf_idx++] = curchar;
	do {
	// If buffer could potentially overflow, request more space
	if (buf_idx == buffer_sz - 2) {
	buffer_sz <<= 2;
	buffer = realloc(buffer, buffer_sz);
	}

	NextChar();
	// Escape sequences
	if (curchar == '\\'){

	}
	} while (curchar != '\"' && curchar != '\n' && curchar != EOF);
	}
	*/
	// Register/Instruction/MacroInstruction/Identifier
	else if (isalpha(curchar)) {
		do {
			buffer[buf_idx++] = curchar;
			NextChar();
		} while (isalnum(curchar));
		buffer[buf_idx] = 0;

		// The curchar doesn't belong to this token, so return it to the stream
		UndoNextChar();

		// Now check for keywords
		if (!KeywordLookup(buffer, &tkn)) tkn.type = IDENTIFIER;

		// Set string pointer to buffer
		if (tkn.type == IDENTIFIER)	tkn.value.string_value = buffer;
	}
	// left square bracket
	else if (curchar == '[') tkn.type = LEFT_SQ_BRKT;
	// right square bracket
	else if (curchar == ']') tkn.type = RIGHT_SQ_BRKT;

	// Illegal
	else {
		tkn.type = ILLEGAL_SYMBOL;
	}

	// Free buffer depending on whether union contains char*
	if ((tkn.type != IDENTIFIER) && (tkn.type != TEXT_LITERAL))
	{
		free(buffer);
	}

	
	cur_tkn = tkn;
}


int main() {
	// Init hash table
	InitHashTable();

	// Load file into source_file
	LoadFile("test.txt");

	// Read tokens out of file
	do {
		NextToken();
<<<<<<< HEAD
		printf("Token Type: %d. ", cur_token.type);
		if (cur_token.type == IDENTIFIER) {
			printf("Token Value: %s\n", cur_token.value.string_value);
			free(cur_token.value.string_value);
=======
		printf("Token Type: %d. ", cur_tkn.type);
		if (cur_tkn.type == IDENTIFIER) {
			printf("Token Value: %s\n", cur_tkn.value.string_value);
			free(cur_tkn.value.string_value);
>>>>>>> origin/first_sim
		}
		else {
			printf("Token Value: %d\n", cur_tkn.value.numeric_value);
		}
	} while (cur_tkn.type != END_OF_FILE);

	getchar();
}