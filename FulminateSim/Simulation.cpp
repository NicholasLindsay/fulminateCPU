#include "stdafx.h"
#include "simulation.h"

using namespace CNOSim;

/* Simulation constructor */
Simulation::Simulation()
{
	mRAM = new CNOSim::RAMDevice(4000);
	mSys.AttachCPU(&mCpu);
	mSys.AttachDevice(mRAM, 0);

	// Load following values to run test program
	std::stringstream hex;
	hex << "d7 8f df 41 f2 03 E9 00 28 02 C9 01 3F FC 3F FF";

	// Constants
	mRAM->PokeWord(32, 0x0123);
	mRAM->PokeWord(34, 0x4567);
	mRAM->PokeWord(36, 0x89ab);
	mRAM->PokeWord(38, 0xcdef);

	int i = mRAM->PokeByteHexStream(0, &hex);
}

/* Simulation destructor */
Simulation::~Simulation()
{
	delete mRAM;
}


/*
	Runs a series of commands, seperated by new lines, from the input stream.
	If prompt is set, "debug> " is sent to the output between commands and the
	loop doesn't automatically exit on an error.
	Results and errors are outputted onto the output stream. Returns 0 if 
	terminated by end-of-file or 'exit' command, and -1 otherwise
	General format of a line:
		command (modifier) ... (parameters)
	where modifier = (option) (parameters)
	List of commands:
		ss(tep) - Executes a single instruction
		dump	- Dumps hex data onto out. Parameters:
			(start_address) - Address of lower memory location to dump
			(end_address) - Address of higher memory location to stop dumping
		stat	- Outputs CPU's status() function
		exit	- Safely exits command interpreter
		pokes	- Poke's a string of characters into memory. Supports the 
				  following escape sequences:
			(\n) - newline
			(\0) - zero
			(\\) - backslash
				  Parameters:
			(address) - Lowest address of the string.
				  String must be preceded by :
		pokeb	- Pokes a string of bytes (in hex) into memory. Parameter:
			addr - Lowest address to insert byte
			bytes - hex data to insert into memory
			
*/
int Simulation::RunCommands(std::istream* in, std::ostream* out, bool prompt)
{
	std::string line;
	bool exit_loop = false;
	bool error = false;

	// Go through every line
	while (in->good() && !exit_loop && !(error && !prompt)) {
		if (prompt) *out << "debug> ";

		// Grab a line from the stream
		std::getline(*in, line);

		// Create a stream for line
		std::stringstream ss(line);

		// Get command from this stream
		std::string command;
		ss >> command;

		// Single step
		if (command == "ss" || command == "sstep") {
			mCpu.ITick();
		}
		// Hex dump
		else if (command == "dump") {
			std::string lowers, highers;
			Address lower = 0;
			Address higher = mRAM->AddressRange() - 1;

			// Expect hex numbers from stream
			ss >> std::hex;

			// Try and parse address range
			if (ss >> lower) {
				ss >> higher;
			}

			mRAM->HexDump(out, lower, higher);

		}
		// Status
		else if (command == "stat") {
			mCpu.PrintState(out);
		}
		// PokeString - zero terminated with escape sequnces for newline (\n),
		//				backslash (\\) and zero (\0)
		else if (command == "pokes") {
			error |= PokeString(&ss, out);
		}
		// PokeByte(s)
		else if (command == "pokeb") {
			error |= PokeBytes(&ss, out);
		}
		// Exit
		else if (command == "exit") {
			exit_loop = true;
		}

		else {
			*out << "Unrecognised command: " << command << ".\n";	
			error = true;
		}
	}

	// Check for errors
	if (in->bad()) {
		error = true;
	}

	if (error) {
		*out << "Stopped executing commands due to error.\n";
		return -1;
	}
	return 0;
}

/*
	PokeString() - Shell command for pokes. Returns true on error
*/
bool Simulation::PokeString(std::stringstream *ss, std::ostream *out)
{
	bool error = false;
	Address base;
	// Get starting address
	if (*ss >> std::hex >> base) {
		// Look for : to get started
		char temp;
		*ss >> temp;
		while (temp != ':' && !error) {
			*ss >> temp;
			if (ss->eof()) {
				*out << "String with no start character :.\n";
				error = true;
			}
		}

		char curchar;
		*ss >> std::noskipws;
		while ((*ss >> curchar) && !error) {
			// Check for escape sequences
			if (curchar == '\\') {
				*ss >> curchar;
				switch (curchar) {
				case '\\':
					curchar = '\\';
					break;
				case 'n':
					curchar = '\n';
					break;
				case '0':
					curchar = 0;
					break;
				default:
					*out << "Unrecognised escape sequnce. Using: ";
					*out << curchar;
				}
			}
			mSys.BusPokeByte(base++, curchar);
		}
	}
	else {
		*out << "Invalid address format.\n";
		error = true;
	}

	return error;
}

/*
	PokeBytes() - Shell command for pokeb. Returns true on error
*/
bool Simulation::PokeBytes(std::stringstream *ss, std::ostream* out)
{
	Address base;

	// Read address
	if (*ss >> std::hex >> base) {
		try {
			mRAM->PokeByteHexStream(base, ss);
		}
		catch (std::exception& e) {
			std::string t = e.what();
			*out << t << "\n";
			return true;
		}
	}
	else {
		return true;
	}

	return false;
}