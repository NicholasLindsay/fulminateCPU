----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2016 00:20:08
-- Design Name: 
-- Module Name: regfile8x16 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regfile8x16 is
    Port ( clk : in STD_LOGIC; -- jellybean
           rst : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (15 downto 0); -- data to write
           wr_sel : in STD_LOGIC_VECTOR (2 downto 0); -- register to write to
           wr_en : in STD_LOGIC; -- if '1', data written on next pos edge
           out1 : out STD_LOGIC_VECTOR (15 downto 0); -- output with r selected by out1sel
           out1_sel : in STD_LOGIC_VECTOR (2 downto 0);
           out2 : out STD_LOGIC_VECTOR (15 downto 0); -- output of r selected by out2sel
           out2_sel : in STD_LOGIC_VECTOR (2 downto 0));
end regfile8x16;

architecture beh of regfile8x16 is
    type REGFILE_T is ARRAY(0 to 7) of std_logic_vector(16 downto 0);
    signal RegFile : REGFILE_T;
begin

UpdateLogic: process (clk) begin
    if rising_edge(clk) and wr_en = '1' then
        RegFile(to_integer(unsigned(wr_sel))) <= data_in;
    end if;
end process;

OutLogic: process (out1_sel, out2_sel, RegFile) begin
    out1 <= RegFile(to_integer(unsigned(out1_sel)));
    out2 <= RegFile(to_integer(unsigned(out2_sel)));
end process;

end beh;
