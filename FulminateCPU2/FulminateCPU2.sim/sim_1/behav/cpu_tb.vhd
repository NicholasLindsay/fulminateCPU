----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/28/2017 12:36:50 PM
-- Design Name: 
-- Module Name: cpu_tb - Behavioral
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

entity cpu_tb is
end cpu_tb;

architecture Behavioral of cpu_tb is

component fulminate is
    port (clk, rst : in std_logic;
          data_bus_in : in std_logic_vector (15 downto 0);
          data_bus_out: out std_logic_vector (15 downto 0);
          addr_bus : out std_logic_vector (31 downto 0);
          bus_sel, bus_rw : out std_logic);
end component;

signal clk, rst : std_logic;
signal data_bus_in, data_bus_out: std_logic_vector(15 downto 0);
signal addr_bus : std_logic_vector(31 downto 0);
signal bus_sel, bus_rw : std_logic;

constant CLK_PERIOD : time := 100ns;
begin

uit:   fulminate port map (clk, rst, data_bus_in, data_bus_out, addr_bus, bus_sel, bus_rw);

stimulus: process begin
    rst <= '1';
    data_bus_in <= x"477e";
    wait for CLK_PERIOD;
    rst <= '0';
    wait for 5 * CLK_PERIOD;
    data_bus_in <= x"4f7f"; -- store r7 in a0 - big number
    wait for 3 * CLK_PERIOD;
    -- unconditional branch
    data_bus_in <= x"3FFE";
    wait;
end process;

clkproc: process begin
    clk <= '0';
    wait for CLK_PERIOD/2;
    clk <= '1';
    wait for CLK_PERIOD/2;
end process;

end Behavioral;
