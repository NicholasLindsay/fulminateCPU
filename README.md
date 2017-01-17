# fulminateCPU
Home-brew computer including software tool chain for FPGA implementation

The aim of the project is to create a fully functional System-on-a-Chip implementation of a custom processor based design. The project is split into several parts:

* ## fulminateSim
    This is a simulator for the processor written in C++. It allows the processor to be run in different modes and features a built in debugging console. The design is also modular and can be adapted to other 16-bit based microprocessor systems.
    
* ## fulminateCPU
    This contains the VHDL implementation of the processor.
    
* ## fulminateASM
    This is the assembler for CNOAsm - the assembly language corresponding to the processor. Currently in development and will hopefully feature some more advanced features such as a macro system and multi-file compilation.
    
* ## fulminateDoc
    This folder contains the specification and documentation for the fulminateCPU architecture
