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
           IR7bitin: in STD_LOGIC_VECTOR (6 downto 0);
           IR9bitin: in STD_LOGIC_VECTOR (8 downto 0);
           Sel : in STD_LOGIC_VECTOR (2 downto 0);
            -- 0 -> MDR sign extended
            -- 1 -> MDR & temp
            -- 2 -> RegIn sign extended
            -- 3 -> IR4bitin sign extended
            -- 4 -> constant 8
            -- 5 -> IR lowest 7 bits
            -- 6 -> IR lowest 9 bits
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

signal MDR_extended, TempMdr, RegIn_extended, IR4bitin_extended, IR7bitin_extended, IR9bitin_extended : std_logic_vector (31 downto 0);
begin
    MDR_extended <= (31 downto 16 => MDRin(15)) & MDRin;
    TempMdr <= TempIn & MDRin;
    RegIn_extended <= (31 downto 16 => RegIn(15)) & RegIn;
    IR4bitin_extended <= (31 downto 4 => IR4bitin(3)) & IR4bitin;
    IR7bitin_extended <= (31 downto 7 => IR7bitin(6)) & IR7bitin;
    IR9bitin_extended <= (31 downto 9 => IR9bitin(8)) & IR9bitin;
offsetMux: mux8to1 port map (
             data0 => MDR_extended,
             data1 => TempMdr,
             data2 => RegIn_extended,
             data3 => IR4bitin_extended,
             data4 => x"00000008",
             data5 => IR7bitin_extended,
             data6 => IR9bitin_extended,
             data7 => "--------------------------------", -- dont care
             sel => Sel,
             data_out => offsetOut);

end Behavioral;
