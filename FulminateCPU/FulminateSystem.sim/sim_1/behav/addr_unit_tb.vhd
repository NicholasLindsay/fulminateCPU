----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2016 22:00:17
-- Design Name: 
-- Module Name: addr_unit_tb - Behavioral
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

entity addr_unit_tb is
end addr_unit_tb;

architecture Behavioral of addr_unit_tb is
component addr_unit is
    Port ( clk, rst     : std_logic;
           ex_data_through : in STD_LOGIC_VECTOR (31 downto 0);
           ext_addr_bus : out STD_LOGIC_VECTOR (31 downto 0);
           offset_in : in STD_LOGIC_VECTOR(31 downto 0);
           mux1sel : in STD_LOGIC;
           mux2sel : in STD_LOGIC_VECTOR (2 downto 0);
           bypass_en : in STD_LOGIC;
           ld_pc : in STD_LOGIC;
           ld_mar : in STD_LOGIC;
           ld_areg : in STD_LOGIC;
           areg_wr_sel : in STD_LOGIC_VECTOR (1 downto 0);
           areg_rd_sel : in STD_LOGIC_VECTOR (1 downto 0));
end component;

-- Start of constants
constant CLK_PERIOD : time := 100ns;

-- Start of signal declerations
signal clk, rst : std_logic; -- jellybean
signal ex_data_through, ext_addr_bus, offset_in : std_logic_vector(31 downto 0);
signal mux1sel : std_logic;
signal mux2sel : std_logic_vector(2 downto 0);
signal bypass_en, ld_pc, ld_mar, ld_areg : std_logic;
signal areg_wr_sel, areg_rd_sel : std_logic_vector(1 downto 0);

begin

-- uut instantation
uut: addr_unit
    Port map ( clk, rst, ex_data_through, ext_addr_bus, offset_in, mux1sel, mux2sel,
               bypass_en, ld_pc, ld_mar, ld_areg, areg_wr_sel, areg_rd_sel);


-- clock process
CLKproc: process begin
    clk <= '0';
    wait for CLK_PERIOD / 2;
    clk <= '1';
    wait for CLK_PERIOD / 2;
end process;
    
stimulus: process begin
    -- init signals
    ex_data_through <= x"eeeeeeee";
    offset_in <= x"12345678";
    mux1sel <= '0';
    mux2sel <= "000";
    bypass_en <= '0';
    ld_pc <= '0';
    ld_mar <= '0';
    ld_areg <= '0';
    areg_wr_sel <= "00";
    areg_rd_sel <= "00";
    
    -- reset system : this will set the PC to 0
    rst <= '1';
    wait for CLK_PERIOD;
    
    -- load areg 2 with ex_data_through
    rst <= '0'; -- do not wish to reset
    areg_wr_sel <= "10"; -- select r2 as destination
    ld_areg <= '1'; -- want to load r2
    bypass_en <= '1'; -- instead of performing addition, simply load reg with src 2
    mux2sel <= "111"; -- use ex_data_through for source
    wait for CLK_PERIOD;
    
    -- add pc and 2, store result in r1 and mar
    areg_wr_sel <= "01"; -- r1 is destination
    ld_areg <= '1'; -- load address register
    ld_mar <= '1'; -- load memory address register
    bypass_en <= '0'; -- want to perform addition
    mux2sel <= "010"; -- constant 2 as src 2
    mux1sel <= '0'; -- PC as src 1
    wait for CLK_PERIOD;
    
    -- add r2 and -2, store result in r3
    areg_rd_sel <= "10"; -- r2 is src1
    areg_wr_sel <= "11"; -- r3 is destination
    ld_areg <= '1'; -- load address register
    ld_mar <= '0'; -- don't load mar
    bypass_en <= '0'; -- want to perform addition
    mux2sel <= "101"; -- -2 as src2
    mux1sel <= '1'; -- use areg as src1
    wait for CLK_PERIOD;
    
end process;
end Behavioral;
