----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2016 17:31:45
-- Design Name: 
-- Module Name: mux2-to-1 - Behavioral
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

entity mux2to1 is
    Port ( data0 : in STD_LOGIC_VECTOR;
           data1 : in STD_LOGIC_VECTOR;
           sel : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR );
end mux2to1;

architecture Behavioral of mux2to1 is

begin

OutProc: process(data0, data1, sel) begin
    case sel is 
    when '0' => data_out <= data0;
    when '1' => data_out <= data1;
    when others => data_out <= "XXXXXXXXXXXXXXXX";
    end case;
end process;

end Behavioral;
