----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2016 11:01:15
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity alu is
    Port ( srcA : in STD_LOGIC_VECTOR (15 downto 0);
           srcB : in STD_LOGIC_VECTOR (15 downto 0);
           funct : in STD_LOGIC_VECTOR (3 downto 0);
           result : out STD_LOGIC_VECTOR (15 downto 0);
           carry_in : in STD_LOGIC;
           carry_out : out STD_LOGIC;
           zero_out : out STD_LOGIC;
           sign_out : out STD_LOGIC;
           overflow_out : out STD_LOGIC);
end alu;

architecture Behavioral of alu is
    constant ADD_OP : std_logic_vector(3 downto 0) := "0000"; -- add
    constant SUB_OP : std_logic_vector(3 downto 0) := "0001"; -- subtract
    constant ADC_OP : std_logic_vector(3 downto 0) := "0010"; -- add with carry
    constant SWB_OP : std_logic_vector(3 downto 0) := "0011"; -- sub with borrow
    constant AND_OP : std_logic_vector(3 downto 0) := "0100"; -- and 
    constant CMP_OP : std_logic_vector(3 downto 0) := "0101"; -- compare
    constant XOR_OP : std_logic_vector(3 downto 0) := "0110"; -- xor
    constant OR_OP  : std_logic_vector(3 downto 0) := "0111"; -- or
    constant SRC2_OP: std_logic_vector(3 downto 0) := "1000"; -- out = src2
    constant SRC1_OP: std_logic_vector(3 downto 0) := "1001"; -- out = src1
    
    signal adda, addb : unsigned(15 downto 0);
    signal addc : std_logic;
    signal addc_un : unsigned(0 downto 0);
    signal addres : unsigned(16 downto 0);
    
    signal result_int : std_logic_vector(15 downto 0);
begin

-- adder source B selection
AddBSelproc: process (funct, srcB) begin
    case funct(0) is -- lowest bit determines add/sub
    when '0' => addb <= unsigned(srcB);
    when '1' => addb <= unsigned(not srcB); -- one's complement - 1 added in via carry
    when others => addb <= x"fa11"; -- fail
    end case;
end process;

-- carry selection
CarrySelProc: process (funct, carry_in) begin
    case funct(1 downto 0) is
    when "00" => addc <= '0';
    when "01" => addc <= '1';
    when "10" => addc <= carry_in;
    when "11" => addc <= not carry_in;
    when others => addc <= '0';
    end case;
end process;

-- carry conversion
CarryConvProc: process (addc) begin
    if addc = '1' then addc_un <= "1";
    else addc_un <= "0";
    end if;
end process;

-- adder combinatory logic:
adda <= unsigned(srcA);
addres <= ('0' & adda) + ('0' & addb) + addc_un;
carry_out <= addres(16);
    
-- overflow logic:
OverflowLogic: process (funct, result_int, adda, addb) begin
    if (adda(15) = '0' and addb(15) = '0' and result_int(15) = '1') -- add 2 +ve, get -ve
    or (adda(15) = '1' and addb(15) = '1' and result_int(15) = '0') -- add 2 -ve, get +ve
    then
        overflow_out <= '1';
    else
        overflow_out <= '0';
    end if;
end process;

-- zero logic
process (result_int) begin
    if result_int = "0000000000000000" then zero_out <= '1';
    else zero_out <= '0'; end if;
end process;

-- sign logic
sign_out <= result_int(15);

-- output logic
OutputLogicProc: process (srcA, srcB, funct, addres, carry_in) begin
    case funct is
    when ADD_OP => result_int <= std_logic_vector(addres(15 downto 0));
    when SUB_OP => result_int <= std_logic_vector(addres(15 downto 0));
    when ADC_OP => result_int <= std_logic_vector(addres(15 downto 0));
    when SWB_OP => result_int <= std_logic_vector(addres(15 downto 0));
    when AND_OP => result_int <= srcA and srcB;
    when CMP_OP => result_int <= std_logic_vector(addres(15 downto 0));
    when XOR_OP => result_int <= srcA xor srcB;
    when OR_OP  => result_int <= srcA or srcB;
    when SRC2_OP => result_int <= srcB;
    when SRC1_OP => result_int <= srcA;
    when others => result_int <= x"fa11"; -- fail
    end case;
end process;

-- continous assignment
result <= result_int;


end Behavioral;
