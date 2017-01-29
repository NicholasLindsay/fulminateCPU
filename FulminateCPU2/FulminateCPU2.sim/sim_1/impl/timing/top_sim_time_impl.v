////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_sim_time_impl.v
// /___/   /\     Timestamp: Sat Jan 28 20:07:55 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog -sdf_path . -insert_pp_buffers true -sdf_anno true -pcf "C:/Users/Nicholas/Documents/Project Fulminate/FulminateSim/FulminateCPU2/FulminateCPU2.runs/impl_1/top.pcf" "C:/Users/Nicholas/Documents/Project Fulminate/FulminateSim/FulminateCPU2/FulminateCPU2.runs/impl_1/top_routed.ncd" "C:/Users/Nicholas/Documents/Project Fulminate/FulminateSim/FulminateCPU2/FulminateCPU2.sim/sim_1/impl/timing/top_sim_time_impl.v" 
// Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: C:/Users/Nicholas/Documents/Project Fulminate/FulminateSim/FulminateCPU2/FulminateCPU2.runs/impl_1/top_routed.ncd
// Output file	: C:/Users/Nicholas/Documents/Project Fulminate/FulminateSim/FulminateCPU2/FulminateCPU2.sim/sim_1/impl/timing/top_sim_time_impl.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  CLK, JOY_SELECT, LED
);
  input CLK;
  input JOY_SELECT;
  output [7 : 0] LED;
  wire \CLK_BUFGP/IBUFG_0 ;
  wire CLK_BUFGP;
  wire \cpu/IR[8] ;
  wire \cpu/IR[13] ;
  wire \cpu/IR[12] ;
  wire \cpu/ExecUnit/reg_out1[0]_0 ;
  wire \cpu/ExecUnit/reg_out1[2]_0 ;
  wire \cpu/ExecUnit/reg_out1[4]_0 ;
  wire \cpu/ExecUnit/reg_out1[6]_0 ;
  wire \cpu/ExecUnit/reg_out1[8]_0 ;
  wire \cpu/ExecUnit/reg_out1[10]_0 ;
  wire LEDS_int_1;
  wire \GND_3_o_addr_bus[31]_equal_4_o ;
  wire \GND_3_o_addr_bus[31]_equal_1_o<31>1 ;
  wire \cpu/ld_mdr ;
  wire ValueOut_1;
  wire current_state_0;
  wire current_state_1;
  wire \cpu/ExecUnit/addres[1]_0 ;
  wire \cpu/IR_14_1_1668 ;
  wire \cpu/IR_15_1_1669 ;
  wire \cpu/current_state_0_2_1670 ;
  wire \cpu/current_state_2_2_1671 ;
  wire \cpu/IR[6] ;
  wire \cpu/AddrUnit/AddrAdder1/data2<24>1_0 ;
  wire \cpu/Mmux_addr_mux1sel111_1674 ;
  wire LEDS_int_2;
  wire ValueOut_2;
  wire \cpu/ExecUnit/addres[2]_0 ;
  wire \cpu/IR[14] ;
  wire \cpu/IR[15] ;
  wire \cpu/AddrUnit/AddrAdder1/data2[10]_0 ;
  wire \cpu/IR[7]_0 ;
  wire \cpu/IR_14_2_1683 ;
  wire \cpu/AddrUnit/AddrAdder1/data2[7]_0 ;
  wire \cpu/Mmux_addr_mux1sel1111 ;
  wire \cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ;
  wire LEDS_int_3;
  wire ValueOut_3;
  wire \cpu/ExecUnit/addres[3]_0 ;
  wire LEDS_int_4;
  wire ValueOut_4;
  wire \cpu/ExecUnit/addres[4]_0 ;
  wire LEDS_int_5;
  wire ValueOut_5;
  wire \cpu/ExecUnit/addres[5]_0 ;
  wire LEDS_int_6;
  wire ValueOut_6;
  wire \cpu/ExecUnit/addres[6]_0 ;
  wire LEDS_int_7;
  wire ValueOut_7;
  wire \cpu/ExecUnit/addres[7]_0 ;
  wire \cpu/ExecUnit/addres[8]_0 ;
  wire \cpu/ExecUnit/addres[10]_0 ;
  wire \cpu/current_state_2_4_0 ;
  wire \cpu/current_state_0_3_1707 ;
  wire \cpu/current_state_1_2_1708 ;
  wire led_dev_sel1;
  wire \cpu/ExecUnit/addres[11]_0 ;
  wire \cpu/Mram__n01414_0 ;
  wire \cpu/IR[11] ;
  wire \data_bus_in[12] ;
  wire \data_bus_in[9] ;
  wire bus_sel;
  wire \ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 ;
  wire rst;
  wire \cpu/IR[2] ;
  wire \cpu/IR[4] ;
  wire \cpu/ExecUnit/addres[9]_0 ;
  wire \cpu/current_state_1_1_1726 ;
  wire \cpu/current_state_2_1_1727 ;
  wire \cpu/current_state_0_1_1728 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[11]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[12]_0 ;
  wire ValueOut_0;
  wire \cpu/ExecUnit/ALUunit/addres[0]_0 ;
  wire \cpu/current_state_2_3_1736 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[13]_0 ;
  wire \cpu/ld_pc ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[14]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[15]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[16]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data2[2] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[17]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data2[1] ;
  wire \cpu/IR[1]_0 ;
  wire \data_bus_in[14] ;
  wire \data_bus_in[15] ;
  wire \cpu/AddrUnit/AddrAdder1/data2[6] ;
  wire \cpu/AddrUnit/AddrAdder1/data2[5] ;
  wire \cpu/IR[5] ;
  wire \ledcontrol/N19 ;
  wire \cpu/current_state_2_glue_set_1800 ;
  wire \cpu/Mmux_next_state<0>13 ;
  wire \cpu/AddrUnit/adder_out[4]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data2[4] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[18]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data2[3] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[19]_0 ;
  wire LEDS_int_0;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[27]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[10]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[20]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[28]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[21]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[29]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[7]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[8]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[22]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[9]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[23]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[30]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[24]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[31]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[25]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[26]_0 ;
  wire led_dev_sel11_1869;
  wire N6;
  wire led_dev_sel15_1875;
  wire led_dev_sel14_1876;
  wire led_dev_sel13_1877;
  wire led_dev_sel12_1878;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[2]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[3]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[4]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[5]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[1]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[6]_0 ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28] ;
  wire \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3] ;
  wire \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7] ;
  wire \cpu/N2 ;
  wire \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1_O_0 ;
  wire \cpu/IR[3] ;
  wire \cpu/ExecUnit/N14 ;
  wire Mmux_data_bus_in111_1902;
  wire \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1_O_0 ;
  wire \cpu/AddrUnit/AddrAdder1/N30 ;
  wire \cpu/AddrUnit/AddrAdder1/data2[10] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[1] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[2] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[3] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[1] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[2] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[3] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[4] ;
  wire \ProtoComp50.CYINITGND.0 ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[4] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[5] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[6] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[7] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[5] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[6] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[7] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[8] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[8] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[9] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[10] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[11] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[9] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[10] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[11] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[12] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[12] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[13] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[14] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[15] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[13] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[14] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[15] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[16] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[16] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[17] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[18] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[19] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[17] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[18] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[19] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[20] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[20] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[21] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[22] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[23] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[21] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[22] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[23] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[24] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[24] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[25] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[26] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[27] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[25] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[26] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[27] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[28] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[28] ;
  wire \cpu/ExecUnit/reg_out1[0]_rt_230 ;
  wire \ProtoComp60.IINV.OUT ;
  wire rst_non_inverted;
  wire \CLK_BUFGP/IBUFG_314 ;
  wire \cpu/AddrUnit/AddrAdder1/data2[7] ;
  wire \cpu/AddrUnit/AddrAdder1/N32 ;
  wire \cpu/ExecUnit/MDRsrcsel/N22 ;
  wire \cpu/ExecUnit/MDRsrcsel/N21 ;
  wire \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1_O ;
  wire \cpu/ExecUnit/MDRsrcsel/N40 ;
  wire \cpu/ExecUnit/MDRsrcsel/N39 ;
  wire \data_bus_in[5] ;
  wire \data_bus_in[8] ;
  wire \cpu/IR[7] ;
  wire \data_bus_in[6] ;
  wire \data_bus_in[7] ;
  wire \ledcontrol/LEDS_int_7_dpot_600 ;
  wire \cpu/AddrUnit/adder_out[1]_pack_4 ;
  wire \cpu/AddrUnit/adder_out[2]_pack_6 ;
  wire \data_bus_in[3] ;
  wire \data_bus_in[4] ;
  wire \data_bus_in[2] ;
  wire \cpu/AddrUnit/AddrAdder1/data2<24>1_1_719 ;
  wire \cpu/AddrUnit/AddrAdder1/N48 ;
  wire \cpu/current_state_2_glue_set_rt_704 ;
  wire \cpu/current_state_2_4_703 ;
  wire \cpu/AddrUnit/AddrAdder1/N28 ;
  wire \cpu/AddrUnit/AddrAdder1/data2<24>1_729 ;
  wire \data_bus_in[1] ;
  wire \cpu/IR[1] ;
  wire \data_bus_in[11] ;
  wire \cpu/ExecUnit/MDRsrcsel/N26 ;
  wire \cpu/ExecUnit/MDRsrcsel/N25 ;
  wire \cpu/ExecUnit/MDRsrcsel/N46 ;
  wire \cpu/ExecUnit/MDRsrcsel/N45 ;
  wire \cpu/ExecUnit/MDRsrcsel/N24 ;
  wire \cpu/ExecUnit/MDRsrcsel/N23 ;
  wire \cpu/ExecUnit/MDRsrcsel/N42 ;
  wire \cpu/ExecUnit/MDRsrcsel/N41 ;
  wire \cpu/ExecUnit/MDRsrcsel/N36 ;
  wire \cpu/ExecUnit/MDRsrcsel/N35 ;
  wire \ledcontrol/LEDS_int_0_dpot_1311 ;
  wire \ledcontrol/LEDS_int_1_dpot_1304 ;
  wire \ledcontrol/LEDS_int_2_dpot_1303 ;
  wire \cpu/Mram__n01414 ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[31] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[30] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[30] ;
  wire \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[29] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[31] ;
  wire \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[29] ;
  wire \cpu/ExecUnit/MDRsrcsel/N44 ;
  wire \cpu/ExecUnit/MDRsrcsel/N43 ;
  wire \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1_O ;
  wire \cpu/ExecUnit/MDRsrcsel/N33 ;
  wire \cpu/ExecUnit/MDRsrcsel/N34 ;
  wire \cpu/ExecUnit/MDRsrcsel/N38 ;
  wire \cpu/ExecUnit/MDRsrcsel/N37 ;
  wire \ledcontrol/LEDS_int_3_dpot_1614 ;
  wire \ledcontrol/LEDS_int_4_dpot_1606 ;
  wire \ledcontrol/LEDS_int_5_dpot_1605 ;
  wire \ledcontrol/LEDS_int_6_dpot_1598 ;
  wire \NlwBufferSignal_CLK_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<0> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<1> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<2> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<3> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<0> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<1> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<2> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<3> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<0> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<1> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<2> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<3> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<0> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<1> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<2> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<3> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<0> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<1> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<2> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<3> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<0> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<1> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<2> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<3> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<0> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<1> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<2> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<3> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<1> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<2> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<3> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<0> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<1> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<2> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<3> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<0> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<1> ;
  wire \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<2> ;
  wire \NlwBufferSignal_LED_7_OBUF/I ;
  wire \NlwBufferSignal_LED_0_OBUF/I ;
  wire \NlwBufferSignal_LED_1_OBUF/I ;
  wire \NlwBufferSignal_LED_2_OBUF/I ;
  wire \NlwBufferSignal_LED_3_OBUF/I ;
  wire \NlwBufferSignal_LED_4_OBUF/I ;
  wire \NlwBufferSignal_LED_5_OBUF/I ;
  wire \NlwBufferSignal_LED_6_OBUF/I ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_8/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_8/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_7/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_6/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_6/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_5/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_5/IN ;
  wire \NlwBufferSignal_cpu/IR_15/CLK ;
  wire \NlwBufferSignal_cpu/IR_15/IN ;
  wire \NlwBufferSignal_cpu/current_state_0_3/CLK ;
  wire \NlwBufferSignal_cpu/current_state_0_2/CLK ;
  wire \NlwBufferSignal_cpu/current_state_0_2/IN ;
  wire \NlwBufferSignal_cpu/current_state_0_1/CLK ;
  wire \NlwBufferSignal_cpu/current_state_0_1/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_11/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_7/CLK ;
  wire \NlwBufferSignal_cpu/IR_14_2/CLK ;
  wire \NlwBufferSignal_cpu/IR_14_2/IN ;
  wire \NlwBufferSignal_cpu/IR_14_1/CLK ;
  wire \NlwBufferSignal_cpu/IR_14_1/IN ;
  wire \NlwBufferSignal_cpu/current_state_1/CLK ;
  wire \NlwBufferSignal_cpu/current_state_1/IN ;
  wire \NlwBufferSignal_cpu/current_state_0/CLK ;
  wire \NlwBufferSignal_cpu/current_state_0/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_31/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_31/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_30/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_30/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_29/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_29/IN ;
  wire \NlwBufferSignal_cpu/current_state_1_2/CLK ;
  wire \NlwBufferSignal_cpu/current_state_1_1/CLK ;
  wire \NlwBufferSignal_cpu/current_state_1_1/IN ;
  wire \NlwBufferSignal_cpu/IR_8/CLK ;
  wire \NlwBufferSignal_cpu/IR_7/CLK ;
  wire \NlwBufferSignal_cpu/IR_6/CLK ;
  wire \NlwBufferSignal_cpu/IR_5/CLK ;
  wire \NlwBufferSignal_ledcontrol/LEDS_int_7/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_4/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_4/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_3/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_3/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_2/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_2/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_1/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_1/IN ;
  wire \NlwBufferSignal_cpu/IR_4/CLK ;
  wire \NlwBufferSignal_cpu/IR_3/CLK ;
  wire \NlwBufferSignal_cpu/IR_2/CLK ;
  wire \NlwBufferSignal_cpu/current_state_2_1/CLK ;
  wire \NlwBufferSignal_cpu/current_state_2_4/CLK ;
  wire \NlwBufferSignal_cpu/current_state_2_2/CLK ;
  wire \NlwBufferSignal_cpu/current_state_2_2/IN ;
  wire \NlwBufferSignal_cpu/current_state_2_3/CLK ;
  wire \NlwBufferSignal_cpu/current_state_2_3/IN ;
  wire \NlwBufferSignal_cpu/IR_15_1/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_20/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_19/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_19/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_18/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_18/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_17/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_24/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_24/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_23/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_23/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_22/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_21/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_28/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_27/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_26/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_26/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_25/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_25/IN ;
  wire \NlwBufferSignal_cpu/IR_14/CLK ;
  wire \NlwBufferSignal_cpu/IR_1/CLK ;
  wire \NlwBufferSignal_cpu/IR_13/CLK ;
  wire \NlwBufferSignal_cpu/IR_12/CLK ;
  wire \NlwBufferSignal_cpu/IR_11/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_8/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_9/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_6/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_10/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_2/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_1/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_0/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_16/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_16/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_15/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_14/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_14/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_13/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_13/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_16/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_15/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_15/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_14/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_13/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_12/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_11/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_10/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_9/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_9/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_12/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_12/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_11/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_11/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_10/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_10/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_9/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_20/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_20/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_19/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_18/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_17/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_17/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_24/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_23/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_22/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_22/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_21/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_21/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_28/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_28/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_27/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_27/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_26/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_25/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_31/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_30/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_29/CLK ;
  wire \NlwBufferSignal_ledcontrol/LEDS_int_2/CLK ;
  wire \NlwBufferSignal_ledcontrol/LEDS_int_1/CLK ;
  wire \NlwBufferSignal_ledcontrol/LEDS_int_0/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_4/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_4/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_3/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_3/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_2/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_2/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_1/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_1/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_8/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_7/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_7/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_6/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_6/IN ;
  wire \NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_5/CLK ;
  wire \NlwBufferSignal_cpu/current_state_2/CLK ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>/DI<0> ;
  wire \NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>/DI<1> ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_4/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/IN ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR0 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR1 ;
  wire \NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR2 ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_5/CLK ;
  wire \NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_3/CLK ;
  wire \NlwBufferSignal_ledcontrol/LEDS_int_6/CLK ;
  wire \NlwBufferSignal_ledcontrol/LEDS_int_5/CLK ;
  wire \NlwBufferSignal_ledcontrol/LEDS_int_4/CLK ;
  wire \NlwBufferSignal_ledcontrol/LEDS_int_3/CLK ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/addr_bus[0]_4.D6LUT_O_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_DI[3]_UNCONNECTED ;
  wire GND;
  wire \NLW_cpu/AddrUnit/AddrAdder1/addr_bus[0]_5.D6LUT_O_UNCONNECTED ;
  wire VCC;
  wire \NLW_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1_O_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/addr_bus[0]_6.D6LUT_O_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/addr_bus[0]_3.D6LUT_O_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_CO[0]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_CO[1]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_CO[2]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_CO[3]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_DI[2]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_DI[3]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_O[3]_UNCONNECTED ;
  wire \NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_S[3]_UNCONNECTED ;
  wire \NLW_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1_O_UNCONNECTED ;
  wire [11 : 0] \cpu/ExecUnit/reg_out1 ;
  wire [11 : 0] \cpu/ExecUnit/alu_res ;
  wire [0 : 0] \cpu/_n0180 ;
  wire [31 : 1] addr_bus;
  wire [2 : 2] \cpu/current_state ;
  wire [2 : 2] \cpu/addr_mux2sel ;
  wire [11 : 8] \cpu/ExecUnit/alu_src2 ;
  wire [31 : 1] \cpu/AddrUnit/adder_out ;
  wire [30 : 1] \cpu/AddrUnit/AddrAdder1/data1 ;
  wire [31 : 1] \cpu/AddrUnit/pc_out ;
  wire [0 : 0] \cpu/next_state ;
  wire [11 : 0] \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut ;
  wire [0 : 0] \cpu/ExecUnit/ALUunit/addres ;
  wire [11 : 1] \cpu/ExecUnit/addres ;
  wire [11 : 0] \cpu/ExecUnit/mdr_src ;
  initial $sdf_annotate("c:/users/nicholas/documents/project fulminate/fulminatesim/fulminatecpu2/fulminatecpu2.sim/sim_1/impl/timing/top_sim_time_impl.sdf");
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y2" ))
  \CLK_BUFGP/BUFG  (
    .I(\NlwBufferSignal_CLK_BUFGP/BUFG/IN ),
    .O(CLK_BUFGP)
  );
  X_BUF   \cpu/AddrUnit/AddrAdder1/data2[10]/cpu/AddrUnit/AddrAdder1/data2[10]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data2[10] ),
    .O(\cpu/AddrUnit/AddrAdder1/data2[10]_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y38" ))
  \cpu/AddrUnit/AddrAdder1/data2<24>1  (
    .IA(1'b0),
    .IB(\cpu/AddrUnit/AddrAdder1/N30 ),
    .O(\cpu/AddrUnit/AddrAdder1/data2[10] ),
    .SEL(\cpu/addr_mux2sel [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y38" ),
    .INIT ( 64'h0000000000000000 ))
  \cpu/AddrUnit/AddrAdder1/addr_bus[0]_4.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_cpu/AddrUnit/AddrAdder1/addr_bus[0]_4.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y38" ),
    .INIT ( 64'hEFFF20FFFFEFFF20 ))
  \cpu/AddrUnit/AddrAdder1/data2<24>1_G  (
    .ADR4(\cpu/IR[8] ),
    .ADR2(\cpu/IR[14] ),
    .ADR1(\cpu/IR[15] ),
    .ADR3(current_state_0),
    .ADR5(\cpu/current_state [2]),
    .ADR0(\cpu/IR[6] ),
    .O(\cpu/AddrUnit/AddrAdder1/N30 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4]_DMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[4] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[4]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[3] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[3]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4]_BMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[2] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[2]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4]_AMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[1] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[1]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 64'h3FC033CC33CC33CC ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<4>  (
    .ADR0(1'b1),
    .ADR1(\cpu/AddrUnit/pc_out [4]),
    .ADR2(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR5(\cpu/addr_mux2sel [2]),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data2[4] ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[4] )
  );
  X_ZERO #(
    .LOC ( "SLICE_X12Y31" ))
  \ProtoComp50.CYINITGND  (
    .O(\ProtoComp50.CYINITGND.0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y31" ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp50.CYINITGND.0 ),
    .CO({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4] , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>_CO[2]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>_CO[1]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<3> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<2> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<1> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<0> }),
    .O({\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[4] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[3] , 
\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[2] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[1] }),
    .S({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[4] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[3] , 
\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[2] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[1] })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 64'h5AAA55AA55AA55AA ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<3>  (
    .ADR1(1'b1),
    .ADR3(\cpu/AddrUnit/pc_out [3]),
    .ADR2(\cpu/IR[15] ),
    .ADR5(\cpu/IR[14] ),
    .ADR4(\cpu/addr_mux2sel [2]),
    .ADR0(\cpu/AddrUnit/AddrAdder1/data2[3] ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[3] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 64'h3333B3B3CCCC4C4C ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<2>  (
    .ADR3(1'b1),
    .ADR1(\cpu/AddrUnit/pc_out [2]),
    .ADR4(\cpu/IR[15] ),
    .ADR0(\cpu/IR[14] ),
    .ADR2(\cpu/addr_mux2sel [2]),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data2[2] ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y31" ),
    .INIT ( 64'h3333CCCCF3330CCC ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<1>  (
    .ADR0(1'b1),
    .ADR1(\cpu/AddrUnit/pc_out [1]),
    .ADR5(\cpu/IR[15] ),
    .ADR2(\cpu/IR[14] ),
    .ADR3(\cpu/addr_mux2sel [2]),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data2[1] ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[1] )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8]_DMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[8] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[8]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[7] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[7]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8]_BMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[6] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[6]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8]_AMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[5] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[5]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 64'h0F0F0F0FF0F0F0F0 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<8>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data1 [8]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[8] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y32" ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>  (
    .CI(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[4] ),
    .CYINIT(1'b0),
    .CO({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8] , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>_CO[2]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>_CO[1]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<3> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<2> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<1> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<0> }),
    .O({\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[8] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[7] , 
\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[6] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[5] }),
    .S({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[8] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[7] , 
\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[6] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[5] })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 64'h0F0FF0F0C30FF0F0 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<7>  (
    .ADR0(1'b1),
    .ADR4(\cpu/AddrUnit/pc_out [7]),
    .ADR1(\cpu/IR[14] ),
    .ADR5(\cpu/IR[15] ),
    .ADR3(\cpu/addr_mux2sel [2]),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data2[7]_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[7] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 64'h3BC433CC3BC433CC ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<6>  (
    .ADR5(1'b1),
    .ADR1(\cpu/AddrUnit/pc_out [6]),
    .ADR2(\cpu/IR[15] ),
    .ADR0(\cpu/IR[14] ),
    .ADR4(\cpu/addr_mux2sel [2]),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data2[6] ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[6] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y32" ),
    .INIT ( 64'h5D5D5555A2A2AAAA ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<5>  (
    .ADR3(1'b1),
    .ADR0(\cpu/AddrUnit/pc_out [5]),
    .ADR2(\cpu/IR[15] ),
    .ADR1(\cpu/IR[14] ),
    .ADR4(\cpu/addr_mux2sel [2]),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data2[5] ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[5] )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12]_DMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[12] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[12]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[11] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[11]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12]_BMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[10] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[10]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12]_AMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[9] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[9]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 64'h0F0FF0F00F0FF0F0 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<12>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data1 [12]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[12] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y33" ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>  (
    .CI(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[8] ),
    .CYINIT(1'b0),
    .CO({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12] , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>_CO[2]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>_CO[1]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<3> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<2> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<1> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<0> }),
    .O({\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[12] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[11] , 
\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[10] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[9] }),
    .S({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[12] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[11] , 
\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[10] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[9] })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<11>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data1 [11]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[11] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1 [10]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[10] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y33" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<9>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1 [9]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[9] )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16]_DMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[16] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[16]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[15] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[15]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16]_BMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[14] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[14]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16]_AMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[13] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[13]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<16>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data1 [16]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[16] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y34" ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>  (
    .CI(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[12] ),
    .CYINIT(1'b0),
    .CO({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16] , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>_CO[2]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>_CO[1]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<3> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<2> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<1> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<0> }),
    .O({\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[16] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[15] , 
\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[14] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[13] }),
    .S({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[16] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[15] , 
\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[14] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[13] })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<15>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data1 [15]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[15] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'h3333CCCC3333CCCC ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<14>  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR1(\cpu/AddrUnit/AddrAdder1/data1 [14]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[14] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<13>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data1 [13]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[13] )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20]_DMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[20] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[20]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[19] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[19]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20]_BMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[18] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[18]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20]_AMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[17] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[17]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 64'h0F0F0F0FF0F0F0F0 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<20>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data1 [20]),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[20] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y35" ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>  (
    .CI(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[16] ),
    .CYINIT(1'b0),
    .CO({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20] , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>_CO[2]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>_CO[1]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<3> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<2> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<1> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<0> }),
    .O({\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[20] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[19] , 
\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[18] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[17] }),
    .S({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[20] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[19] , 
\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[18] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[17] })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 64'h0F0FF0F00F0FF0F0 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<19>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data1 [19]),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[19] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<18>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1 [18]),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[18] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<17>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 ),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1 [17]),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[17] )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24]_DMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[24] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[24]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[23] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[23]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24]_BMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[22] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[22]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24]_AMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[21] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[21]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 64'h5AF00FF00FF00FF0 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<24>  (
    .ADR1(1'b1),
    .ADR4(\cpu/addr_mux2sel [2]),
    .ADR5(\cpu/IR[14] ),
    .ADR0(\cpu/IR[15] ),
    .ADR3(\cpu/AddrUnit/pc_out [24]),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[24] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y36" ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>  (
    .CI(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[20] ),
    .CYINIT(1'b0),
    .CO({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24] , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>_CO[2]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>_CO[1]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<3> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<2> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<1> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<0> }),
    .O({\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[24] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[23] , 
\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[22] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[21] }),
    .S({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[24] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[23] , 
\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[22] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[21] })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 64'h5A5A5A5A5A5A5A5A ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<23>  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR0(\cpu/AddrUnit/AddrAdder1/data1 [23]),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[23] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<22>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1 [22]),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[22] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y36" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<21>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1 [21]),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[21] )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28]_DMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[28] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[28]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[27] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[27]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28]_BMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[26] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[26]_0 )
  );
  X_BUF 
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28]/cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28]_AMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[25] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[25]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 64'h0FF0C3F00FF00FF0 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<28>  (
    .ADR0(1'b1),
    .ADR5(\cpu/addr_mux2sel [2]),
    .ADR1(\cpu/IR[14] ),
    .ADR4(\cpu/IR[15] ),
    .ADR3(\cpu/AddrUnit/pc_out [28]),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[28] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y37" ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>  (
    .CI(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[24] ),
    .CYINIT(1'b0),
    .CO({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28] , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>_CO[2]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>_CO[1]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<3> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<2> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<1> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<0> }),
    .O({\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[28] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[27] , 
\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[26] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[25] }),
    .S({\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[28] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[27] , 
\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[26] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[25] })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 64'h3CF03C3C3C3C3C3C ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<27>  (
    .ADR0(1'b1),
    .ADR4(\cpu/addr_mux2sel [2]),
    .ADR5(\cpu/IR[14] ),
    .ADR3(\cpu/IR[15] ),
    .ADR1(\cpu/AddrUnit/pc_out [27]),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[27] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 64'h33B333B3CC4CCC4C ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<26>  (
    .ADR4(1'b1),
    .ADR2(\cpu/addr_mux2sel [2]),
    .ADR0(\cpu/IR[14] ),
    .ADR3(\cpu/IR[15] ),
    .ADR1(\cpu/AddrUnit/pc_out [26]),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[26] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y37" ),
    .INIT ( 64'h5000FFFFAFFF0000 ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<25>  (
    .ADR1(1'b1),
    .ADR3(\cpu/addr_mux2sel [2]),
    .ADR2(\cpu/IR[14] ),
    .ADR0(\cpu/IR[15] ),
    .ADR4(\cpu/AddrUnit/pc_out [25]),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[25] )
  );
  X_BUF   \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3]/cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3]_DMUX_Delay  (
    .I(\cpu/ExecUnit/addres [3]),
    .O(\cpu/ExecUnit/addres[3]_0 )
  );
  X_BUF   \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3]/cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3]_CMUX_Delay  (
    .I(\cpu/ExecUnit/addres [2]),
    .O(\cpu/ExecUnit/addres[2]_0 )
  );
  X_BUF   \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3]/cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3]_BMUX_Delay  (
    .I(\cpu/ExecUnit/addres [1]),
    .O(\cpu/ExecUnit/addres[1]_0 )
  );
  X_BUF   \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3]/cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3]_AMUX_Delay  (
    .I(\cpu/ExecUnit/ALUunit/addres [0]),
    .O(\cpu/ExecUnit/ALUunit/addres[0]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y43" ),
    .INIT ( 64'h33333366CCCCCC99 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<3>  (
    .ADR2(1'b1),
    .ADR1(ValueOut_3),
    .ADR5(\cpu/ExecUnit/reg_out1 [3]),
    .ADR3(current_state_1),
    .ADR4(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [3])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y43" ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>  (
    .CI(1'b0),
    .CYINIT(\cpu/Mmux_addr_mux1sel1111 ),
    .CO({\cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3] , \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>_CO[2]_UNCONNECTED , 
\NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>_CO[1]_UNCONNECTED , \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<3> , \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<2> , 
\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<1> , \cpu/ExecUnit/reg_out1[0]_rt_230 }),
    .O({\cpu/ExecUnit/addres [3], \cpu/ExecUnit/addres [2], \cpu/ExecUnit/addres [1], \cpu/ExecUnit/ALUunit/addres [0]}),
    .S({\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [3], \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [2], \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [1]
, \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y43" ),
    .INIT ( 64'h0F0FF0F00F3CF0C3 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<2>  (
    .ADR0(1'b1),
    .ADR2(ValueOut_2),
    .ADR4(\cpu/ExecUnit/reg_out1[2]_0 ),
    .ADR5(current_state_1),
    .ADR3(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y43" ),
    .INIT ( 64'h0F0FF0F00F5AF0A5 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<1>  (
    .ADR1(1'b1),
    .ADR2(ValueOut_1),
    .ADR4(\cpu/ExecUnit/reg_out1 [1]),
    .ADR0(current_state_1),
    .ADR3(\cpu/current_state [2]),
    .ADR5(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y43" ),
    .INIT ( 64'h5A5A5A695A5A5A69 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<0>  (
    .ADR0(ValueOut_0),
    .ADR2(\cpu/ExecUnit/reg_out1[0]_0 ),
    .ADR1(current_state_1),
    .ADR4(\cpu/current_state [2]),
    .ADR3(current_state_0),
    .ADR5(1'b1),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y43" ),
    .INIT ( 32'hF0F0F0F0 ))
  \cpu/ExecUnit/reg_out1[0]_rt  (
    .ADR0(1'b1),
    .ADR2(\cpu/ExecUnit/reg_out1[0]_0 ),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\cpu/ExecUnit/reg_out1[0]_rt_230 )
  );
  X_BUF   \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7]/cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7]_DMUX_Delay  (
    .I(\cpu/ExecUnit/addres [7]),
    .O(\cpu/ExecUnit/addres[7]_0 )
  );
  X_BUF   \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7]/cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7]_CMUX_Delay  (
    .I(\cpu/ExecUnit/addres [6]),
    .O(\cpu/ExecUnit/addres[6]_0 )
  );
  X_BUF   \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7]/cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7]_BMUX_Delay  (
    .I(\cpu/ExecUnit/addres [5]),
    .O(\cpu/ExecUnit/addres[5]_0 )
  );
  X_BUF   \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7]/cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7]_AMUX_Delay  (
    .I(\cpu/ExecUnit/addres [4]),
    .O(\cpu/ExecUnit/addres[4]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 64'h0F0FF0F00F3CF0C3 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<7>  (
    .ADR0(1'b1),
    .ADR4(ValueOut_7),
    .ADR2(\cpu/ExecUnit/reg_out1 [7]),
    .ADR3(current_state_1),
    .ADR1(\cpu/current_state [2]),
    .ADR5(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [7])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y44" ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>  (
    .CI(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[3] ),
    .CYINIT(1'b0),
    .CO({\cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7] , \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>_CO[2]_UNCONNECTED , 
\NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>_CO[1]_UNCONNECTED , \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<3> , \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<2> , 
\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<1> , \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<0> }),
    .O({\cpu/ExecUnit/addres [7], \cpu/ExecUnit/addres [6], \cpu/ExecUnit/addres [5], \cpu/ExecUnit/addres [4]}),
    .S({\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [7], \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [6], \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [5]
, \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 64'h55565556AAA9AAA9 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<6>  (
    .ADR4(1'b1),
    .ADR5(ValueOut_6),
    .ADR0(\cpu/ExecUnit/reg_out1[6]_0 ),
    .ADR3(current_state_1),
    .ADR2(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 64'h00FFFF0005FAFA05 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<5>  (
    .ADR1(1'b1),
    .ADR3(ValueOut_5),
    .ADR4(\cpu/ExecUnit/reg_out1 [5]),
    .ADR5(current_state_1),
    .ADR2(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y44" ),
    .INIT ( 64'h5555555AAAAAAAA5 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<4>  (
    .ADR1(1'b1),
    .ADR0(ValueOut_4),
    .ADR5(\cpu/ExecUnit/reg_out1[4]_0 ),
    .ADR4(current_state_1),
    .ADR3(\cpu/current_state [2]),
    .ADR2(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [4])
  );
  X_BUF   \cpu/ExecUnit/addres[11]/cpu/ExecUnit/addres[11]_DMUX_Delay  (
    .I(\cpu/ExecUnit/addres [11]),
    .O(\cpu/ExecUnit/addres[11]_0 )
  );
  X_BUF   \cpu/ExecUnit/addres[11]/cpu/ExecUnit/addres[11]_CMUX_Delay  (
    .I(\cpu/ExecUnit/addres [10]),
    .O(\cpu/ExecUnit/addres[10]_0 )
  );
  X_BUF   \cpu/ExecUnit/addres[11]/cpu/ExecUnit/addres[11]_BMUX_Delay  (
    .I(\cpu/ExecUnit/addres [9]),
    .O(\cpu/ExecUnit/addres[9]_0 )
  );
  X_BUF   \cpu/ExecUnit/addres[11]/cpu/ExecUnit/addres[11]_AMUX_Delay  (
    .I(\cpu/ExecUnit/addres [8]),
    .O(\cpu/ExecUnit/addres[8]_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y45" ),
    .INIT ( 64'h6666666666666699 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<11>  (
    .ADR2(1'b1),
    .ADR0(\cpu/ExecUnit/alu_src2 [11]),
    .ADR1(\cpu/ExecUnit/reg_out1 [11]),
    .ADR3(current_state_1),
    .ADR5(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [11])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y45" ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>  (
    .CI(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_CO[3]_UNCONNECTED , \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_CO[2]_UNCONNECTED 
, \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_CO[1]_UNCONNECTED , \NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>_DI[3]_UNCONNECTED , \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<2> 
, \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<1> , \NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<0> }),
    .O({\cpu/ExecUnit/addres [11], \cpu/ExecUnit/addres [10], \cpu/ExecUnit/addres [9], \cpu/ExecUnit/addres [8]}),
    .S({\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [11], \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [10], 
\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [9], \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y45" ),
    .INIT ( 64'h3333CCCC3366CC99 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<10>  (
    .ADR2(1'b1),
    .ADR4(\cpu/ExecUnit/alu_src2 [10]),
    .ADR1(\cpu/ExecUnit/reg_out1[10]_0 ),
    .ADR0(current_state_1),
    .ADR5(\cpu/current_state [2]),
    .ADR3(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [10])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y45" ),
    .INIT ( 64'h3333CCCC333CCCC3 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<9>  (
    .ADR0(1'b1),
    .ADR1(\cpu/ExecUnit/alu_src2 [9]),
    .ADR4(\cpu/ExecUnit/reg_out1 [9]),
    .ADR5(current_state_1),
    .ADR2(\cpu/current_state [2]),
    .ADR3(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y45" ),
    .INIT ( 64'h55555656AAAAA9A9 ))
  \cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut<8>  (
    .ADR3(1'b1),
    .ADR0(\cpu/ExecUnit/alu_src2 [8]),
    .ADR5(\cpu/ExecUnit/reg_out1[8]_0 ),
    .ADR1(current_state_1),
    .ADR2(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .O(\cpu/ExecUnit/ALUunit/Madd_addres_Madd_lut [8])
  );
  X_OPAD #(
    .LOC ( "PAD21" ))
  \LED[7]  (
    .PAD(LED[7])
  );
  X_OBUF #(
    .LOC ( "PAD21" ))
  LED_7_OBUF (
    .I(\NlwBufferSignal_LED_7_OBUF/I ),
    .O(LED[7])
  );
  X_IPAD #(
    .LOC ( "PAD134" ))
  JOY_SELECT_76 (
    .PAD(JOY_SELECT)
  );
  X_BUF #(
    .LOC ( "PAD134" ))
  JOY_SELECT_IBUF (
    .O(rst_non_inverted),
    .I(JOY_SELECT)
  );
  X_BUF #(
    .LOC ( "PAD134" ))
  \ProtoComp60.IMUX  (
    .I(\ProtoComp60.IINV.OUT ),
    .O(rst)
  );
  X_INV #(
    .LOC ( "PAD134" ))
  \ProtoComp60.IINV  (
    .I(rst_non_inverted),
    .O(\ProtoComp60.IINV.OUT )
  );
  X_OPAD #(
    .LOC ( "PAD28" ))
  \LED[0]  (
    .PAD(LED[0])
  );
  X_OBUF #(
    .LOC ( "PAD28" ))
  LED_0_OBUF (
    .I(\NlwBufferSignal_LED_0_OBUF/I ),
    .O(LED[0])
  );
  X_OPAD #(
    .LOC ( "PAD27" ))
  \LED[1]  (
    .PAD(LED[1])
  );
  X_OBUF #(
    .LOC ( "PAD27" ))
  LED_1_OBUF (
    .I(\NlwBufferSignal_LED_1_OBUF/I ),
    .O(LED[1])
  );
  X_IPAD #(
    .LOC ( "PAD70" ))
  CLK_86 (
    .PAD(CLK)
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \CLK_BUFGP/IBUFG  (
    .O(\CLK_BUFGP/IBUFG_314 ),
    .I(CLK)
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \ProtoComp61.IMUX  (
    .I(\CLK_BUFGP/IBUFG_314 ),
    .O(\CLK_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD26" ))
  \LED[2]  (
    .PAD(LED[2])
  );
  X_OBUF #(
    .LOC ( "PAD26" ))
  LED_2_OBUF (
    .I(\NlwBufferSignal_LED_2_OBUF/I ),
    .O(LED[2])
  );
  X_OPAD #(
    .LOC ( "PAD25" ))
  \LED[3]  (
    .PAD(LED[3])
  );
  X_OBUF #(
    .LOC ( "PAD25" ))
  LED_3_OBUF (
    .I(\NlwBufferSignal_LED_3_OBUF/I ),
    .O(LED[3])
  );
  X_OPAD #(
    .LOC ( "PAD24" ))
  \LED[4]  (
    .PAD(LED[4])
  );
  X_OBUF #(
    .LOC ( "PAD24" ))
  LED_4_OBUF (
    .I(\NlwBufferSignal_LED_4_OBUF/I ),
    .O(LED[4])
  );
  X_OPAD #(
    .LOC ( "PAD23" ))
  \LED[5]  (
    .PAD(LED[5])
  );
  X_OBUF #(
    .LOC ( "PAD23" ))
  LED_5_OBUF (
    .I(\NlwBufferSignal_LED_5_OBUF/I ),
    .O(LED[5])
  );
  X_OPAD #(
    .LOC ( "PAD22" ))
  \LED[6]  (
    .PAD(LED[6])
  );
  X_OBUF #(
    .LOC ( "PAD22" ))
  LED_6_OBUF (
    .I(\NlwBufferSignal_LED_6_OBUF/I ),
    .O(LED[6])
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y32" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_8  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_8/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_8/IN ),
    .O(addr_bus[8]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y32" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_7  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_7/CLK ),
    .I(\cpu/AddrUnit/adder_out [7]),
    .O(addr_bus[7]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y32" ),
    .INIT ( 64'hF0AAF0AAF0F0F0F0 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int301  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR5(\cpu/current_state [2]),
    .ADR3(current_state_0),
    .ADR0(\cpu/AddrUnit/AddrAdder1/data2[7]_0 ),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[7]_0 ),
    .O(\cpu/AddrUnit/adder_out [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y32" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_6  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_6/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_6/IN ),
    .O(addr_bus[6]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y32" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_5  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_5/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_5/IN ),
    .O(addr_bus[5]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y32" ),
    .INIT ( 64'h00000000000000AA ))
  \cpu/AddrUnit/AddrAdder1/data2<27>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\cpu/IR[5] ),
    .ADR3(current_state_1),
    .ADR5(\cpu/current_state_2_3_1736 ),
    .ADR4(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data2[5] )
  );
  X_BUF   \cpu/IR[15]/cpu/IR[15]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data2[7] ),
    .O(\cpu/AddrUnit/AddrAdder1/data2[7]_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y34" ))
  \cpu/AddrUnit/AddrAdder1/data2<25>1  (
    .IA(1'b0),
    .IB(\cpu/AddrUnit/AddrAdder1/N32 ),
    .O(\cpu/AddrUnit/AddrAdder1/data2[7] ),
    .SEL(\cpu/Mmux_addr_mux1sel1111 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y34" ),
    .INIT ( 1'b0 ))
  \cpu/IR_15  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_15/CLK ),
    .I(\NlwBufferSignal_cpu/IR_15/IN ),
    .O(\cpu/IR[15] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y34" ),
    .INIT ( 64'h0000000000000000 ))
  \cpu/AddrUnit/AddrAdder1/addr_bus[0]_5.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_cpu/AddrUnit/AddrAdder1/addr_bus[0]_5.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y34" ),
    .INIT ( 64'hEF2FFEF2FF0FFFF0 ))
  \cpu/AddrUnit/AddrAdder1/data2<25>1_G  (
    .ADR3(\cpu/IR[7]_0 ),
    .ADR5(\cpu/IR_14_2_1683 ),
    .ADR1(\cpu/IR[15] ),
    .ADR4(\cpu/current_state_0_2_1670 ),
    .ADR2(\cpu/current_state_2_2_1671 ),
    .ADR0(\cpu/IR[6] ),
    .O(\cpu/AddrUnit/AddrAdder1/N32 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y34" ),
    .INIT ( 64'h0000050500000505 ))
  \cpu/Mmux_addr_mux1sel111_1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(\cpu/current_state_2_4_0 ),
    .ADR0(\cpu/current_state_0_3_1707 ),
    .ADR2(\cpu/current_state_1_2_1708 ),
    .O(\cpu/Mmux_addr_mux1sel111_1674 )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y35" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_0_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_0_3/CLK ),
    .I(\cpu/next_state [0]),
    .O(\cpu/current_state_0_3_1707 ),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y35" ),
    .INIT ( 64'h5A5A5A5AFFFF5054 ))
  \cpu/Mmux_next_state<0>11  (
    .ADR5(current_state_1),
    .ADR0(current_state_0),
    .ADR1(\cpu/IR[14] ),
    .ADR3(\cpu/IR[15] ),
    .ADR4(\cpu/Mmux_next_state<0>13 ),
    .ADR2(\cpu/current_state [2]),
    .O(\cpu/next_state [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y35" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_0_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_0_2/CLK ),
    .I(\NlwBufferSignal_cpu/current_state_0_2/IN ),
    .O(\cpu/current_state_0_2_1670 ),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y35" ),
    .INIT ( 64'h0000000000E000E0 ))
  \cpu/Mmux_next_state<0>131  (
    .ADR4(1'b1),
    .ADR1(\cpu/IR[11] ),
    .ADR0(\cpu/IR[12] ),
    .ADR2(\cpu/IR[13] ),
    .ADR3(\cpu/IR[15] ),
    .ADR5(current_state_0),
    .O(\cpu/Mmux_next_state<0>13 )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y35" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_0_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_0_1/CLK ),
    .I(\NlwBufferSignal_cpu/current_state_0_1/IN ),
    .O(\cpu/current_state_0_1_1728 ),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y35" ),
    .INIT ( 64'hFF00FF00FF00FD00 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1111  (
    .ADR3(\cpu/AddrUnit/pc_out [19]),
    .ADR4(\cpu/IR[15] ),
    .ADR0(\cpu/IR[14] ),
    .ADR2(current_state_1),
    .ADR5(\cpu/current_state_2_3_1736 ),
    .ADR1(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [19])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y36" ),
    .INIT ( 64'h555F555F555F555F ))
  \cpu/Mmux_ld_mar1_SW0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(\cpu/IR[11] ),
    .ADR0(\cpu/IR[13] ),
    .ADR2(\cpu/IR[12] ),
    .O(\cpu/N2 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y36" ),
    .INIT ( 64'hFFFFFFFFFCFEFCFF ))
  \cpu/Mmux_ld_mar1  (
    .ADR3(\cpu/IR[15] ),
    .ADR0(\cpu/IR_14_2_1683 ),
    .ADR1(current_state_1),
    .ADR4(\cpu/N2 ),
    .ADR2(\cpu/current_state_2_3_1736 ),
    .ADR5(current_state_0),
    .O(bus_sel)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y37" ),
    .INIT ( 64'hCCCCCCC8CCCCCCCC ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1201  (
    .ADR1(\cpu/AddrUnit/pc_out [27]),
    .ADR3(\cpu/IR[15] ),
    .ADR2(\cpu/current_state [2]),
    .ADR0(current_state_1),
    .ADR5(\cpu/IR[14] ),
    .ADR4(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [27])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y37" ),
    .INIT ( 64'h00000000000000FF ))
  led_dev_sel15 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(addr_bus[30]),
    .ADR5(addr_bus[29]),
    .ADR3(addr_bus[31]),
    .O(led_dev_sel15_1875)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y37" ),
    .INIT ( 64'hFFFFFFEF00000000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1211  (
    .ADR5(\cpu/AddrUnit/pc_out [28]),
    .ADR4(\cpu/IR[15] ),
    .ADR1(\cpu/current_state [2]),
    .ADR0(current_state_1),
    .ADR2(\cpu/IR[14] ),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [28])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y39" ),
    .INIT ( 64'h0000000000005555 ))
  \cpu/Mmux_addr_mux1sel111_2  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\cpu/current_state_2_4_0 ),
    .ADR0(\cpu/current_state_0_3_1707 ),
    .ADR5(\cpu/current_state_1_2_1708 ),
    .O(\cpu/Mmux_addr_mux1sel1111 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y40" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out31  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N21 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N22 ),
    .O(\cpu/ExecUnit/mdr_src [11]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 64'hFEFEDCDC32321010 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out31_F  (
    .ADR3(1'b1),
    .ADR1(\cpu/current_state [2]),
    .ADR0(\cpu/addr_mux2sel [2]),
    .ADR2(\cpu/ExecUnit/alu_src2 [11]),
    .ADR4(\cpu/ExecUnit/reg_out1 [11]),
    .ADR5(\cpu/ExecUnit/addres[11]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N21 )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_11  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_11/CLK ),
    .I(\cpu/ExecUnit/mdr_src [11]),
    .O(\cpu/ExecUnit/alu_src2 [11]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 64'h0000FF00FF000020 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out31_G  (
    .ADR3(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR4(addr_bus[2]),
    .ADR5(addr_bus[1]),
    .ADR2(addr_bus[4]),
    .ADR1(addr_bus[5]),
    .ADR0(led_dev_sel1),
    .O(\cpu/ExecUnit/MDRsrcsel/N22 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 64'h00000000000000FF ))
  \cpu/Mmux_addr_mux1sel111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\cpu/current_state_2_4_0 ),
    .ADR3(\cpu/current_state_0_3_1707 ),
    .ADR5(\cpu/current_state_1_2_1708 ),
    .O(\cpu/addr_mux2sel [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y40" ),
    .INIT ( 64'hFF00FE0EFF00F202 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int61  (
    .ADR4(current_state_0),
    .ADR2(\cpu/current_state [2]),
    .ADR1(current_state_1),
    .ADR5(\cpu/ExecUnit/alu_src2 [11]),
    .ADR0(\cpu/ExecUnit/reg_out1 [11]),
    .ADR3(\cpu/ExecUnit/addres[11]_0 ),
    .O(\cpu/ExecUnit/alu_res [11])
  );
  X_BUF   \cpu/ExecUnit/reg_out1[11]/cpu/ExecUnit/reg_out1[11]_DMUX_Delay  (
    .I(\cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1_O ),
    .O(\cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1_O_0 )
  );
  X_BUF   \cpu/ExecUnit/reg_out1[11]/cpu/ExecUnit/reg_out1[11]_CMUX_Delay  (
    .I(\cpu/ExecUnit/reg_out1 [10]),
    .O(\cpu/ExecUnit/reg_out1[10]_0 )
  );
  X_BUF   \cpu/ExecUnit/reg_out1[11]/cpu/ExecUnit/reg_out1[11]_BMUX_Delay  (
    .I(\cpu/ExecUnit/reg_out1 [8]),
    .O(\cpu/ExecUnit/reg_out1[8]_0 )
  );
  X_BUF   \cpu/ExecUnit/reg_out1[11]/cpu/ExecUnit/reg_out1[11]_AMUX_Delay  (
    .I(\cpu/ExecUnit/reg_out1 [6]),
    .O(\cpu/ExecUnit/reg_out1[6]_0 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/CLK ),
    .I(1'b0),
    .O(\NLW_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1_O_UNCONNECTED ),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/CLK ),
    .I(1'b0),
    .O(\cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1_O ),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/IN ),
    .O(\cpu/ExecUnit/reg_out1 [11]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/IN ),
    .O(\cpu/ExecUnit/reg_out1 [10]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/IN ),
    .O(\cpu/ExecUnit/reg_out1 [9]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/IN ),
    .O(\cpu/ExecUnit/reg_out1 [8]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/IN ),
    .O(\cpu/ExecUnit/reg_out1 [7]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X8Y44" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/IN ),
    .O(\cpu/ExecUnit/reg_out1 [6]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y45" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out141  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N39 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N40 ),
    .O(\cpu/ExecUnit/mdr_src [7]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 64'hFF00DDDDFF008888 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out141_F  (
    .ADR2(1'b1),
    .ADR4(\cpu/current_state [2]),
    .ADR0(current_state_1),
    .ADR5(\cpu/ExecUnit/reg_out1 [7]),
    .ADR1(ValueOut_7),
    .ADR3(\cpu/ExecUnit/addres[7]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N39 )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_7  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_7/CLK ),
    .I(\cpu/ExecUnit/mdr_src [7]),
    .O(ValueOut_7),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 64'hFCFC5454FEFE5454 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out141_G  (
    .ADR3(1'b1),
    .ADR4(addr_bus[2]),
    .ADR1(LEDS_int_7),
    .ADR2(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR0(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR5(addr_bus[1]),
    .O(\cpu/ExecUnit/MDRsrcsel/N40 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y45" ),
    .INIT ( 64'hAAAAAFACAAAAA3A0 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int281  (
    .ADR2(current_state_0),
    .ADR4(\cpu/current_state [2]),
    .ADR1(current_state_1),
    .ADR5(ValueOut_7),
    .ADR3(\cpu/ExecUnit/reg_out1 [7]),
    .ADR0(\cpu/ExecUnit/addres[7]_0 ),
    .O(\cpu/ExecUnit/alu_res [7])
  );
  X_FF #(
    .LOC ( "SLICE_X9Y34" ),
    .INIT ( 1'b0 ))
  \cpu/IR_14_2  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_14_2/CLK ),
    .I(\NlwBufferSignal_cpu/IR_14_2/IN ),
    .O(\cpu/IR_14_2_1683 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y34" ),
    .INIT ( 1'b0 ))
  \cpu/IR_14_1  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_14_1/CLK ),
    .I(\NlwBufferSignal_cpu/IR_14_1/IN ),
    .O(\cpu/IR_14_1_1668 ),
    .RST(GND),
    .SET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y35" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_1/CLK ),
    .I(\NlwBufferSignal_cpu/current_state_1/IN ),
    .O(current_state_1),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y35" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_0/CLK ),
    .I(\NlwBufferSignal_cpu/current_state_0/IN ),
    .O(current_state_0),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_31  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_31/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_31/IN ),
    .O(addr_bus[31]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_30  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_30/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_30/IN ),
    .O(addr_bus[30]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y36" ),
    .INIT ( 64'hCCCCCCC8CCCCCCCC ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1171  (
    .ADR1(\cpu/AddrUnit/pc_out [24]),
    .ADR3(\cpu/IR[15] ),
    .ADR2(\cpu/current_state [2]),
    .ADR4(current_state_1),
    .ADR5(\cpu/IR[14] ),
    .ADR0(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [24])
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_29  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_29/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_29/IN ),
    .O(addr_bus[29]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y36" ),
    .INIT ( 64'hAAAAAAAAAAA8AAAA ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1161  (
    .ADR0(\cpu/AddrUnit/pc_out [23]),
    .ADR3(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR1(current_state_1),
    .ADR2(\cpu/current_state [2]),
    .ADR5(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [23])
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y37" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_1_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_1_2/CLK ),
    .I(\cpu/ld_mdr ),
    .O(\cpu/current_state_1_2_1708 ),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y37" ),
    .INIT ( 64'h1100111011001100 ))
  \cpu/ld_mdr1  (
    .ADR1(current_state_1),
    .ADR0(\cpu/current_state [2]),
    .ADR5(\cpu/IR[11] ),
    .ADR2(\cpu/IR[14] ),
    .ADR4(\cpu/IR[15] ),
    .ADR3(current_state_0),
    .O(\cpu/ld_mdr )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y37" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_1_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_1_1/CLK ),
    .I(\NlwBufferSignal_cpu/current_state_1_1/IN ),
    .O(\cpu/current_state_1_1_1726 ),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_BUF   \cpu/IR[8]/cpu/IR[8]_DMUX_Delay  (
    .I(\cpu/IR[7] ),
    .O(\cpu/IR[7]_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 1'b0 ))
  \cpu/IR_8  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_8/CLK ),
    .I(\data_bus_in[8] ),
    .O(\cpu/IR[8] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 64'h3300FF003300FF00 ))
  Mmux_data_bus_in151 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR1(addr_bus[1]),
    .ADR4(addr_bus[2]),
    .ADR5(1'b1),
    .O(\data_bus_in[8] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 32'hFBFA00FA ))
  Mmux_data_bus_in141 (
    .ADR0(LEDS_int_7),
    .ADR2(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR3(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR1(addr_bus[1]),
    .ADR4(addr_bus[2]),
    .O(\data_bus_in[7] )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 1'b0 ))
  \cpu/IR_7  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_7/CLK ),
    .I(\data_bus_in[7] ),
    .O(\cpu/IR[7] ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 1'b0 ))
  \cpu/IR_6  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_6/CLK ),
    .I(\data_bus_in[6] ),
    .O(\cpu/IR[6] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 64'h22220022FF220022 ))
  Mmux_data_bus_in131 (
    .ADR2(1'b1),
    .ADR0(LEDS_int_6),
    .ADR5(addr_bus[1]),
    .ADR4(addr_bus[2]),
    .ADR3(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR1(\GND_3_o_addr_bus[31]_equal_4_o ),
    .O(\data_bus_in[6] )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 1'b0 ))
  \cpu/IR_5  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_5/CLK ),
    .I(\data_bus_in[5] ),
    .O(\cpu/IR[5] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 64'hFFFFFF33F0FCFC30 ))
  Mmux_data_bus_in121 (
    .ADR0(1'b1),
    .ADR2(LEDS_int_5),
    .ADR3(addr_bus[1]),
    .ADR4(addr_bus[2]),
    .ADR1(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR5(\GND_3_o_addr_bus[31]_equal_4_o ),
    .O(\data_bus_in[5] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 64'h0000000002020000 ))
  \GND_3_o_addr_bus[31]_equal_4_o<31>1  (
    .ADR3(1'b1),
    .ADR0(addr_bus[4]),
    .ADR5(addr_bus[5]),
    .ADR1(addr_bus[2]),
    .ADR2(addr_bus[1]),
    .ADR4(led_dev_sel1),
    .O(\GND_3_o_addr_bus[31]_equal_4_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y44" ),
    .INIT ( 64'h00000000AAAAAAAA ))
  \cpu/Mram__n0180111  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(current_state_0),
    .ADR0(current_state_1),
    .O(\cpu/_n0180 [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 1'b0 ))
  \ledcontrol/LEDS_int_7  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_ledcontrol/LEDS_int_7/CLK ),
    .I(\ledcontrol/LEDS_int_7_dpot_600 ),
    .O(LEDS_int_7),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y45" ),
    .INIT ( 64'hCCFFCC00CCFFCC00 ))
  \ledcontrol/LEDS_int_7_dpot  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(LEDS_int_7),
    .ADR1(ValueOut_7),
    .ADR3(\ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 ),
    .O(\ledcontrol/LEDS_int_7_dpot_600 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y29" ),
    .INIT ( 64'hF0F0F0F0F0F0F0B0 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1311  (
    .ADR2(\cpu/AddrUnit/pc_out [8]),
    .ADR5(\cpu/IR[15] ),
    .ADR1(\cpu/IR_14_2_1683 ),
    .ADR0(current_state_1),
    .ADR4(\cpu/current_state_2_2_1671 ),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [8])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y29" ),
    .INIT ( 64'h0005000000050000 ))
  \cpu/AddrUnit/AddrAdder1/data2<26>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR4(\cpu/IR[6] ),
    .ADR3(current_state_1),
    .ADR2(\cpu/current_state_2_3_1736 ),
    .ADR0(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data2[6] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y29" ),
    .INIT ( 64'hCCCCCCCCCCC8CCCC ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1121  (
    .ADR1(\cpu/AddrUnit/pc_out [1]),
    .ADR0(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR3(current_state_1),
    .ADR2(\cpu/current_state [2]),
    .ADR5(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y29" ),
    .INIT ( 64'h0000111100000000 ))
  \cpu/AddrUnit/AddrAdder1/data2<30>1  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\cpu/IR[2] ),
    .ADR4(current_state_1),
    .ADR0(\cpu/current_state_2_2_1671 ),
    .ADR1(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data2[2] )
  );
  X_BUF   \addr_bus[4]/addr_bus[4]_BMUX_Delay  (
    .I(\cpu/AddrUnit/adder_out[2]_pack_6 ),
    .O(\cpu/AddrUnit/adder_out [2])
  );
  X_BUF   \addr_bus[4]/addr_bus[4]_AMUX_Delay  (
    .I(\cpu/AddrUnit/adder_out[1]_pack_4 ),
    .O(\cpu/AddrUnit/adder_out [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_4  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_4/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_4/IN ),
    .O(addr_bus[4]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 64'hFFFFFFFFFFF0FFF0 ))
  \ledcontrol/byte_sel[1]_rw_AND_38_o<1>_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR5(addr_bus[4]),
    .ADR3(addr_bus[2]),
    .ADR2(addr_bus[1]),
    .O(\ledcontrol/N19 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_3  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_3/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_3/IN ),
    .O(addr_bus[3]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 64'hFFCCFFCCFFCCFFCC ))
  led_dev_sel16_SW0 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR1(addr_bus[4]),
    .ADR3(addr_bus[5]),
    .O(N6)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_2  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_2/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_2/IN ),
    .O(addr_bus[2]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 64'hCCCC00CCCCCC00CC ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int261  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .ADR1(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[3]_0 ),
    .ADR5(1'b1),
    .O(\cpu/AddrUnit/adder_out [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 32'hF0F000F0 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int231  (
    .ADR0(1'b1),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[2]_0 ),
    .ADR3(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .ADR1(1'b1),
    .O(\cpu/AddrUnit/adder_out[2]_pack_6 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_1  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_1/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_1/IN ),
    .O(addr_bus[1]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 64'hCCCC00CCCCCC00CC ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int291  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .ADR1(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[6]_0 ),
    .ADR5(1'b1),
    .O(\cpu/AddrUnit/adder_out [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 32'hAAAA00AA ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int121  (
    .ADR1(1'b1),
    .ADR0(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[1]_0 ),
    .ADR3(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .ADR2(1'b1),
    .O(\cpu/AddrUnit/adder_out[1]_pack_4 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y31" ),
    .INIT ( 64'h0000000000005500 ))
  \cpu/AddrUnit/AddrAdder1/data2<29>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\cpu/IR[3] ),
    .ADR5(current_state_1),
    .ADR0(\cpu/current_state_2_2_1671 ),
    .ADR4(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data2[3] )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y31" ),
    .INIT ( 1'b0 ))
  \cpu/IR_4  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_4/CLK ),
    .I(\data_bus_in[4] ),
    .O(\cpu/IR[4] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y31" ),
    .INIT ( 64'h3B0F33003B0F3300 ))
  Mmux_data_bus_in111 (
    .ADR5(1'b1),
    .ADR4(LEDS_int_4),
    .ADR1(addr_bus[1]),
    .ADR0(addr_bus[2]),
    .ADR3(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR2(\GND_3_o_addr_bus[31]_equal_4_o ),
    .O(\data_bus_in[4] )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y31" ),
    .INIT ( 1'b0 ))
  \cpu/IR_3  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_3/CLK ),
    .I(\data_bus_in[3] ),
    .O(\cpu/IR[3] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y31" ),
    .INIT ( 64'hFFFF00FFAFAA00AA ))
  Mmux_data_bus_in101 (
    .ADR1(1'b1),
    .ADR0(LEDS_int_3),
    .ADR2(addr_bus[1]),
    .ADR4(addr_bus[2]),
    .ADR3(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR5(\GND_3_o_addr_bus[31]_equal_4_o ),
    .O(\data_bus_in[3] )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y31" ),
    .INIT ( 1'b0 ))
  \cpu/IR_2  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_2/CLK ),
    .I(\data_bus_in[2] ),
    .O(\cpu/IR[2] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y31" ),
    .INIT ( 64'h00880088D0D8D0D8 ))
  Mmux_data_bus_in91 (
    .ADR4(1'b1),
    .ADR2(LEDS_int_2),
    .ADR3(addr_bus[1]),
    .ADR1(addr_bus[2]),
    .ADR0(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR5(\GND_3_o_addr_bus[31]_equal_4_o ),
    .O(\data_bus_in[2] )
  );
  X_BUF   \cpu/current_state_2_1/cpu/current_state_2_1_DMUX_Delay  (
    .I(\cpu/current_state_2_4_703 ),
    .O(\cpu/current_state_2_4_0 )
  );
  X_BUF   \cpu/current_state_2_1/cpu/current_state_2_1_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_719 ),
    .O(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X10Y33" ))
  \cpu/AddrUnit/AddrAdder1/data2<24>1_1_1  (
    .IA(1'b0),
    .IB(\cpu/AddrUnit/AddrAdder1/N48 ),
    .O(\cpu/AddrUnit/AddrAdder1/data2<24>1_1_719 ),
    .SEL(\cpu/Mmux_addr_mux1sel111_1674 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_2_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_2_1/CLK ),
    .I(\cpu/current_state_2_glue_set_rt_704 ),
    .O(\cpu/current_state_2_1_1727 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 64'h0000000000000000 ))
  \cpu/AddrUnit/AddrAdder1/addr_bus[0]_6.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_cpu/AddrUnit/AddrAdder1/addr_bus[0]_6.D6LUT_O_UNCONNECTED )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 32'hFFFF0000 ))
  \cpu/current_state_2_glue_set_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\cpu/current_state_2_glue_set_1800 ),
    .O(\cpu/current_state_2_glue_set_rt_704 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_2_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_2_4/CLK ),
    .I(\cpu/current_state_2_glue_set_rt_704 ),
    .O(\cpu/current_state_2_4_703 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 64'hFFFFF7FB55AAD5EA ))
  \cpu/AddrUnit/AddrAdder1/data2<24>1_1_1_G  (
    .ADR5(\cpu/IR[8] ),
    .ADR1(\cpu/IR_14_1_1668 ),
    .ADR4(\cpu/IR_15_1_1669 ),
    .ADR3(\cpu/current_state_0_2_1670 ),
    .ADR0(\cpu/current_state_2_2_1671 ),
    .ADR2(\cpu/IR[6] ),
    .O(\cpu/AddrUnit/AddrAdder1/N48 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_2_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_2_2/CLK ),
    .I(\NlwBufferSignal_cpu/current_state_2_2/IN ),
    .O(\cpu/current_state_2_2_1671 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 64'hAAAA5550AAAA5550 ))
  \cpu/AddrUnit/AddrAdder1/data2<31>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(\cpu/IR[1]_0 ),
    .ADR0(\cpu/current_state_2_2_1671 ),
    .ADR3(current_state_1),
    .ADR4(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data2[1] )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_2_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_2_3/CLK ),
    .I(\NlwBufferSignal_cpu/current_state_2_3/IN ),
    .O(\cpu/current_state_2_3_1736 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 64'hAAAAAAA8AAAAAAAA ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1301  (
    .ADR0(\cpu/AddrUnit/pc_out [7]),
    .ADR1(\cpu/IR[15] ),
    .ADR5(\cpu/IR[14] ),
    .ADR3(current_state_1),
    .ADR2(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [7])
  );
  X_BUF   \cpu/IR_15_1/cpu/IR_15_1_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data2<24>1_729 ),
    .O(\cpu/AddrUnit/AddrAdder1/data2<24>1_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X10Y34" ))
  \cpu/AddrUnit/AddrAdder1/data2<24>1_1  (
    .IA(1'b0),
    .IB(\cpu/AddrUnit/AddrAdder1/N28 ),
    .O(\cpu/AddrUnit/AddrAdder1/data2<24>1_729 ),
    .SEL(\cpu/Mmux_addr_mux1sel111_1674 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y34" ),
    .INIT ( 64'h0000000000000000 ))
  \cpu/AddrUnit/AddrAdder1/addr_bus[0]_3.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_cpu/AddrUnit/AddrAdder1/addr_bus[0]_3.D6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y34" ),
    .INIT ( 64'hF7F5FBFAD5F5EAFA ))
  \cpu/AddrUnit/AddrAdder1/data2<24>1_1_G  (
    .ADR2(\cpu/IR[8] ),
    .ADR3(\cpu/IR_14_1_1668 ),
    .ADR1(\cpu/IR_15_1_1669 ),
    .ADR4(\cpu/current_state_0_2_1670 ),
    .ADR0(\cpu/current_state_2_2_1671 ),
    .ADR5(\cpu/IR[6] ),
    .O(\cpu/AddrUnit/AddrAdder1/N28 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y34" ),
    .INIT ( 1'b0 ))
  \cpu/IR_15_1  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_15_1/CLK ),
    .I(\data_bus_in[15] ),
    .O(\cpu/IR_15_1_1669 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y34" ),
    .INIT ( 64'h0000000001000000 ))
  Mmux_data_bus_in71 (
    .ADR1(addr_bus[5]),
    .ADR0(addr_bus[2]),
    .ADR2(addr_bus[1]),
    .ADR4(led_dev_sel1),
    .ADR5(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR3(addr_bus[4]),
    .O(\data_bus_in[15] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y34" ),
    .INIT ( 64'hFFFF0000FFEF0000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1131  (
    .ADR4(\cpu/AddrUnit/pc_out [20]),
    .ADR3(\cpu/IR[15] ),
    .ADR2(\cpu/IR[14] ),
    .ADR0(current_state_1),
    .ADR1(\cpu/current_state [2]),
    .ADR5(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [20])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y35" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_20  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_20/CLK ),
    .I(\cpu/AddrUnit/adder_out [20]),
    .O(\cpu/AddrUnit/pc_out [20]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y35" ),
    .INIT ( 64'h8A8A8A8A8A8A8ABA ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int131  (
    .ADR4(\cpu/current_state_1_1_1726 ),
    .ADR5(\cpu/current_state_2_1_1727 ),
    .ADR3(\cpu/current_state_0_1_1728 ),
    .ADR2(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .ADR0(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[20]_0 ),
    .O(\cpu/AddrUnit/adder_out [20])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y35" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_19  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_19/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_19/IN ),
    .O(\cpu/AddrUnit/pc_out [19]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y35" ),
    .INIT ( 64'hFFFFFFEF00000000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1101  (
    .ADR5(\cpu/AddrUnit/pc_out [18]),
    .ADR1(\cpu/IR[15] ),
    .ADR2(\cpu/IR[14] ),
    .ADR4(current_state_1),
    .ADR0(\cpu/current_state_2_3_1736 ),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [18])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y35" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_18  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_18/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_18/IN ),
    .O(\cpu/AddrUnit/pc_out [18]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y35" ),
    .INIT ( 64'hCCCCCCCCCCC8CCCC ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data191  (
    .ADR1(\cpu/AddrUnit/pc_out [17]),
    .ADR2(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR3(current_state_1),
    .ADR5(\cpu/current_state_2_3_1736 ),
    .ADR0(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [17])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y35" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_17  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_17/CLK ),
    .I(\cpu/AddrUnit/adder_out [17]),
    .O(\cpu/AddrUnit/pc_out [17]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y35" ),
    .INIT ( 64'hFF000F00FF001F10 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int91  (
    .ADR0(\cpu/current_state_1_1_1726 ),
    .ADR5(\cpu/current_state_2_1_1727 ),
    .ADR1(\cpu/current_state_0_1_1728 ),
    .ADR2(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[17]_0 ),
    .O(\cpu/AddrUnit/adder_out [17])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_24  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_24/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_24/IN ),
    .O(\cpu/AddrUnit/pc_out [24]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y36" ),
    .INIT ( 64'hFFFEFFFF00000000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1151  (
    .ADR5(\cpu/AddrUnit/pc_out [22]),
    .ADR0(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR2(current_state_1),
    .ADR3(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [22])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_23  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_23/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_23/IN ),
    .O(\cpu/AddrUnit/pc_out [23]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y36" ),
    .INIT ( 64'hF0F0F0F0F0F0F0B0 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1141  (
    .ADR2(\cpu/AddrUnit/pc_out [21]),
    .ADR4(\cpu/IR[15] ),
    .ADR1(\cpu/IR[14] ),
    .ADR5(current_state_1),
    .ADR0(\cpu/current_state [2]),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [21])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_22  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_22/CLK ),
    .I(\cpu/AddrUnit/adder_out [22]),
    .O(\cpu/AddrUnit/pc_out [22]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y36" ),
    .INIT ( 64'hBBBBBBBF00000004 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int151  (
    .ADR4(\cpu/current_state_1_1_1726 ),
    .ADR3(\cpu/current_state_2_1_1727 ),
    .ADR2(\cpu/current_state_0_1_1728 ),
    .ADR1(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[22]_0 ),
    .O(\cpu/AddrUnit/adder_out [22])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_21  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_21/CLK ),
    .I(\cpu/AddrUnit/adder_out [21]),
    .O(\cpu/AddrUnit/pc_out [21]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y36" ),
    .INIT ( 64'hFF000101FF00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int141  (
    .ADR1(\cpu/current_state_1_1_1726 ),
    .ADR0(\cpu/current_state_2_1_1727 ),
    .ADR2(\cpu/current_state_0_1_1728 ),
    .ADR5(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[21]_0 ),
    .O(\cpu/AddrUnit/adder_out [21])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y37" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_28  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_28/CLK ),
    .I(\cpu/AddrUnit/adder_out [28]),
    .O(\cpu/AddrUnit/pc_out [28]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y37" ),
    .INIT ( 64'hF3F30000F3F70004 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int211  (
    .ADR0(\cpu/current_state_1_1_1726 ),
    .ADR5(\cpu/current_state_2_1_1727 ),
    .ADR3(\cpu/current_state_0_1_1728 ),
    .ADR1(\cpu/current_state [2]),
    .ADR2(current_state_0),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[28]_0 ),
    .O(\cpu/AddrUnit/adder_out [28])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y37" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_27  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_27/CLK ),
    .I(\cpu/AddrUnit/adder_out [27]),
    .O(\cpu/AddrUnit/pc_out [27]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y37" ),
    .INIT ( 64'hF300F300F300F704 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int201  (
    .ADR0(\cpu/current_state_1_1_1726 ),
    .ADR5(\cpu/current_state_2_1_1727 ),
    .ADR4(\cpu/current_state_0_1_1728 ),
    .ADR1(\cpu/current_state [2]),
    .ADR2(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[27]_0 ),
    .O(\cpu/AddrUnit/adder_out [27])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y37" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_26  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_26/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_26/IN ),
    .O(\cpu/AddrUnit/pc_out [26]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y37" ),
    .INIT ( 64'hAAAAAAAAAAA8AAAA ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1191  (
    .ADR3(\cpu/IR[15] ),
    .ADR2(\cpu/current_state [2]),
    .ADR5(current_state_1),
    .ADR0(\cpu/AddrUnit/pc_out [26]),
    .ADR4(\cpu/IR[14] ),
    .ADR1(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [26])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y37" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_25  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_25/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_25/IN ),
    .O(\cpu/AddrUnit/pc_out [25]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y37" ),
    .INIT ( 64'hFFFFFFFB00000000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1181  (
    .ADR3(\cpu/IR[15] ),
    .ADR2(\cpu/current_state [2]),
    .ADR4(current_state_1),
    .ADR5(\cpu/AddrUnit/pc_out [25]),
    .ADR1(\cpu/IR[14] ),
    .ADR0(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [25])
  );
  X_BUF   \cpu/IR[14]/cpu/IR[14]_DMUX_Delay  (
    .I(\cpu/IR[1] ),
    .O(\cpu/IR[1]_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 1'b0 ))
  \cpu/IR_14  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_14/CLK ),
    .I(\data_bus_in[14] ),
    .O(\cpu/IR[14] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 64'h00F000F000F000F0 ))
  Mmux_data_bus_in61 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(addr_bus[2]),
    .ADR2(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR5(1'b1),
    .O(\data_bus_in[14] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 32'hFF0FDC0C ))
  Mmux_data_bus_in81 (
    .ADR1(LEDS_int_1),
    .ADR0(addr_bus[1]),
    .ADR4(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR3(addr_bus[2]),
    .ADR2(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .O(\data_bus_in[1] )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 1'b0 ))
  \cpu/IR_1  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_1/CLK ),
    .I(\data_bus_in[1] ),
    .O(\cpu/IR[1] ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 1'b0 ))
  \cpu/IR_13  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_13/CLK ),
    .I(\data_bus_in[9] ),
    .O(\cpu/IR[13] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 64'h00AA001000AA0000 ))
  Mmux_data_bus_in161 (
    .ADR1(addr_bus[5]),
    .ADR2(addr_bus[4]),
    .ADR3(addr_bus[1]),
    .ADR4(addr_bus[2]),
    .ADR5(led_dev_sel1),
    .ADR0(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .O(\data_bus_in[9] )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 1'b0 ))
  \cpu/IR_12  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_12/CLK ),
    .I(\data_bus_in[12] ),
    .O(\cpu/IR[12] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 64'h00FF000000000000 ))
  Mmux_data_bus_in10211 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(addr_bus[1]),
    .ADR4(addr_bus[2]),
    .ADR5(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .O(\data_bus_in[12] )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 1'b0 ))
  \cpu/IR_11  (
    .CE(\cpu/Mram__n01414_0 ),
    .CLK(\NlwBufferSignal_cpu/IR_11/CLK ),
    .I(\data_bus_in[11] ),
    .O(\cpu/IR[11] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y38" ),
    .INIT ( 64'h6666666600100000 ))
  Mmux_data_bus_in31 (
    .ADR3(addr_bus[5]),
    .ADR4(addr_bus[4]),
    .ADR0(addr_bus[1]),
    .ADR1(addr_bus[2]),
    .ADR2(led_dev_sel1),
    .ADR5(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .O(\data_bus_in[11] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X10Y43" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out151  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N25 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N26 ),
    .O(\cpu/ExecUnit/mdr_src [8]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y43" ),
    .INIT ( 64'hFFEE3322CCEE0022 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out151_F  (
    .ADR2(1'b1),
    .ADR1(\cpu/current_state [2]),
    .ADR3(\cpu/addr_mux2sel [2]),
    .ADR0(\cpu/ExecUnit/alu_src2 [8]),
    .ADR5(\cpu/ExecUnit/reg_out1[8]_0 ),
    .ADR4(\cpu/ExecUnit/addres[8]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N25 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y43" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_8  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_8/CLK ),
    .I(\cpu/ExecUnit/mdr_src [8]),
    .O(\cpu/ExecUnit/alu_src2 [8]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y43" ),
    .INIT ( 64'h3030F0F03030F0F0 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out151_G  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR4(addr_bus[2]),
    .ADR1(addr_bus[1]),
    .O(\cpu/ExecUnit/MDRsrcsel/N26 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y43" ),
    .INIT ( 64'h3333333332323737 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int321_SW0  (
    .ADR3(1'b1),
    .ADR1(\cpu/ExecUnit/alu_src2 [9]),
    .ADR2(\cpu/current_state [2]),
    .ADR5(current_state_1),
    .ADR0(current_state_0),
    .ADR4(\cpu/ExecUnit/reg_out1 [9]),
    .O(\cpu/ExecUnit/N14 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y43" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_9  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_9/CLK ),
    .I(\cpu/ExecUnit/mdr_src [9]),
    .O(\cpu/ExecUnit/alu_src2 [9]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y43" ),
    .INIT ( 64'hF3C0F3F3C0C0C0F3 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out161  (
    .ADR0(1'b1),
    .ADR1(current_state_0),
    .ADR3(\cpu/current_state [2]),
    .ADR4(\cpu/ExecUnit/N14 ),
    .ADR5(\cpu/ExecUnit/addres[9]_0 ),
    .ADR2(\data_bus_in[9] ),
    .O(\cpu/ExecUnit/mdr_src [9])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X10Y44" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out131  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N45 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N46 ),
    .O(\cpu/ExecUnit/mdr_src [6]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y44" ),
    .INIT ( 64'hFF00FF00DDDD8888 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out131_F  (
    .ADR2(1'b1),
    .ADR5(\cpu/current_state [2]),
    .ADR0(current_state_1),
    .ADR4(\cpu/ExecUnit/reg_out1[6]_0 ),
    .ADR1(ValueOut_6),
    .ADR3(\cpu/ExecUnit/addres[6]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N45 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y44" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_6  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_6/CLK ),
    .I(\cpu/ExecUnit/mdr_src [6]),
    .O(ValueOut_6),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y44" ),
    .INIT ( 64'h00F00000C0F0CCCC ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out131_G  (
    .ADR0(1'b1),
    .ADR5(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR1(LEDS_int_6),
    .ADR4(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR2(addr_bus[2]),
    .ADR3(addr_bus[1]),
    .O(\cpu/ExecUnit/MDRsrcsel/N46 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y44" ),
    .INIT ( 64'hFFFFFEBA00005410 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int261  (
    .ADR0(current_state_0),
    .ADR4(\cpu/current_state [2]),
    .ADR1(current_state_1),
    .ADR3(ValueOut_6),
    .ADR2(\cpu/ExecUnit/reg_out1[6]_0 ),
    .ADR5(\cpu/ExecUnit/addres[6]_0 ),
    .O(\cpu/ExecUnit/alu_res [6])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X10Y45" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out21  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N23 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N24 ),
    .O(\cpu/ExecUnit/mdr_src [10]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y45" ),
    .INIT ( 64'hFF00FF00F0F0CCCC ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out21_F  (
    .ADR0(1'b1),
    .ADR5(\cpu/current_state [2]),
    .ADR4(\cpu/addr_mux2sel [2]),
    .ADR1(\cpu/ExecUnit/alu_src2 [10]),
    .ADR2(\cpu/ExecUnit/reg_out1[10]_0 ),
    .ADR3(\cpu/ExecUnit/addres[10]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N23 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y45" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_10  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_10/CLK ),
    .I(\cpu/ExecUnit/mdr_src [10]),
    .O(\cpu/ExecUnit/alu_src2 [10]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y45" ),
    .INIT ( 64'h0000A0A00000A0A0 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out21_G  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR0(addr_bus[2]),
    .ADR4(addr_bus[1]),
    .O(\cpu/ExecUnit/MDRsrcsel/N24 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y45" ),
    .INIT ( 64'hFFFEFFF2000E0002 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int41  (
    .ADR2(current_state_0),
    .ADR3(\cpu/current_state [2]),
    .ADR1(current_state_1),
    .ADR4(\cpu/ExecUnit/alu_src2 [10]),
    .ADR0(\cpu/ExecUnit/reg_out1[10]_0 ),
    .ADR5(\cpu/ExecUnit/addres[10]_0 ),
    .O(\cpu/ExecUnit/alu_res [10])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X10Y46" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out91  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N41 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N42 ),
    .O(\cpu/ExecUnit/mdr_src [2]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y46" ),
    .INIT ( 64'hFFFF0000AACCAACC ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out91_F  (
    .ADR2(1'b1),
    .ADR5(\cpu/current_state [2]),
    .ADR3(current_state_1),
    .ADR1(\cpu/ExecUnit/reg_out1[2]_0 ),
    .ADR0(ValueOut_2),
    .ADR4(\cpu/ExecUnit/addres[2]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N41 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y46" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_2  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_2/CLK ),
    .I(\cpu/ExecUnit/mdr_src [2]),
    .O(ValueOut_2),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y46" ),
    .INIT ( 64'h0000C0C08A8ACACA ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out91_G  (
    .ADR3(1'b1),
    .ADR5(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR0(LEDS_int_2),
    .ADR2(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR1(addr_bus[2]),
    .ADR4(addr_bus[1]),
    .O(\cpu/ExecUnit/MDRsrcsel/N42 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y46" ),
    .INIT ( 64'hFFFE0504FBFA0100 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int181  (
    .ADR0(current_state_0),
    .ADR2(\cpu/current_state [2]),
    .ADR1(current_state_1),
    .ADR5(ValueOut_2),
    .ADR3(\cpu/ExecUnit/reg_out1[2]_0 ),
    .ADR4(\cpu/ExecUnit/addres[2]_0 ),
    .O(\cpu/ExecUnit/alu_res [2])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X10Y47" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out81  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N35 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N36 ),
    .O(\cpu/ExecUnit/mdr_src [1]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 64'hFFFF0000CCF0CCF0 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out81_F  (
    .ADR0(1'b1),
    .ADR5(\cpu/current_state [2]),
    .ADR3(current_state_1),
    .ADR2(\cpu/ExecUnit/reg_out1 [1]),
    .ADR1(ValueOut_1),
    .ADR4(\cpu/ExecUnit/addres[1]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N35 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_1  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_1/CLK ),
    .I(\cpu/ExecUnit/mdr_src [1]),
    .O(ValueOut_1),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 64'hAFAFAFAFAF00AFA0 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out81_G  (
    .ADR1(1'b1),
    .ADR0(addr_bus[2]),
    .ADR3(LEDS_int_1),
    .ADR5(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR2(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR4(addr_bus[1]),
    .O(\cpu/ExecUnit/MDRsrcsel/N36 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 64'hCCCCCCCCFFFFFFFF ))
  Mmux_data_bus_in1111 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(addr_bus[2]),
    .ADR5(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .O(Mmux_data_bus_in111_1902)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_0  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_0/CLK ),
    .I(\cpu/ExecUnit/mdr_src [0]),
    .O(ValueOut_0),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 64'h00AA00AA0CAA00AA ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out17  (
    .ADR1(LEDS_int_0),
    .ADR3(current_state_0),
    .ADR0(\cpu/ExecUnit/alu_res [0]),
    .ADR2(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR5(\data_bus_in[12] ),
    .ADR4(Mmux_data_bus_in111_1902),
    .O(\cpu/ExecUnit/mdr_src [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y29" ),
    .INIT ( 64'hFF00FF00FE00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data181  (
    .ADR3(\cpu/AddrUnit/pc_out [16]),
    .ADR2(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR0(current_state_1),
    .ADR1(\cpu/current_state_2_3_1736 ),
    .ADR5(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [16])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_16  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_16/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_16/IN ),
    .O(\cpu/AddrUnit/pc_out [16]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y30" ),
    .INIT ( 64'hAAAAAAA8AAAAAAAA ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data171  (
    .ADR0(\cpu/AddrUnit/pc_out [15]),
    .ADR4(\cpu/IR[15] ),
    .ADR5(\cpu/IR[14] ),
    .ADR1(current_state_1),
    .ADR2(\cpu/current_state_2_3_1736 ),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [15])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_15  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_15/CLK ),
    .I(\cpu/AddrUnit/adder_out [15]),
    .O(\cpu/AddrUnit/pc_out [15]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y30" ),
    .INIT ( 64'hAA00AA03AAAAAAAA ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int71  (
    .ADR4(\cpu/current_state_1_1_1726 ),
    .ADR1(\cpu/current_state_2_1_1727 ),
    .ADR2(\cpu/current_state_0_1_1728 ),
    .ADR5(\cpu/current_state [2]),
    .ADR3(current_state_0),
    .ADR0(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[15]_0 ),
    .O(\cpu/AddrUnit/adder_out [15])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_14  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_14/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_14/IN ),
    .O(\cpu/AddrUnit/pc_out [14]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y30" ),
    .INIT ( 64'hCCCCCCCCCCCCCC8C ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data161  (
    .ADR3(\cpu/IR[15] ),
    .ADR2(\cpu/IR[14] ),
    .ADR0(current_state_1),
    .ADR1(\cpu/AddrUnit/pc_out [14]),
    .ADR5(\cpu/current_state_2_3_1736 ),
    .ADR4(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [14])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_13  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_13/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_13/IN ),
    .O(\cpu/AddrUnit/pc_out [13]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y30" ),
    .INIT ( 64'hFFFFFFEF00000000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data151  (
    .ADR1(\cpu/IR[15] ),
    .ADR2(\cpu/IR[14] ),
    .ADR0(current_state_1),
    .ADR5(\cpu/AddrUnit/pc_out [13]),
    .ADR4(\cpu/current_state_2_3_1736 ),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [13])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_16  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_16/CLK ),
    .I(\cpu/AddrUnit/adder_out [16]),
    .O(addr_bus[16]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 64'hCC00CD01FF00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int81  (
    .ADR4(\cpu/current_state_1_1_1726 ),
    .ADR0(\cpu/current_state_2_1_1727 ),
    .ADR2(\cpu/current_state_0_1_1728 ),
    .ADR5(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[16]_0 ),
    .O(\cpu/AddrUnit/adder_out [16])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_15  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_15/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_15/IN ),
    .O(addr_bus[15]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 64'h00000000000000CC ))
  \cpu/AddrUnit/AddrAdder1/data2<28>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\cpu/IR[4] ),
    .ADR5(current_state_1),
    .ADR3(\cpu/current_state_2_3_1736 ),
    .ADR4(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data2[4] )
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_14  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_14/CLK ),
    .I(\cpu/AddrUnit/adder_out [14]),
    .O(addr_bus[14]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 64'hC0C0F0F0C0D1F0F0 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int61  (
    .ADR3(\cpu/current_state_1_1_1726 ),
    .ADR0(\cpu/current_state_2_1_1727 ),
    .ADR5(\cpu/current_state_0_1_1728 ),
    .ADR4(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[14]_0 ),
    .O(\cpu/AddrUnit/adder_out [14])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_13  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_13/CLK ),
    .I(\cpu/AddrUnit/adder_out [13]),
    .O(addr_bus[13]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 64'hAF00AF00AF00BF10 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int51  (
    .ADR1(\cpu/current_state_1_1_1726 ),
    .ADR4(\cpu/current_state_2_1_1727 ),
    .ADR5(\cpu/current_state_0_1_1728 ),
    .ADR2(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[13]_0 ),
    .O(\cpu/AddrUnit/adder_out [13])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y33" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_12  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_12/CLK ),
    .I(\cpu/AddrUnit/adder_out [12]),
    .O(\cpu/AddrUnit/pc_out [12]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y33" ),
    .INIT ( 64'hFF010001FFFF0000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int41  (
    .ADR2(\cpu/current_state_1_1_1726 ),
    .ADR1(\cpu/current_state_2_1_1727 ),
    .ADR0(\cpu/current_state_0_1_1728 ),
    .ADR5(\cpu/current_state [2]),
    .ADR3(current_state_0),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[12]_0 ),
    .O(\cpu/AddrUnit/adder_out [12])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y33" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_11  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_11/CLK ),
    .I(\cpu/AddrUnit/adder_out [11]),
    .O(\cpu/AddrUnit/pc_out [11]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y33" ),
    .INIT ( 64'hFF005500FF005702 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int33  (
    .ADR1(\cpu/current_state_1_1_1726 ),
    .ADR5(\cpu/current_state_2_1_1727 ),
    .ADR2(\cpu/current_state_0_1_1728 ),
    .ADR0(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[11]_0 ),
    .O(\cpu/AddrUnit/adder_out [11])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y33" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_10  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_10/CLK ),
    .I(\cpu/AddrUnit/adder_out [10]),
    .O(\cpu/AddrUnit/pc_out [10]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y33" ),
    .INIT ( 64'hFF000F00FF001F10 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int210  (
    .ADR0(\cpu/current_state_1_1_1726 ),
    .ADR1(\cpu/current_state_2_1_1727 ),
    .ADR5(\cpu/current_state_0_1_1728 ),
    .ADR2(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[10]_0 ),
    .O(\cpu/AddrUnit/adder_out [10])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y33" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_9  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_9/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_9/IN ),
    .O(\cpu/AddrUnit/pc_out [9]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y33" ),
    .INIT ( 64'hFFFEFFFF00000000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1321  (
    .ADR2(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR3(current_state_1),
    .ADR5(\cpu/AddrUnit/pc_out [9]),
    .ADR0(\cpu/current_state_2_3_1736 ),
    .ADR1(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [9])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y34" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_12  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_12/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_12/IN ),
    .O(addr_bus[12]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y34" ),
    .INIT ( 64'h0000000000000001 ))
  led_dev_sel11 (
    .ADR2(addr_bus[6]),
    .ADR4(addr_bus[3]),
    .ADR5(addr_bus[8]),
    .ADR3(addr_bus[7]),
    .ADR1(addr_bus[9]),
    .ADR0(addr_bus[11]),
    .O(led_dev_sel11_1869)
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y34" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_11  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_11/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_11/IN ),
    .O(addr_bus[11]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y34" ),
    .INIT ( 64'h0000000000000001 ))
  led_dev_sel12 (
    .ADR0(addr_bus[12]),
    .ADR5(addr_bus[10]),
    .ADR2(addr_bus[14]),
    .ADR1(addr_bus[13]),
    .ADR3(addr_bus[15]),
    .ADR4(addr_bus[16]),
    .O(led_dev_sel12_1878)
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y34" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_10  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_10/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_10/IN ),
    .O(addr_bus[10]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y34" ),
    .INIT ( 64'hC000000000000000 ))
  led_dev_sel16 (
    .ADR0(1'b1),
    .ADR4(led_dev_sel15_1875),
    .ADR2(led_dev_sel14_1876),
    .ADR1(led_dev_sel11_1869),
    .ADR5(led_dev_sel13_1877),
    .ADR3(led_dev_sel12_1878),
    .O(led_dev_sel1)
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y34" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_9  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_9/CLK ),
    .I(\cpu/AddrUnit/adder_out [9]),
    .O(addr_bus[9]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y34" ),
    .INIT ( 64'hFF00FF000101FF00 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int321  (
    .ADR1(\cpu/current_state_1_1_1726 ),
    .ADR2(\cpu/current_state_2_1_1727 ),
    .ADR0(\cpu/current_state_0_1_1728 ),
    .ADR4(\cpu/current_state [2]),
    .ADR5(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[9]_0 ),
    .O(\cpu/AddrUnit/adder_out [9])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y35" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_20  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_20/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_20/IN ),
    .O(addr_bus[20]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y35" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_19  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_19/CLK ),
    .I(\cpu/AddrUnit/adder_out [19]),
    .O(addr_bus[19]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y35" ),
    .INIT ( 64'hCF00CF00CF00DF10 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int111  (
    .ADR4(\cpu/current_state_1_1_1726 ),
    .ADR5(\cpu/current_state_2_1_1727 ),
    .ADR0(\cpu/current_state_0_1_1728 ),
    .ADR2(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[19]_0 ),
    .O(\cpu/AddrUnit/adder_out [19])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y35" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_18  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_18/CLK ),
    .I(\cpu/AddrUnit/adder_out [18]),
    .O(addr_bus[18]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y35" ),
    .INIT ( 64'hAA00AB01FF00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int101  (
    .ADR4(\cpu/current_state_1_1_1726 ),
    .ADR1(\cpu/current_state_2_1_1727 ),
    .ADR2(\cpu/current_state_0_1_1728 ),
    .ADR5(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[18]_0 ),
    .O(\cpu/AddrUnit/adder_out [18])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y35" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_17  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_17/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_17/IN ),
    .O(addr_bus[17]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y35" ),
    .INIT ( 64'h0000000000000001 ))
  led_dev_sel13 (
    .ADR0(addr_bus[18]),
    .ADR3(addr_bus[19]),
    .ADR4(addr_bus[21]),
    .ADR5(addr_bus[17]),
    .ADR1(addr_bus[20]),
    .ADR2(addr_bus[22]),
    .O(led_dev_sel13_1877)
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_24  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_24/CLK ),
    .I(\cpu/AddrUnit/adder_out [24]),
    .O(addr_bus[24]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y36" ),
    .INIT ( 64'hCFCF0000CFDF0010 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int171  (
    .ADR3(\cpu/current_state_1_1_1726 ),
    .ADR0(\cpu/current_state_2_1_1727 ),
    .ADR5(\cpu/current_state_0_1_1728 ),
    .ADR2(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[24]_0 ),
    .O(\cpu/AddrUnit/adder_out [24])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_23  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_23/CLK ),
    .I(\cpu/AddrUnit/adder_out [23]),
    .O(addr_bus[23]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y36" ),
    .INIT ( 64'h8C8C8C8C8C8C8CDC ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int161  (
    .ADR3(\cpu/current_state_1_1_1726 ),
    .ADR4(\cpu/current_state_2_1_1727 ),
    .ADR5(\cpu/current_state_0_1_1728 ),
    .ADR2(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .ADR1(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[23]_0 ),
    .O(\cpu/AddrUnit/adder_out [23])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_22  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_22/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_22/IN ),
    .O(addr_bus[22]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y36" ),
    .INIT ( 64'h0000000000000001 ))
  led_dev_sel14 (
    .ADR4(addr_bus[24]),
    .ADR0(addr_bus[23]),
    .ADR5(addr_bus[25]),
    .ADR3(addr_bus[26]),
    .ADR1(addr_bus[28]),
    .ADR2(addr_bus[27]),
    .O(led_dev_sel14_1876)
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y36" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_21  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_21/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_21/IN ),
    .O(addr_bus[21]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y36" ),
    .INIT ( 64'h0080000000000000 ))
  \GND_3_o_addr_bus[31]_equal_1_o<31>11  (
    .ADR0(led_dev_sel15_1875),
    .ADR3(N6),
    .ADR2(led_dev_sel11_1869),
    .ADR5(led_dev_sel12_1878),
    .ADR1(led_dev_sel13_1877),
    .ADR4(led_dev_sel14_1876),
    .O(\GND_3_o_addr_bus[31]_equal_1_o<31>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_28  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_28/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_28/IN ),
    .O(addr_bus[28]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_27  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_27/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_27/IN ),
    .O(addr_bus[27]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 64'hCCCCCCCCCCCCCC8C ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1241  (
    .ADR1(\cpu/AddrUnit/pc_out [30]),
    .ADR5(\cpu/IR[15] ),
    .ADR0(\cpu/current_state [2]),
    .ADR3(current_state_1),
    .ADR2(\cpu/IR[14] ),
    .ADR4(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [30])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_26  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_26/CLK ),
    .I(\cpu/AddrUnit/adder_out [26]),
    .O(addr_bus[26]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 64'hAAAAAAAA0A0A0A3A ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int191  (
    .ADR4(\cpu/current_state_1_1_1726 ),
    .ADR1(\cpu/current_state_2_1_1727 ),
    .ADR3(\cpu/current_state_0_1_1728 ),
    .ADR2(\cpu/current_state [2]),
    .ADR5(current_state_0),
    .ADR0(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[26]_0 ),
    .O(\cpu/AddrUnit/adder_out [26])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/MAR/ValueOut_25  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_25/CLK ),
    .I(\cpu/AddrUnit/adder_out [25]),
    .O(addr_bus[25]),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y37" ),
    .INIT ( 64'hFFFF000033370004 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int181  (
    .ADR0(\cpu/current_state_1_1_1726 ),
    .ADR2(\cpu/current_state_2_1_1727 ),
    .ADR3(\cpu/current_state_0_1_1728 ),
    .ADR1(\cpu/current_state [2]),
    .ADR5(current_state_0),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[25]_0 ),
    .O(\cpu/AddrUnit/adder_out [25])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 64'hAAAAAAAAAAAAAAA2 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1221  (
    .ADR0(\cpu/AddrUnit/pc_out [29]),
    .ADR2(\cpu/IR[15] ),
    .ADR4(\cpu/current_state [2]),
    .ADR5(current_state_1),
    .ADR1(\cpu/IR[14] ),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [29])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_31  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_31/CLK ),
    .I(\cpu/AddrUnit/adder_out [31]),
    .O(\cpu/AddrUnit/pc_out [31]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 64'hCF00CF00CF00DF10 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int251  (
    .ADR5(\cpu/current_state_1_1_1726 ),
    .ADR4(\cpu/current_state_2_1_1727 ),
    .ADR0(\cpu/current_state_0_1_1728 ),
    .ADR2(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[31]_0 ),
    .O(\cpu/AddrUnit/adder_out [31])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_30  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_30/CLK ),
    .I(\cpu/AddrUnit/adder_out [30]),
    .O(\cpu/AddrUnit/pc_out [30]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 64'hAAAAAAAA00AA03AA ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int241  (
    .ADR1(\cpu/current_state_1_1_1726 ),
    .ADR4(\cpu/current_state_2_1_1727 ),
    .ADR2(\cpu/current_state_0_1_1728 ),
    .ADR3(\cpu/current_state [2]),
    .ADR5(current_state_0),
    .ADR0(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[30]_0 ),
    .O(\cpu/AddrUnit/adder_out [30])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_29  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_29/CLK ),
    .I(\cpu/AddrUnit/adder_out [29]),
    .O(\cpu/AddrUnit/pc_out [29]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y38" ),
    .INIT ( 64'hF0F000F0F0F011F0 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int221  (
    .ADR1(\cpu/current_state_1_1_1726 ),
    .ADR0(\cpu/current_state_2_1_1727 ),
    .ADR5(\cpu/current_state_0_1_1728 ),
    .ADR3(\cpu/current_state [2]),
    .ADR4(current_state_0),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[29]_0 ),
    .O(\cpu/AddrUnit/adder_out [29])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y43" ),
    .INIT ( 1'b0 ))
  \ledcontrol/LEDS_int_2  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_ledcontrol/LEDS_int_2/CLK ),
    .I(\ledcontrol/LEDS_int_2_dpot_1303 ),
    .O(LEDS_int_2),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y43" ),
    .INIT ( 64'hFFFFCCCC33330000 ))
  \ledcontrol/LEDS_int_2_dpot  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(LEDS_int_2),
    .ADR5(ValueOut_2),
    .ADR1(\ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 ),
    .O(\ledcontrol/LEDS_int_2_dpot_1303 )
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y43" ),
    .INIT ( 1'b0 ))
  \ledcontrol/LEDS_int_1  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_ledcontrol/LEDS_int_1/CLK ),
    .I(\ledcontrol/LEDS_int_1_dpot_1304 ),
    .O(LEDS_int_1),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y43" ),
    .INIT ( 64'hF0FFF000F0FFF000 ))
  \ledcontrol/LEDS_int_1_dpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(LEDS_int_1),
    .ADR2(ValueOut_1),
    .ADR3(\ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 ),
    .O(\ledcontrol/LEDS_int_1_dpot_1304 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y43" ),
    .INIT ( 64'h0800000008000000 ))
  \ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot  (
    .ADR5(1'b1),
    .ADR1(addr_bus[5]),
    .ADR0(current_state_1),
    .ADR3(current_state_0),
    .ADR2(\ledcontrol/N19 ),
    .ADR4(led_dev_sel1),
    .O(\ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 )
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y43" ),
    .INIT ( 1'b0 ))
  \ledcontrol/LEDS_int_0  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_ledcontrol/LEDS_int_0/CLK ),
    .I(\ledcontrol/LEDS_int_0_dpot_1311 ),
    .O(LEDS_int_0),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y43" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \ledcontrol/LEDS_int_0_dpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(LEDS_int_0),
    .ADR5(ValueOut_0),
    .ADR4(\ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 ),
    .O(\ledcontrol/LEDS_int_0_dpot_1311 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y44" ),
    .INIT ( 64'hFE04FE04FF05FA00 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int301  (
    .ADR0(current_state_0),
    .ADR2(\cpu/current_state [2]),
    .ADR5(current_state_1),
    .ADR1(\cpu/ExecUnit/alu_src2 [8]),
    .ADR4(\cpu/ExecUnit/reg_out1[8]_0 ),
    .ADR3(\cpu/ExecUnit/addres[8]_0 ),
    .O(\cpu/ExecUnit/alu_res [8])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y44" ),
    .INIT ( 64'hF1F1F1E0E0E0F1E0 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int321  (
    .ADR1(current_state_0),
    .ADR0(\cpu/current_state [2]),
    .ADR4(current_state_1),
    .ADR5(\cpu/ExecUnit/alu_src2 [9]),
    .ADR3(\cpu/ExecUnit/reg_out1 [9]),
    .ADR2(\cpu/ExecUnit/addres[9]_0 ),
    .O(\cpu/ExecUnit/alu_res [9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y27" ),
    .INIT ( 64'hFFFF0000FFFD0000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data133  (
    .ADR4(\cpu/AddrUnit/pc_out [11]),
    .ADR5(\cpu/IR[15] ),
    .ADR0(\cpu/IR[14] ),
    .ADR3(current_state_1),
    .ADR2(\cpu/current_state_2_3_1736 ),
    .ADR1(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [11])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y28" ),
    .INIT ( 64'hFF00FF00FE00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1210  (
    .ADR3(\cpu/AddrUnit/pc_out [10]),
    .ADR2(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR0(current_state_1),
    .ADR1(\cpu/current_state_2_3_1736 ),
    .ADR5(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [10])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y28" ),
    .INIT ( 64'hAAAAAAA8AAAAAAAA ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data141  (
    .ADR0(\cpu/AddrUnit/pc_out [12]),
    .ADR2(\cpu/IR[15] ),
    .ADR5(\cpu/IR[14] ),
    .ADR4(current_state_1),
    .ADR1(\cpu/current_state_2_3_1736 ),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [12])
  );
  X_BUF   \cpu/AddrUnit/pc_out[4]/cpu/AddrUnit/pc_out[4]_DMUX_Delay  (
    .I(\cpu/Mram__n01414 ),
    .O(\cpu/Mram__n01414_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_4  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_4/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_4/IN ),
    .O(\cpu/AddrUnit/pc_out [4]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 64'hFF73FF50FF73FF50 ))
  \cpu/Mmux_ld_pc11  (
    .ADR1(\cpu/IR[14] ),
    .ADR2(current_state_1),
    .ADR3(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .ADR4(\cpu/Mmux_next_state<0>13 ),
    .ADR5(1'b1),
    .O(\cpu/ld_pc )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 32'hAA50AA50 ))
  \cpu/Mram__n014141  (
    .ADR1(1'b1),
    .ADR2(current_state_1),
    .ADR3(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .ADR4(1'b1),
    .O(\cpu/Mram__n01414 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_3  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_3/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_3/IN ),
    .O(\cpu/AddrUnit/pc_out [3]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 64'hCCCCCCC8CCCCCCCC ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1271  (
    .ADR1(\cpu/AddrUnit/pc_out [4]),
    .ADR4(\cpu/IR[15] ),
    .ADR5(\cpu/IR[14] ),
    .ADR0(current_state_1),
    .ADR2(\cpu/current_state [2]),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_2  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_2/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_2/IN ),
    .O(\cpu/AddrUnit/pc_out [2]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 64'hFFFFFFFD00000000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1261  (
    .ADR5(\cpu/AddrUnit/pc_out [3]),
    .ADR2(\cpu/IR[15] ),
    .ADR0(\cpu/IR[14] ),
    .ADR1(current_state_1),
    .ADR4(\cpu/current_state [2]),
    .ADR3(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_1  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_1/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_1/IN ),
    .O(\cpu/AddrUnit/pc_out [1]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y29" ),
    .INIT ( 64'hF0F0F0F0F0E0F0F0 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1231  (
    .ADR2(\cpu/AddrUnit/pc_out [2]),
    .ADR3(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR1(current_state_1),
    .ADR5(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [2])
  );
  X_BUF   \cpu/AddrUnit/pc_out[8]/cpu/AddrUnit/pc_out[8]_AMUX_Delay  (
    .I(\cpu/AddrUnit/adder_out [4]),
    .O(\cpu/AddrUnit/adder_out[4]_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_8  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_8/CLK ),
    .I(\cpu/AddrUnit/adder_out [8]),
    .O(\cpu/AddrUnit/pc_out [8]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'hBBBB0000BBBF0004 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int311  (
    .ADR3(\cpu/current_state_1_1_1726 ),
    .ADR2(\cpu/current_state_2_1_1727 ),
    .ADR5(\cpu/current_state_0_1_1728 ),
    .ADR1(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .ADR4(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[8]_0 ),
    .O(\cpu/AddrUnit/adder_out [8])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_7  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_7/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_7/IN ),
    .O(\cpu/AddrUnit/pc_out [7]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'hFFFF0000FFEF0000 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1291  (
    .ADR4(\cpu/AddrUnit/pc_out [6]),
    .ADR3(\cpu/IR[15] ),
    .ADR2(\cpu/IR[14] ),
    .ADR0(current_state_1),
    .ADR5(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_6  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_6/CLK ),
    .I(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_6/IN ),
    .O(\cpu/AddrUnit/pc_out [6]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'hCCCCCCCCCCC8CCCC ))
  \cpu/AddrUnit/AddrAdder1/Mmux_data1281  (
    .ADR1(\cpu/AddrUnit/pc_out [5]),
    .ADR3(\cpu/IR[15] ),
    .ADR4(\cpu/IR[14] ),
    .ADR5(current_state_1),
    .ADR2(\cpu/current_state [2]),
    .ADR0(current_state_0),
    .O(\cpu/AddrUnit/AddrAdder1/data1 [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 1'b0 ))
  \cpu/AddrUnit/ProgramCounter/ValueOut_5  (
    .CE(\cpu/ld_pc ),
    .CLK(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_5/CLK ),
    .I(\cpu/AddrUnit/adder_out [5]),
    .O(\cpu/AddrUnit/pc_out [5]),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 64'hC0C0F0F0C0C0F0F0 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int281  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .ADR2(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[5]_0 ),
    .ADR5(1'b1),
    .O(\cpu/AddrUnit/adder_out [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y30" ),
    .INIT ( 32'hCC00FF00 ))
  \cpu/AddrUnit/AddrAdder1/Mmux_sum_int271  (
    .ADR0(1'b1),
    .ADR3(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[4]_0 ),
    .ADR4(\cpu/current_state [2]),
    .ADR1(current_state_0),
    .ADR2(1'b1),
    .O(\cpu/AddrUnit/adder_out [4])
  );
  X_BUF   \cpu/current_state[2]/cpu/current_state[2]_CMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[31] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[31]_0 )
  );
  X_BUF   \cpu/current_state[2]/cpu/current_state[2]_BMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[30] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[30]_0 )
  );
  X_BUF   \cpu/current_state[2]/cpu/current_state[2]_AMUX_Delay  (
    .I(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[29] ),
    .O(\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[29]_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y38" ),
    .INIT ( 1'b0 ))
  \cpu/current_state_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cpu/current_state_2/CLK ),
    .I(\cpu/current_state_2_glue_set_1800 ),
    .O(\cpu/current_state [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y38" ),
    .INIT ( 64'hFFFF1F0FFFFFB1A0 ))
  \cpu/current_state_2_glue_set  (
    .ADR2(current_state_0),
    .ADR0(current_state_1),
    .ADR1(\cpu/IR[14] ),
    .ADR5(\cpu/current_state [2]),
    .ADR3(\cpu/Mmux_next_state<0>13 ),
    .ADR4(rst),
    .O(\cpu/current_state_2_glue_set_1800 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y38" ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>  (
    .CI(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy[28] ),
    .CYINIT(1'b0),
    .CO({\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_CO[3]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_CO[2]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_CO[1]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_CO[0]_UNCONNECTED }),
    .DI({\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_DI[3]_UNCONNECTED , 
\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_DI[2]_UNCONNECTED , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>/DI<1> , 
\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>/DI<0> }),
    .O({\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_O[3]_UNCONNECTED , 
\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[31] , \cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[30] , 
\cpu/AddrUnit/AddrAdder1/data1[31]_data2[31]_add_4_OUT[29] }),
    .S({\NLW_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>_S[3]_UNCONNECTED , 
\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[31] , \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[30] , 
\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[29] })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y38" ),
    .INIT ( 64'h66555555AAAAAAAA ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<31>  (
    .ADR2(1'b1),
    .ADR3(\cpu/addr_mux2sel [2]),
    .ADR4(\cpu/IR[14] ),
    .ADR1(\cpu/IR[15] ),
    .ADR5(\cpu/AddrUnit/pc_out [31]),
    .ADR0(\cpu/AddrUnit/AddrAdder1/data2[10]_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[31] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y38" ),
    .INIT ( 64'h39393333CCCCCCCC ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<30>  (
    .ADR3(1'b1),
    .ADR4(\cpu/addr_mux2sel [2]),
    .ADR0(\cpu/IR[14] ),
    .ADR2(\cpu/IR[15] ),
    .ADR5(\cpu/AddrUnit/pc_out [30]),
    .ADR1(\cpu/AddrUnit/AddrAdder1/data2[10]_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[30] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y38" ),
    .INIT ( 64'h55F55555AA0AAAAA ))
  \cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut<29>  (
    .ADR1(1'b1),
    .ADR4(\cpu/addr_mux2sel [2]),
    .ADR2(\cpu/IR[14] ),
    .ADR3(\cpu/IR[15] ),
    .ADR0(\cpu/AddrUnit/pc_out [29]),
    .ADR5(\cpu/AddrUnit/AddrAdder1/data2[10]_0 ),
    .O(\cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_lut[29] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y42" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out111  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N43 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N44 ),
    .O(\cpu/ExecUnit/mdr_src [4]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 64'hCCCCCCCCAAFFAA00 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out111_F  (
    .ADR2(1'b1),
    .ADR5(\cpu/current_state [2]),
    .ADR3(current_state_1),
    .ADR4(\cpu/ExecUnit/reg_out1[4]_0 ),
    .ADR0(ValueOut_4),
    .ADR1(\cpu/ExecUnit/addres[4]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N43 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_4  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_4/CLK ),
    .I(\cpu/ExecUnit/mdr_src [4]),
    .O(ValueOut_4),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 64'h0CFF00FF0C0C0C0C ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out111_G  (
    .ADR0(1'b1),
    .ADR2(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR1(LEDS_int_4),
    .ADR4(addr_bus[2]),
    .ADR5(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR3(addr_bus[1]),
    .O(\cpu/ExecUnit/MDRsrcsel/N44 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y42" ),
    .INIT ( 64'hFF05FE04FA00FE04 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int221  (
    .ADR2(current_state_0),
    .ADR0(\cpu/current_state [2]),
    .ADR4(current_state_1),
    .ADR5(ValueOut_4),
    .ADR1(\cpu/ExecUnit/reg_out1[4]_0 ),
    .ADR3(\cpu/ExecUnit/addres[4]_0 ),
    .O(\cpu/ExecUnit/alu_res [4])
  );
  X_BUF   \cpu/ExecUnit/reg_out1[5]/cpu/ExecUnit/reg_out1[5]_DMUX_Delay  (
    .I(\cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1_O ),
    .O(\cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1_O_0 )
  );
  X_BUF   \cpu/ExecUnit/reg_out1[5]/cpu/ExecUnit/reg_out1[5]_CMUX_Delay  (
    .I(\cpu/ExecUnit/reg_out1 [4]),
    .O(\cpu/ExecUnit/reg_out1[4]_0 )
  );
  X_BUF   \cpu/ExecUnit/reg_out1[5]/cpu/ExecUnit/reg_out1[5]_BMUX_Delay  (
    .I(\cpu/ExecUnit/reg_out1 [2]),
    .O(\cpu/ExecUnit/reg_out1[2]_0 )
  );
  X_BUF   \cpu/ExecUnit/reg_out1[5]/cpu/ExecUnit/reg_out1[5]_AMUX_Delay  (
    .I(\cpu/ExecUnit/reg_out1 [0]),
    .O(\cpu/ExecUnit/reg_out1[0]_0 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X12Y46" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/CLK ),
    .I(1'b0),
    .O(\NLW_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1_O_UNCONNECTED ),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X12Y46" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/CLK ),
    .I(1'b0),
    .O(\cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1_O ),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X12Y46" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/IN ),
    .O(\cpu/ExecUnit/reg_out1 [5]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X12Y46" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/IN ),
    .O(\cpu/ExecUnit/reg_out1 [4]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X12Y46" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/IN ),
    .O(\cpu/ExecUnit/reg_out1 [3]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X12Y46" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/IN ),
    .O(\cpu/ExecUnit/reg_out1 [2]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X12Y46" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/IN ),
    .O(\cpu/ExecUnit/reg_out1 [1]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X12Y46" ),
    .INIT ( 32'h00000000 ))
  \cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA  (
    .RADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR0 ),
    .RADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR1 ),
    .RADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR2 ),
    .RADR3(1'b0),
    .RADR4(1'b0),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/CLK ),
    .I(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/IN ),
    .O(\cpu/ExecUnit/reg_out1 [0]),
    .WADR0(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR0 ),
    .WADR1(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR1 ),
    .WADR2(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR2 ),
    .WADR3(1'b0),
    .WADR4(1'b0),
    .WE(\cpu/_n0180 [0])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y47" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out121  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N33 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N34 ),
    .O(\cpu/ExecUnit/mdr_src [5]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y47" ),
    .INIT ( 64'hAAAAAAAACCFFCC00 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out121_F  (
    .ADR2(1'b1),
    .ADR5(\cpu/current_state [2]),
    .ADR3(current_state_1),
    .ADR4(\cpu/ExecUnit/reg_out1 [5]),
    .ADR1(ValueOut_5),
    .ADR0(\cpu/ExecUnit/addres[5]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N33 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y47" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_5  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_5/CLK ),
    .I(\cpu/ExecUnit/mdr_src [5]),
    .O(ValueOut_5),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y47" ),
    .INIT ( 64'hFFFFBABACFCFCACA ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out121_G  (
    .ADR3(1'b1),
    .ADR2(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR5(addr_bus[1]),
    .ADR1(addr_bus[2]),
    .ADR0(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR4(LEDS_int_5),
    .O(\cpu/ExecUnit/MDRsrcsel/N34 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y47" ),
    .INIT ( 64'hCCCCCCCCD8D8DD88 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int161  (
    .ADR5(current_state_0),
    .ADR0(\cpu/current_state [2]),
    .ADR4(current_state_1),
    .ADR2(ValueOut_1),
    .ADR3(\cpu/ExecUnit/reg_out1 [1]),
    .ADR1(\cpu/ExecUnit/addres[1]_0 ),
    .O(\cpu/ExecUnit/alu_res [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y47" ),
    .INIT ( 64'hFFFC0300FEFE0202 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int241  (
    .ADR1(current_state_0),
    .ADR2(\cpu/current_state [2]),
    .ADR5(current_state_1),
    .ADR3(ValueOut_5),
    .ADR0(\cpu/ExecUnit/reg_out1 [5]),
    .ADR4(\cpu/ExecUnit/addres[5]_0 ),
    .O(\cpu/ExecUnit/alu_res [5])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y48" ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out101  (
    .IA(\cpu/ExecUnit/MDRsrcsel/N37 ),
    .IB(\cpu/ExecUnit/MDRsrcsel/N38 ),
    .O(\cpu/ExecUnit/mdr_src [3]),
    .SEL(current_state_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y48" ),
    .INIT ( 64'hAAAAAAAACFC0CFC0 ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out101_F  (
    .ADR4(1'b1),
    .ADR5(\cpu/current_state [2]),
    .ADR2(current_state_1),
    .ADR3(\cpu/ExecUnit/reg_out1 [3]),
    .ADR1(ValueOut_3),
    .ADR0(\cpu/ExecUnit/addres[3]_0 ),
    .O(\cpu/ExecUnit/MDRsrcsel/N37 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y48" ),
    .INIT ( 1'b0 ))
  \cpu/ExecUnit/MDR/ValueOut_3  (
    .CE(\cpu/ld_mdr ),
    .CLK(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_3/CLK ),
    .I(\cpu/ExecUnit/mdr_src [3]),
    .O(ValueOut_3),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y48" ),
    .INIT ( 64'hFB00FAFAFB00FAFA ))
  \cpu/ExecUnit/MDRsrcsel/Mmux_data_out101_G  (
    .ADR5(1'b1),
    .ADR3(addr_bus[2]),
    .ADR0(LEDS_int_3),
    .ADR2(\GND_3_o_addr_bus[31]_equal_4_o ),
    .ADR4(\GND_3_o_addr_bus[31]_equal_1_o<31>1 ),
    .ADR1(addr_bus[1]),
    .O(\cpu/ExecUnit/MDRsrcsel/N38 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y48" ),
    .INIT ( 64'hFEFE0404FFFA0500 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int21  (
    .ADR0(current_state_0),
    .ADR2(\cpu/current_state [2]),
    .ADR5(current_state_1),
    .ADR1(ValueOut_0),
    .ADR3(\cpu/ExecUnit/reg_out1[0]_0 ),
    .ADR4(\cpu/ExecUnit/ALUunit/addres[0]_0 ),
    .O(\cpu/ExecUnit/alu_res [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y48" ),
    .INIT ( 64'hFFFA0500FEFE0404 ))
  \cpu/ExecUnit/ALUunit/Mmux_result_int201  (
    .ADR2(current_state_0),
    .ADR0(\cpu/current_state [2]),
    .ADR5(current_state_1),
    .ADR3(ValueOut_3),
    .ADR1(\cpu/ExecUnit/reg_out1 [3]),
    .ADR4(\cpu/ExecUnit/addres[3]_0 ),
    .O(\cpu/ExecUnit/alu_res [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y49" ),
    .INIT ( 1'b0 ))
  \ledcontrol/LEDS_int_6  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_ledcontrol/LEDS_int_6/CLK ),
    .I(\ledcontrol/LEDS_int_6_dpot_1598 ),
    .O(LEDS_int_6),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y49" ),
    .INIT ( 64'hF0FFF0FFF000F000 ))
  \ledcontrol/LEDS_int_6_dpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR5(LEDS_int_6),
    .ADR2(ValueOut_6),
    .ADR3(\ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 ),
    .O(\ledcontrol/LEDS_int_6_dpot_1598 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y49" ),
    .INIT ( 1'b0 ))
  \ledcontrol/LEDS_int_5  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_ledcontrol/LEDS_int_5/CLK ),
    .I(\ledcontrol/LEDS_int_5_dpot_1605 ),
    .O(LEDS_int_5),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y49" ),
    .INIT ( 64'hFFAA00AAFFAA00AA ))
  \ledcontrol/LEDS_int_5_dpot  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(LEDS_int_5),
    .ADR4(ValueOut_5),
    .ADR3(\ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 ),
    .O(\ledcontrol/LEDS_int_5_dpot_1605 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y49" ),
    .INIT ( 1'b0 ))
  \ledcontrol/LEDS_int_4  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_ledcontrol/LEDS_int_4/CLK ),
    .I(\ledcontrol/LEDS_int_4_dpot_1606 ),
    .O(LEDS_int_4),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y49" ),
    .INIT ( 64'hFF00F0F0FF00F0F0 ))
  \ledcontrol/LEDS_int_4_dpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR2(LEDS_int_4),
    .ADR3(ValueOut_4),
    .ADR4(\ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 ),
    .O(\ledcontrol/LEDS_int_4_dpot_1606 )
  );
  X_SFF #(
    .LOC ( "SLICE_X12Y49" ),
    .INIT ( 1'b0 ))
  \ledcontrol/LEDS_int_3  (
    .CE(bus_sel),
    .CLK(\NlwBufferSignal_ledcontrol/LEDS_int_3/CLK ),
    .I(\ledcontrol/LEDS_int_3_dpot_1614 ),
    .O(LEDS_int_3),
    .SRST(rst),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y49" ),
    .INIT ( 64'hFF00FFFFFF000000 ))
  \ledcontrol/LEDS_int_3_dpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(LEDS_int_3),
    .ADR3(ValueOut_3),
    .ADR4(\ledcontrol/byte_sel[1]_rw_AND_38_o<1>_rstpot_1719 ),
    .O(\ledcontrol/LEDS_int_3_dpot_1614 )
  );
  X_BUF   \NlwBufferBlock_CLK_BUFGP/BUFG/IN  (
    .I(\CLK_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_CLK_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<0>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [1]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<1>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [2]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<2>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [3]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<3>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [4]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<4>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<0>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [5]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<1>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [6]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<2>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [7]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<3>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [8]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<8>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<0>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [9]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<1>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [10]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<2>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [11]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<3>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [12]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<12>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<0>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [13]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<1>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [14]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<2>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [15]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<3>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [16]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<16>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<0>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [17]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<1>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [18]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<2>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [19]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<3>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [20]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<20>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<0>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [21]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<1>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [22]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<2>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [23]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<3>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [24]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<24>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<0>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [25]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<1>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [26]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<2>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [27]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<3>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [28]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_cy<28>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<1>  (
    .I(\cpu/ExecUnit/reg_out1 [1]),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<2>  (
    .I(\cpu/ExecUnit/reg_out1[2]_0 ),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<3>  (
    .I(\cpu/ExecUnit/reg_out1 [3]),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<3>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<0>  (
    .I(\cpu/ExecUnit/reg_out1[4]_0 ),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<1>  (
    .I(\cpu/ExecUnit/reg_out1 [5]),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<2>  (
    .I(\cpu/ExecUnit/reg_out1[6]_0 ),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<3>  (
    .I(\cpu/ExecUnit/reg_out1 [7]),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_cy<7>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<0>  (
    .I(\cpu/ExecUnit/reg_out1[8]_0 ),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<1>  (
    .I(\cpu/ExecUnit/reg_out1 [9]),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<2>  (
    .I(\cpu/ExecUnit/reg_out1[10]_0 ),
    .O(\NlwBufferSignal_cpu/ExecUnit/ALUunit/Madd_addres_Madd_xor<11>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_LED_7_OBUF/I  (
    .I(LEDS_int_7),
    .O(\NlwBufferSignal_LED_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED_0_OBUF/I  (
    .I(LEDS_int_0),
    .O(\NlwBufferSignal_LED_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED_1_OBUF/I  (
    .I(LEDS_int_1),
    .O(\NlwBufferSignal_LED_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED_2_OBUF/I  (
    .I(LEDS_int_2),
    .O(\NlwBufferSignal_LED_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED_3_OBUF/I  (
    .I(LEDS_int_3),
    .O(\NlwBufferSignal_LED_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED_4_OBUF/I  (
    .I(LEDS_int_4),
    .O(\NlwBufferSignal_LED_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED_5_OBUF/I  (
    .I(LEDS_int_5),
    .O(\NlwBufferSignal_LED_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_LED_6_OBUF/I  (
    .I(LEDS_int_6),
    .O(\NlwBufferSignal_LED_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_8/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_8/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_8/IN  (
    .I(\cpu/AddrUnit/adder_out [8]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_8/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_7/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_7/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_6/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_6/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_6/IN  (
    .I(\cpu/AddrUnit/adder_out [6]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_6/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_5/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_5/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_5/IN  (
    .I(\cpu/AddrUnit/adder_out [5]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_5/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_15/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_15/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_15/IN  (
    .I(\data_bus_in[15] ),
    .O(\NlwBufferSignal_cpu/IR_15/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_0_3/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_0_3/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_0_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_0_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_0_2/IN  (
    .I(\cpu/next_state [0]),
    .O(\NlwBufferSignal_cpu/current_state_0_2/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_0_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_0_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_0_1/IN  (
    .I(\cpu/next_state [0]),
    .O(\NlwBufferSignal_cpu/current_state_0_1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_11/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_11/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMD/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/IN  (
    .I(\cpu/ExecUnit/alu_res [11]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/IN  (
    .I(\cpu/ExecUnit/alu_res [10]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMC/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/IN  (
    .I(\cpu/ExecUnit/alu_res [9]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/IN  (
    .I(\cpu/ExecUnit/alu_res [8]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMB/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/IN  (
    .I(\cpu/ExecUnit/alu_res [7]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/IN  (
    .I(\cpu/ExecUnit/alu_res [6]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile2_RAMA/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_7/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_7/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_14_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_14_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_14_2/IN  (
    .I(\data_bus_in[14] ),
    .O(\NlwBufferSignal_cpu/IR_14_2/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_14_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_14_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_14_1/IN  (
    .I(\data_bus_in[14] ),
    .O(\NlwBufferSignal_cpu/IR_14_1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_1/IN  (
    .I(\cpu/ld_mdr ),
    .O(\NlwBufferSignal_cpu/current_state_1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_0/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_0/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_0/IN  (
    .I(\cpu/next_state [0]),
    .O(\NlwBufferSignal_cpu/current_state_0/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_31/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_31/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_31/IN  (
    .I(\cpu/AddrUnit/adder_out [31]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_31/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_30/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_30/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_30/IN  (
    .I(\cpu/AddrUnit/adder_out [30]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_30/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_29/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_29/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_29/IN  (
    .I(\cpu/AddrUnit/adder_out [29]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_29/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_1_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_1_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_1_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_1_1/IN  (
    .I(\cpu/ld_mdr ),
    .O(\NlwBufferSignal_cpu/current_state_1_1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_8/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_8/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_7/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_7/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_6/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_6/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_5/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ledcontrol/LEDS_int_7/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_ledcontrol/LEDS_int_7/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_4/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_4/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_4/IN  (
    .I(\cpu/AddrUnit/adder_out[4]_0 ),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_4/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_3/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_3/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_3/IN  (
    .I(\cpu/AddrUnit/adder_out [3]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_3/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_2/IN  (
    .I(\cpu/AddrUnit/adder_out [2]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_2/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_1/IN  (
    .I(\cpu/AddrUnit/adder_out [1]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_4/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_4/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_3/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_3/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_2_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_2_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_2_4/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_2_4/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_2_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_2_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_2_2/IN  (
    .I(\cpu/current_state_2_glue_set_1800 ),
    .O(\NlwBufferSignal_cpu/current_state_2_2/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_2_3/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_2_3/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_2_3/IN  (
    .I(\cpu/current_state_2_glue_set_1800 ),
    .O(\NlwBufferSignal_cpu/current_state_2_3/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_15_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_15_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_20/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_20/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_19/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_19/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_19/IN  (
    .I(\cpu/AddrUnit/adder_out [19]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_19/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_18/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_18/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_18/IN  (
    .I(\cpu/AddrUnit/adder_out [18]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_18/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_17/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_17/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_24/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_24/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_24/IN  (
    .I(\cpu/AddrUnit/adder_out [24]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_24/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_23/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_23/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_23/IN  (
    .I(\cpu/AddrUnit/adder_out [23]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_23/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_22/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_22/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_21/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_21/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_28/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_28/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_27/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_27/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_26/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_26/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_26/IN  (
    .I(\cpu/AddrUnit/adder_out [26]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_26/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_25/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_25/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_25/IN  (
    .I(\cpu/AddrUnit/adder_out [25]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_25/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_14/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_14/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_13/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_13/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_12/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_12/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/IR_11/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/IR_11/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_8/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_8/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_9/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_9/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_6/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_6/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_10/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_10/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_0/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_0/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_16/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_16/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_16/IN  (
    .I(\cpu/AddrUnit/adder_out [16]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_16/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_15/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_15/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_14/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_14/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_14/IN  (
    .I(\cpu/AddrUnit/adder_out [14]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_14/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_13/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_13/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_13/IN  (
    .I(\cpu/AddrUnit/adder_out [13]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_13/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_16/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_16/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_15/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_15/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_15/IN  (
    .I(\cpu/AddrUnit/adder_out [15]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_15/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_14/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_14/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_13/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_13/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_12/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_12/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_11/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_11/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_10/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_10/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_9/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_9/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_9/IN  (
    .I(\cpu/AddrUnit/adder_out [9]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_9/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_12/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_12/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_12/IN  (
    .I(\cpu/AddrUnit/adder_out [12]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_12/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_11/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_11/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_11/IN  (
    .I(\cpu/AddrUnit/adder_out [11]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_11/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_10/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_10/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_10/IN  (
    .I(\cpu/AddrUnit/adder_out [10]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_10/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_9/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_9/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_20/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_20/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_20/IN  (
    .I(\cpu/AddrUnit/adder_out [20]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_20/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_19/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_19/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_18/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_18/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_17/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_17/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_17/IN  (
    .I(\cpu/AddrUnit/adder_out [17]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_17/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_24/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_24/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_23/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_23/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_22/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_22/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_22/IN  (
    .I(\cpu/AddrUnit/adder_out [22]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_22/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_21/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_21/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_21/IN  (
    .I(\cpu/AddrUnit/adder_out [21]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_21/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_28/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_28/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_28/IN  (
    .I(\cpu/AddrUnit/adder_out [28]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_28/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_27/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_27/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_27/IN  (
    .I(\cpu/AddrUnit/adder_out [27]),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_27/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_26/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_26/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/MAR/ValueOut_25/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/MAR/ValueOut_25/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_31/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_31/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_30/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_30/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_29/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_29/CLK )
  );
  X_BUF   \NlwBufferBlock_ledcontrol/LEDS_int_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_ledcontrol/LEDS_int_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ledcontrol/LEDS_int_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_ledcontrol/LEDS_int_1/CLK )
  );
  X_BUF   \NlwBufferBlock_ledcontrol/LEDS_int_0/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_ledcontrol/LEDS_int_0/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_4/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_4/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_4/IN  (
    .I(\cpu/AddrUnit/adder_out[4]_0 ),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_4/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_3/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_3/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_3/IN  (
    .I(\cpu/AddrUnit/adder_out [3]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_3/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_2/IN  (
    .I(\cpu/AddrUnit/adder_out [2]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_2/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_1/IN  (
    .I(\cpu/AddrUnit/adder_out [1]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_8/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_8/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_7/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_7/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_7/IN  (
    .I(\cpu/AddrUnit/adder_out [7]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_7/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_6/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_6/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_6/IN  (
    .I(\cpu/AddrUnit/adder_out [6]),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_6/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/ProgramCounter/ValueOut_5/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/AddrUnit/ProgramCounter/ValueOut_5/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/current_state_2/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/current_state_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>/DI<0>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [29]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>/DI<1>  (
    .I(\cpu/AddrUnit/AddrAdder1/data1 [30]),
    .O(\NlwBufferSignal_cpu/AddrUnit/AddrAdder1/Madd_data1[31]_data2[31]_add_4_OUT_xor<31>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_4/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_4/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMD/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/IN  (
    .I(\cpu/ExecUnit/alu_res [5]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/IN  (
    .I(\cpu/ExecUnit/alu_res [4]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMC/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/IN  (
    .I(\cpu/ExecUnit/alu_res [3]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/IN  (
    .I(\cpu/ExecUnit/alu_res [2]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMB/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/IN  (
    .I(\cpu/ExecUnit/alu_res [1]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA_D1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/RADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/IN  (
    .I(\cpu/ExecUnit/alu_res [0]),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/IN )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR0  (
    .I(\cpu/IR[8] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR0 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR1  (
    .I(\cpu/IR[13] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR1 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR2  (
    .I(\cpu/IR[12] ),
    .O(\NlwBufferSignal_cpu/ExecUnit/GPRFile/Mram_RegFile1_RAMA/WADR2 )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_5/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_5/CLK )
  );
  X_BUF   \NlwBufferBlock_cpu/ExecUnit/MDR/ValueOut_3/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_cpu/ExecUnit/MDR/ValueOut_3/CLK )
  );
  X_BUF   \NlwBufferBlock_ledcontrol/LEDS_int_6/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_ledcontrol/LEDS_int_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ledcontrol/LEDS_int_5/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_ledcontrol/LEDS_int_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ledcontrol/LEDS_int_4/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_ledcontrol/LEDS_int_4/CLK )
  );
  X_BUF   \NlwBufferBlock_ledcontrol/LEDS_int_3/CLK  (
    .I(CLK_BUFGP),
    .O(\NlwBufferSignal_ledcontrol/LEDS_int_3/CLK )
  );
  X_ZERO   NlwBlock_top_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_top_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

