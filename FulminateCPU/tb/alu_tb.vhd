----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2016 12:35:30
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_tb is
end alu_tb;

architecture Behavioral of alu_tb is
component alu is
    Port ( srcA : in STD_LOGIC_VECTOR (15 downto 0);
           srcB : in STD_LOGIC_VECTOR (15 downto 0);
           funct : in STD_LOGIC_VECTOR (3 downto 0);
           result : out STD_LOGIC_VECTOR (15 downto 0);
           carry_in : in STD_LOGIC;
           carry_out : out STD_LOGIC;
           zero_out : out STD_LOGIC;
           sign_out : out STD_LOGIC;
           overflow_out : out STD_LOGIC);
end component;

signal srcA, srcB : std_logic_vector(15 downto 0);
signal funct : std_logic_vector(3 downto 0);
signal result : std_logic_vector(15 downto 0);
signal carry_in, carry_out, zero_out, sign_out, overflow_out : std_logic;

signal functcnt : unsigned(3 downto 0);
begin
    
uut: alu port map (srcA, srcB, funct, result, carry_in, carry_out,
                     zero_out, sign_out, overflow_out);
        
    
CarryAlternateProc: process begin
    carry_in <= '0';
    wait for 50ns;
    carry_in <= '1';
    wait for 50ns;
end process;

Stimulus: process begin
    srcA <= x"0010";
    srcB <= x"3333";
	 funct <= "0000";
    wait for 100ns;
	 funct <= "0001";
	 wait for 100ns;
	 funct <= "0010";
	 wait for 100ns;
	 funct <= "0011";
	 wait for 100ns;
	 funct <= "0100";
	 wait for 100ns;
	 funct <= "0101";
	 wait for 100ns;
	 funct <= "0110";
	 wait for 100ns;
	 funct <= "0111";
	 wait for 100ns;
	 funct <= "1000";
	 wait for 100ns;
	 funct <= "1001";
	 wait;
end process;

end Behavioral;
