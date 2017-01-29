----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2016 22:49:31
-- Design Name: 
-- Module Name: AddrRegFue - beh
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

entity AddrRegFile is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC; -- REMOVE THIS
           WrSel : in STD_LOGIC_VECTOR (1 downto 0);
           WrData : in STD_LOGIC_VECTOR (31 downto 0);
           OutSel : in STD_LOGIC_VECTOR (1 downto 0);
           OutData : out STD_LOGIC_VECTOR (31 downto 0);
           WrEn : in STD_LOGIC);
end AddrRegFile;

architecture beh of AddrRegFile is
    type REGFILE_T is ARRAY(0 to 3) of std_logic_vector(31 downto 0);
    signal RegFile : REGFILE_T;
begin

-- write on rising edge of clk
WriteUpdate: process (clk) begin
        if rising_edge(clk) then
            if rst = '1' then -- TEMPORARY!
                RegFile(0) <= x"00000000";
                RegFile(1) <= x"00000000";
                RegFile(2) <= x"00000000";
                RegFile(3) <= x"00000000";
            elsif WrEn = '1' then
                 RegFile(to_integer(unsigned(WrSel))) <= WrData;
             end if;
        end if;
    end process;

-- output logic
OutputLogic: process (OutSel, RegFile) begin
        OutData <= RegFile(to_integer(unsigned(OutSel)));
    end process;
    

end beh;
