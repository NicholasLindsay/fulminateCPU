@echo off


rem  PlanAhead(TM)
rem  runme.bat: a PlanAhead-generated ISim simulation Script
rem  Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.


set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;C:/Xilinx/14.7/ISE_DS/EDK/bin/nt64;C:/Xilinx/14.7/ISE_DS/EDK/lib/nt64;C:/Xilinx/14.7/ISE_DS/ISE/bin/nt64;C:/Xilinx/14.7/ISE_DS/ISE/lib/nt64;C:/Xilinx/14.7/ISE_DS/common/bin/nt64;C:/Xilinx/14.7/ISE_DS/common/lib/nt64;C:/Xilinx/14.7/ISE_DS/PlanAhead/bin;%PATH%

set XILINX_PLANAHEAD=C:/Xilinx/14.7/ISE_DS/PlanAhead

fuse -intstyle pa -incremental -L work -L secureip -o alu_tb.exe --prj \"C:/Users/Nicholas/Desktop/Fulminate CPU/v3/fulminateCPU/FulminateCPU/FulminateSystem.sim/sim_1/behav/alu_tb.prj\" -top work.alu_tb
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
