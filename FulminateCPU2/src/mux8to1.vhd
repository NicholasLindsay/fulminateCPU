----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2016 17:37:19
-- Design Name: 
-- Module Name: mux8to1 - Behavioral
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

entity mux8to1 is
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
end mux8to1;

architecture Behavioral of mux8to1 is

begin

OutProc: process (data0, data1, data2, data3, data4, data5, data6, data7, sel) begin
    case sel is
    when "000" => data_out <= data0;
    when "001" => data_out <= data1;
    when "010" => data_out <= data2;
    when "011" => data_out <= data3;
    when "100" => data_out <= data4;
    when "101" => data_out <= data5;
    when "110" => data_out <= data6;
    when "111" => data_out <= data7;
    when others => data_out <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    end case;
end process;
end Behavioral;
