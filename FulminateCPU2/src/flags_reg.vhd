----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2016 16:02:16
-- Design Name: 
-- Module Name: flags_reg - Behavioral
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

entity flags_reg is
    Port ( clk, rst : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (15 downto 0);
           data_out : out STD_LOGIC_VECTOR (15 downto 0);
           carry_in : in STD_LOGIC;
           sign_in : in STD_LOGIC;
           zero_in : in STD_LOGIC;
           ov_in : in STD_LOGIC;
           ld_from_bus : in STD_LOGIC;
           ld_from_alu : in STD_LOGIC);
end flags_reg;

architecture Behavioral of flags_reg is
signal alu_update_val : std_logic_vector(15 downto 0); 
    -- value to update data with in event of ld_from_alu
signal reg_int : std_logic_vector(15 downto 0);
begin

-- Combinatoric assignments:
alu_update_val(15 downto 4) <= reg_int(15 downto 4);
alu_update_val(3 downto 0) <= ov_in & carry_in & sign_in & zero_in;

-- Register write logic
UpdateLogic: process (clk) begin
    if rising_edge(clk) then
        if rst = '1' then reg_int <= "0000000000000000";
        else
            if ld_from_bus = '1' then 
                reg_int <= data_in;
            elsif ld_from_alu = '1' then
                reg_int <= alu_update_val;
            end if;
        end if;
    end if;
end process;

-- Output assignment
data_out <= reg_int;

end Behavioral;
