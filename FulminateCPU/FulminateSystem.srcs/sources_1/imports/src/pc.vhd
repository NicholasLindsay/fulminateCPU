library ieee;
use ieee.std_logic_1164.all;

entity regRE is
    generic (width     : integer := 32;
             reset_val : std_logic_vector := x"00000000");
    port (clk, rst, WEn : in std_logic; -- clock signal, synchronous reset, write enable
          ValueIn        : in std_logic_vector(width - 1 downto 0); -- data to write
          ValueOut       : out std_logic_vector(width - 1 downto 0)); -- data read
end regRE;

architecture beh of regRE is
begin

UpdateProc: process (clk) begin
    if rising_edge(clk) then
        if rst = '1' then ValueOut <= reset_val;  -- reset has priority over write
        elsif WEn = '1' then ValueOut <= ValueIn;
        end if;
    end if;
end process;

end beh;