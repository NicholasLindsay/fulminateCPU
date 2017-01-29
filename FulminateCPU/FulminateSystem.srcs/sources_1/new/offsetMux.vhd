----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2017 06:32:09 PM
-- Design Name: 
-- Module Name: offsetMux - Behavioral
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

entity offsetMux is
    Port ( MDRin : in STD_LOGIC_VECTOR (15 downto 0);
           TempIn : in STD_LOGIC_VECTOR (15 downto 0);
           RegIn : in STD_LOGIC_VECTOR (15 downto 0);
           IR4bitin: in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (2 downto 0);
           offsetOut : out STD_LOGIC_VECTOR (31 downto 0));
end offsetMux;

architecture Behavioral of offsetMux is

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


begin

offsetMux: mux8to1 port map (
             data0 <= (31 downto 16 => MDRin(15)) & MDRin;
             data1 <= TempIn & MDRin;
             data2 <= (31 downto 16 => RegIn(15)) & RegIn;
             data3 <= (31 downto 4 => IR4bitin(4)) & IR4bitin;
             data4 <= x"00000008";
             data5 <= "--------------------------------"; -- dont care
             data6 <= "--------------------------------"; -- dont care
             data7 <= "--------------------------------"; -- dont care
             sel <= Sel;
             data_out <= offsetOut);

end Behavioral;
