----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/28/2017 07:02:56 PM
-- Design Name: 
-- Module Name: top_sim - Behavioral
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

entity top_sim is
end top_sim;

architecture Behavioral of top_sim is
component top is
    Port ( CLK : in STD_LOGIC;
           JOY_SELECT : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal clk, joy_select : std_logic;
signal led: std_logic_vector(7 downto 0);
begin

stimulus: process begin
    JOY_SELECT <= '0';
    wait for 200ns;
    JOY_SELECT <= '1';
    wait;
end process;

clockproc: process begin
    clk <= '0';
    wait for 50ns;
    clk <= '1';
    wait for 50ns;
end process;

uut: top port map(clk, joy_select, led);

end Behavioral;
