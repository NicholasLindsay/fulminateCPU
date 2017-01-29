----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/28/2017 04:54:37 PM
-- Design Name: 
-- Module Name: LEDcontroller - Behavioral
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

entity LEDcontroller is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           data_mtos : in STD_LOGIC_VECTOR (15 downto 0);
           data_stom : out STD_LOGIC_VECTOR (15 downto 0);
           sel : in STD_LOGIC;
           byte_sel : in STD_LOGIC_VECTOR (1 downto 0);
           rw : in STD_LOGIC;
           wt : out STD_LOGIC;
           leds: out STD_LOGIC_VECTOR(7 downto 0));
end LEDcontroller;

architecture Behavioral of LEDcontroller is
signal LEDS_int : std_logic_vector(7 downto 0);
begin
    process (clk) begin
        if rising_edge(clk) then
                if rst = '1' then LEDS_int <= "00000000";
                else
                    if byte_sel(1) = '1' and sel = '1' and rw = '1' then
                        LEDS_int <= data_mtos(7 downto 0);
                    end if;
                end if;
        end if;
    end process;
    
    data_stom <= "00000000" & LEDS_int;
    
    leds <= LEDS_int;
end Behavioral;
