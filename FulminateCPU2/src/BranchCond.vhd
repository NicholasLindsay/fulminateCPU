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
signal carry, sign, overflow, zero, cond_int : STD_LOGIC;
begin
    zero <= flags_reg_in(0);
    sign <= flags_reg_in(1);
    carry <= flags_reg_in(2);
    overflow <= flags_reg_in(3);
    cond_true <= cond_int;
    
    process (zero,sign,carry,overflow, cond_sel) begin
        case cond_sel is
            when "0000" => cond_int <= '1';
            when "0001" => cond_int <= '0';
            when "0010" => cond_int <= '0';
            when "0011" => cond_int <= '0';
            when "0100" => cond_int <= zero;
            when "0101" => cond_int <= not zero;
            when "0110" => cond_int <= (not carry) and (not zero);
            when "0111" => cond_int <= carry or zero;
            when "1000" => cond_int <= carry;
            when "1001" => cond_int <= not carry;
            when "1010" => cond_int <= (not sign) and (not zero);
            when "1011" => cond_int <= sign or zero;
            when "1100" => cond_int <= (not sign);
            when "1101" => cond_int <= sign;
            when "1110" => cond_int <= overflow;
            when "1111" => cond_int <= '1';
            when others => cond_int <= '1';
        end case;
    end process;

end Behavioral;
