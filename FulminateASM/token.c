#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <inttypes.h>
#include <string.h>

#define TOKEN_STRING_BUF_SIZE 50

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
	Instruction table contains the name, format and basic opcode for different instructions
*/
struct {
	const char* name;
	enum InstrFormat {
		I_TWOOPERAND,
		I_EXTENDED,
		I_IMM,
		I_BRANCH
	} fmt;
	uint16_t base_opcode;
} InstrTable[] = {
		{ "ADD", I_TWOOPERAND, 0xffaf },
		{ "SUB", I_TWOOPERAND, 0xff1f }
};

/*
	Stores a Token from the input stream
*/
typedef struct Token
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
		ILLEGAL_NUMBER, // OCTAL numbers with digits '8' or '9' for example
		ILLEGAL_SYMBOL // symbol not in lexicon
	} type;
	
	union {
		uint32_t numeric_value;
		char* string_value;
	} value;
} Token;

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
	Reads a Token from the input file, returning a token.

	This is implemented as a series of if-then statements and do-while loops.
	This could be implemented as an explicit FSM, however the following code 
	serves the same purpose and is in my opinion easier to read.

	ReadToken() ignores whitespace and ignores text after a character, however
	it returns a token upon reaching a newline. This is because it certain
	contexts a new line is important (i.e. it indicates the end of the instruction
	operands) and others not so (after a line that contains only a comment).
	ReadToken() may trim away this in the future.
	
*/
Token ReadToken()
{
	int buf_idx = 0; int buffer_sz = 50;
	char* buffer = malloc(buffer_sz * sizeof(char));
	Token tkn;

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

		// Now check for keywords (inefficient!)
		tkn.type = INSTRUCTION;
		if (strcmp(buffer, "ADD") == 0) {
			tkn.value.numeric_value = 1;
		}
		else {
			tkn.type = IDENTIFIER;
		}
		
		// Set string pointer to buffer
		if (tkn.type == IDENTIFIER)	tkn.value.string_value = buffer;
	}
	// Illegal
	else {
		tkn.type = ILLEGAL_SYMBOL;
	}

	// Free buffer depending on whether union contains char*
	if (tkn.type == IDENTIFIER || tkn.type == TEXT_LITERAL) return tkn;
	else {
		free(buffer);
		return tkn;
	}

}

int main() {
	Token cur_token;

	// Load file into source_file
	source_file = fopen("test.txt", "r");

	// Read tokens out of file
	do {
		cur_token = ReadToken();
		printf("Token Type: %d. ", cur_token.type);
		if (cur_token.type == IDENTIFIER) {
			printf("Token Value: %s\n", cur_token.value.string_value);
			free(cur_token.value.string_value);
		}
		else {
			printf("Token Value: %d\n", cur_token.value.numeric_value);
		}
	} while (cur_token.type != END_OF_FILE);

	getchar();
}