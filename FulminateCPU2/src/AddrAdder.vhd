----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.12.2016 00:09:57
-- Design Name: 
-- Module Name: AddrAdder - beh
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

entity AddrAdder is
    Port ( Mux1Sel : in STD_LOGIC;  -- If '1', Adder Source 1 is PC, otherwise Source 1 is Addr Reg
           Mux2Sel : in STD_LOGIC_VECTOR (2 downto 0); -- Selects source 2. Possible values:
                                        -- 0 = "0";
                                        -- 1 = "1";
                                        -- 2 = "2";
                                        -- 3 = "9";
                                        -- 4 = "-1";
                                        -- 5 = "-2";
                                        -- 6 = from instr offset;
                                        -- 7 = from execution side
           PCIn : in STD_LOGIC_VECTOR (31 downto 0); -- Data from PC
           RegIn : in STD_LOGIC_VECTOR (31 downto 0); -- Data from Address file
           ExecDataIn: in STD_LOGIC_VECTOR(31 downto 0); -- Data from execution unit
           OffsetIn: in STD_LOGIC_VECTOR(31 downto 0); -- Data from instruction (offset)
           Sum : out STD_LOGIC_VECTOR (31 downto 0); -- Numeric result
           BypassEn : in STD_LOGIC); -- If '1', output is simply source '2'
end AddrAdder;

architecture beh of AddrAdder is
    signal sum_int : unsigned(31 downto 0); -- internal sum
    signal data1, data2 : unsigned(31 downto 0); -- internal selected inputs
begin

-- Source 1 multiplexer
Mux1Proc: process (Mux1Sel, PCIn, RegIn) begin
        case Mux1Sel is
        when '0' => data1 <= unsigned(PCIn);
        when '1' => data1 <= unsigned(RegIn);
        when others => data1 <= unsigned(PCIn);
        end case;
     end process;       

-- Source 2 multiplexer
Mux2Proc: process (Mux2Sel, OffsetIn, ExecDataIn) begin
    case Mux2Sel is
    when "000" => data2 <= x"00000000";
    when "001" => data2 <= x"00000001";
    when "010" => data2 <= x"00000002";
    when "011" => data2 <= x"00000008";
    when "100" => data2 <= x"ffffffff"; -- minus 1
    when "101" => data2 <= x"fffffffe"; -- minus 2
    when "110" => data2 <= unsigned(OffsetIn);
    when "111" => data2 <= unsigned(ExecDataIn);
    when others => data2 <= x"00000000";
    end case;
end process;

-- Adder Implementation
AdderProc: process(data1, data2, BypassEn) begin
    if BypassEn = '1' then
        sum_int <= data2;
    else
        sum_int <= data1 + data2;
    end if;
end process;

-- Output assignment
sum <= std_logic_vector(sum_int);

end beh;
