----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2016 17:57:57
-- Design Name: 
-- Module Name: execution_unit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity execution_unit is
    Port ( clk, rst : in STD_LOGIC;
    
            -- data bus interface
           data_bus_in : in STD_LOGIC_VECTOR (15 downto 0);
           data_bus_out : out STD_LOGIC_VECTOR (15 downto 0);
           
           -- mdr control signals.
           mdr_src_sel : in STD_LOGIC; -- 0 => ALU result, 1 => data bus
           mdr_ld : in STD_LOGIC; -- LD MDR
           
           -- reg control signals
           reg_wr_src_sel : in STD_LOGIC; -- 0 => ALU result, 1 => MDR
           reg_wr_sel : in STD_LOGIC_VECTOR (2 downto 0); -- what register to write to
           reg_wr_en : in STD_LOGIC; -- LD REG
           reg_out1_sel : in STD_LOGIC_VECTOR (2 downto 0); -- Reg output 1 selector
           reg_out2_sel : in STD_LOGIC_VECTOR (2 downto 0); -- Reg output 2 selector
           
           -- alu control signals
           alu_src2_sel : in STD_LOGIC_VECTOR (1 downto 0); -- 0 => reg file, 1 => flags, 2=> temp_reg, 3 => MDR
           alu_funct : in STD_LOGIC_VECTOR (3 downto 0); -- See ALU
           
           -- flag register control signals
           flags_ld_bus : in STD_LOGIC; -- LD FLAGS from ALU src 2 bus
           flags_ld_alu : in STD_LOGIC; -- LD FLAGS from ALU operation
           flags_out : out STD_LOGIC_VECTOR (15 downto 0); -- status register contents
           
           -- temporary register control signals
           temp_ld : in STD_LOGIC; -- LD TEMPORARY
          
          -- offset selector control signals
           addr_offset_sel : in STD_LOGIC_VECTOR (2 downto 0); -- 0 => MDR, 1 => TEMP&MDR, 2=> RegB, 3 => 4 bit offset, 4 => "8" 5 => 7 bit offset
           addr_offset_out : out STD_LOGIC_VECTOR (31 downto 0); -- output to address register
           branch_cond_sel : in STD_LOGIC_VECTOR (3 downto 0); -- branch condition selector: matched to opcodes
           branch_cond_true : out STD_LOGIC; -- 1 if branch condition met
           
           -- IR in
           IRin : in STD_LOGIC_VECTOR (15 downto 0));
end execution_unit;

architecture structural of execution_unit is
component alu is
    Port ( srcA : in STD_LOGIC_VECTOR (15 downto 0);
           srcB : in STD_LOGIC_VECTOR (15 downto 0);
           funct : in STD_LOGIC_VECTOR (3 downto 0);
           result : out STD_LOGIC_VECTOR (15 downto 0);
           carry_in : in STD_LOGIC;
           carry_out : out STD_LOGIC;
           zero_out : out STD_LOGIC;
           sign_out : out STD_LOGIC;
           overflow_out : out STD_LOGIC);
end component;

component flags_reg is
    Port ( clk, rst : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (15 downto 0);
           data_out : out STD_LOGIC_VECTOR (15 downto 0);
           carry_in : in STD_LOGIC;
           sign_in : in STD_LOGIC;
           zero_in : in STD_LOGIC;
           ov_in : in STD_LOGIC;
           ld_from_bus : in STD_LOGIC;
           ld_from_alu : in STD_LOGIC);
end component;

component regfile8x16 is
    Port ( clk : in STD_LOGIC; -- jellybean
           rst : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (15 downto 0); -- data to write
           wr_sel : in STD_LOGIC_VECTOR (2 downto 0); -- register to write to
           wr_en : in STD_LOGIC; -- if '1', data written on next pos edge
           out1 : out STD_LOGIC_VECTOR (15 downto 0); -- output with r selected by out1sel
           out1_sel : in STD_LOGIC_VECTOR (2 downto 0);
           out2 : out STD_LOGIC_VECTOR (15 downto 0); -- output of r selected by out2sel
           out2_sel : in STD_LOGIC_VECTOR (2 downto 0));
end component;

component mux2to1 is
    Port ( data0 : in STD_LOGIC_VECTOR;
           data1 : in STD_LOGIC_VECTOR;
           sel : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR );
end component;

component mux4to1 is
    Port ( data0 : in STD_LOGIC_VECTOR;
           data1 : in STD_LOGIC_VECTOR;
           data2 : in STD_LOGIC_VECTOR;
           data3 : in STD_LOGIC_VECTOR;
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           data_out : out STD_LOGIC_VECTOR);
end component;

component mux8to1 is
    Port ( data0 : in STD_LOGIC_VECTOR;
           data1 : in STD_LOGIC_VECTOR;
           data2 : in STD_LOGIC_VECTOR;
           data3 : in STD_LOGIC_VECTOR;
           data4 : in STD_LOGIC_VECTOR;
           data5 : in STD_LOGIC_VECTOR;
           data6 : in STD_LOGIC_VECTOR;
           data7 : in STD_LOGIC_VECTOR;
           sel : in STD_LOGIC_VECTOR (2 downto 0);
           data_out : out STD_LOGIC_VECTOR);
end component;

component regRE is
    generic (width     : integer := 32;
             reset_val : std_logic_vector := x"00000000");
    port (clk, rst, WEn : in std_logic; -- clock signal, synchronous reset, write enable
          ValueIn        : in std_logic_vector(width - 1 downto 0); -- data to write
          ValueOut       : out std_logic_vector(width - 1 downto 0)); -- data read
end component;

component offsetMux is
    Port ( MDRin : in STD_LOGIC_VECTOR (15 downto 0);
           TempIn : in STD_LOGIC_VECTOR (15 downto 0);
           RegIn : in STD_LOGIC_VECTOR (15 downto 0);
           IR4bitin: in STD_LOGIC_VECTOR (3 downto 0);
           IR7bitin : in STD_LOGIC_VECTOR (6 downto 0);
           IR9bitin: in STD_LOGIC_VECTOR (8 downto 0);
           Sel : in STD_LOGIC_VECTOR(2 downto 0);
           offsetOut : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component BranchCond is
    Port ( flags_reg_in : in STD_LOGIC_VECTOR (15 downto 0);
           cond_sel : in STD_LOGIC_VECTOR (3 downto 0);
           cond_true : out STD_LOGIC);
end component;

-- start of signal declerations
signal reg_wr_src : std_logic_vector(15 downto 0);
signal reg_out1, reg_out2 : std_logic_vector(15 downto 0);
signal alu_src2 : std_logic_vector(15 downto 0);
signal alu_res  : std_logic_vector(15 downto 0);

signal flags_carry, alu_sign, alu_carry, alu_ov, alu_zero : std_logic;

signal mdr_src, mdr_val : std_logic_vector(15 downto 0);

signal flags_val_int, temp_val : std_logic_vector(15 downto 0);

signal IR4bitoff : std_logic_vector(3 downto 0);
signal IR7bitoff : std_logic_vector(6 downto 0);
signal IR9bitoff : std_logic_vector(8 downto 0);

begin
    IR4bitoff <= IRin(5 downto 2);
    IR7bitoff <= IRin(6 downto 0);
    IR9bitoff <= IRin(8 downto 0);
    
    flags_carry <= flags_val_int(2);
    flags_out <= flags_val_int;
ALUunit: alu port map(
        srcA => reg_out1,
        srcB => alu_src2,
        funct => alu_funct,
        result => alu_res,
        carry_in => flags_carry,
        carry_out => alu_carry,
        zero_out => alu_zero,
        sign_out => alu_sign,
        overflow_out => alu_ov);

ALUsrc2sel: mux4to1 port map (
            data0 => reg_out2,
            data1 => flags_val_int,
            data2 => temp_val,
            data3 => mdr_val,
            sel => alu_src2_sel,
            data_out => alu_src2);

GPRsrcsel: mux2to1 port map (
            data0 => alu_res,
            data1 => MDR_val,
            sel => reg_wr_src_sel,
            data_out => reg_wr_src);
           
GPRFile: regfile8x16 port map (
          clk => clk,
          rst => rst, 
          data_in => reg_wr_src,
          wr_sel => reg_wr_sel,
          wr_en => reg_wr_en,
          out1 => reg_out1,
          out1_sel => reg_out1_sel,
          out2 => reg_out2,
          out2_sel => reg_out2_sel);
          
MDRsrcsel: mux2to1 port map (
          data0 => alu_res,
          data1 => data_bus_in,
          sel => MDR_src_sel,
          data_out => MDR_src);           

MDR: regRE generic map (
          width => 16,
          reset_val => x"0000")
          port map (
          clk => clk,
          rst => '0', -- non resetabble
          Wen => mdr_ld,
          ValueIn => MDR_src,
          ValueOut => MDR_val);

MDR_data_bus: data_bus_out <= MDR_val;

TempReg: regRE generic map (
          width => 16,
          reset_val => x"0000")
          port map (
          clk => clk,
          rst => rst,
          Wen => temp_ld,
          ValueIn => alu_src2,
          ValueOut => temp_val);
          
FlagsReg: flags_reg port map (
          clk => clk,
          rst => rst,
          data_in => alu_src2,
          data_out => flags_val_int,
          carry_in => alu_carry,
          sign_in => alu_sign,
          zero_in => alu_zero,
          ov_in => alu_ov,
          ld_from_bus => flags_ld_bus,
          ld_from_alu => flags_ld_alu);

AddrOffsetMux: offsetMux port map (
             MDRin => MDR_val,
             TempIn => temp_val,
             RegIn => reg_out2,
             IR4bitin => IR4bitoff,
             IR7bitin => IR7bitoff,
             IR9bitin => IR9bitoff,
             Sel => addr_offset_sel,
             offsetOut => addr_offset_out);

BranchCondCheck: BranchCond port map (
            flags_reg_in => flags_val_int,
            cond_sel => branch_cond_sel,
            cond_true => branch_cond_true);

end structural;
