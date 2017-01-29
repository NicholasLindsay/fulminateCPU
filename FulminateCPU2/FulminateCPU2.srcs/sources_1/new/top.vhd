----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/28/2017 05:11:30 PM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( CLK : in STD_LOGIC;
           JOY_SELECT : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is
component fulminate is
    port (clk, rst : in std_logic;
          data_bus_in : in std_logic_vector (15 downto 0);
          data_bus_out: out std_logic_vector (15 downto 0);
          addr_bus : out std_logic_vector (31 downto 0);
          bus_sel, bus_rw : out std_logic);
end component;

component LEDcontroller is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           data_mtos : in STD_LOGIC_VECTOR (15 downto 0);
           data_stom : out STD_LOGIC_VECTOR (15 downto 0);
           sel : in STD_LOGIC;
           byte_sel : in STD_LOGIC_VECTOR (1 downto 0);
           rw : in STD_LOGIC;
           wt : out STD_LOGIC;
           leds: out STD_LOGIC_VECTOR(7 downto 0));
end component;

-- bus signals
signal rst : std_logic;
signal data_bus_in, data_bus_out: std_logic_vector(15 downto 0);
signal addr_bus : std_logic_vector(31 downto 0);
signal bus_sel, bus_rw : std_logic;

-- address decoding
signal led_dev_sel : std_logic;

-- wait signal
signal led_wait : std_logic;

-- device stom bus
signal led_stom : std_logic_vector(15 downto 0);
begin

-- reset assignment
rst <= not JOY_SELECT;

cpu:   fulminate port map (clk, rst, data_bus_in, data_bus_out, addr_bus, bus_sel, bus_rw);
ledcontrol: LEDcontroller port map (clk, rst, data_bus_out, led_stom, led_dev_sel, "11", bus_rw,led_wait ,LED);

-- address decoding
process (addr_bus, led_stom) begin
    if addr_bus = x"00000000" then data_bus_in <= x"b000"; -- XOR r0, r0
    elsif addr_bus = x"00000002" then data_bus_in <= x"b101"; -- XOR r1, r1
    elsif addr_bus = x"00000004" then data_bus_in <= x"4920"; -- SET r1, 0x0020
    elsif addr_bus = x"00000006" then data_bus_in <= x"801c"; -- add r0, 1
    elsif addr_bus = x"00000008" then data_bus_in <= x"0001";
    elsif addr_bus = x"0000000a" then data_bus_in <= x"911c"; -- adc r1, 0
    elsif addr_bus = x"0000000c" then data_bus_in <= x"0000";
    elsif addr_bus = x"0000000e" then data_bus_in <= x"3ff4"; --  BRA to 04
    elsif addr_bus = x"00000020" then data_bus_in <= led_stom;
    else data_bus_in <= "----------------";
    end if;
end process;

process (addr_bus, bus_sel) begin
    if addr_bus = x"00000020" and bus_sel = '1' then led_dev_sel <= '1';
    else led_dev_sel <= '0'; end if;
end process;
end Behavioral;
