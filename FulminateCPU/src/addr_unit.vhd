----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2016 19:49:22
-- Design Name: 
-- Module Name: addr_unit - Behavioral
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

entity addr_unit is
    Port ( clk, rst     : std_logic; -- jellybean
            -- data from execution unit:
           ex_data_through : in STD_LOGIC_VECTOR (31 downto 0);
           -- external addr bus:
           ext_addr_bus : out STD_LOGIC_VECTOR (31 downto 0);
           -- offset (from IR) in
           offset_in : in STD_LOGIC_VECTOR(31 downto 0);
           -- control signals:
           mux1sel : in STD_LOGIC; -- mux 1 sel
           mux2sel : in STD_LOGIC_VECTOR (2 downto 0); -- mux 2 sel
           bypass_en : in STD_LOGIC; -- bypass adder
           ld_pc : in STD_LOGIC; -- load pc
           ld_mar : in STD_LOGIC; -- load mar
           ld_areg : in STD_LOGIC; -- load areg
           areg_wr_sel : in STD_LOGIC_VECTOR (1 downto 0); -- select areg write reg
           areg_rd_sel : in STD_LOGIC_VECTOR (1 downto 0)); -- select areg read reg
end addr_unit;

architecture Structural of addr_unit is
component regRE is -- rising edge register
    generic (width     : integer := 32;
             reset_val : std_logic_vector := x"00000000");
    port (clk, rst, WEn : in std_logic; -- clock signal, synchronous reset, write enable
          ValueIn        : in std_logic_vector(width - 1 downto 0); -- data to write
          ValueOut       : out std_logic_vector(width - 1 downto 0)); -- data read
end component;

component AddrRegFile is -- address register file
    Port ( clk : in STD_LOGIC;
           WrSel : in STD_LOGIC_VECTOR (1 downto 0);
           WrData : in STD_LOGIC_VECTOR (31 downto 0);
           OutSel : in STD_LOGIC_VECTOR (1 downto 0);
           OutData : out STD_LOGIC_VECTOR (31 downto 0);
           WrEn : in STD_LOGIC);
end component;

component AddrAdder is -- address adder
    Port ( Mux1Sel : in STD_LOGIC;
           Mux2Sel : in STD_LOGIC_VECTOR (2 downto 0);
           PCIn : in STD_LOGIC_VECTOR (31 downto 0);
           RegIn : in STD_LOGIC_VECTOR (31 downto 0);
           ExecDataIn: in STD_LOGIC_VECTOR(31 downto 0);
           OffsetIn: in STD_LOGIC_VECTOR(31 downto 0);
           Sum : out STD_LOGIC_VECTOR (31 downto 0); 
           BypassEn : in STD_LOGIC);
end component;

-- Start of signal declerations
signal adder_out : std_logic_vector(31 downto 0);
signal areg_out, pc_out: std_logic_vector(31 downto 0);

begin
AddrAdder1: AddrAdder port map (
                    Mux1Sel => mux1sel,
                    Mux2Sel => mux2sel,
                    PCIn => pc_out,
                    RegIn => areg_out,
                    ExecDataIn => ex_data_through,
                    OffsetIn => offset_in,
                    Sum => adder_out,
                    BypassEn => bypass_en);

ProgramCounter: regRE generic map (
                    width => 32,
                    reset_val => x"00000000")
                port map (
                    clk => clk,
                    rst => rst,
                    WEn => ld_pc,
                    ValueIn => adder_out,
                    ValueOut => pc_out);
                    
MAR:        regRE generic map (
                width => 32)
            port map (
                clk => clk,
                rst => '0', -- non resetable
                WEn => ld_mar,
                ValueIn => adder_out,
                ValueOut => ext_addr_bus);
                
AddrRegFile1: AddrRegFile Port map ( 
                clk => clk,
                WrSel => areg_wr_sel,
                WrData => adder_out,
                OutSel => areg_rd_sel,
                OutData => areg_out,
                WrEn => ld_areg); 
end Structural;
