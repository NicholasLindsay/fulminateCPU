----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2017 06:32:09 PM
-- Design Name: 
-- Module Name: BranchCond - Behavioral
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

entity BranchCond is
    Port ( flags_reg_in : in STD_LOGIC_VECTOR (15 downto 0);
           cond_sel : in STD_LOGIC_VECTOR (3 downto 0);
           cond_true : out STD_LOGIC);
end BranchCond;

architecture Behavioral of BranchCond is

begin


end Behavioral;
