----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/10/2016 01:05:41 AM
-- Design Name: 
-- Module Name: FulBusRAM_tb - Behavioral
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

entity FulBusRAM_tb is
end FulBusRAM_tb;

architecture Behavioral of FulBusRAM_tb is
    -- Component Declerations
    component FulBusRAM is	
    	generic
    	( Start_addr : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
    	RAM_size : integer :=  1024);
    	
    	port ( clk, rst : in std_logic;
    	Data    : inout std_logic_vector(15 downto 0);
    	address	: in std_logic_vector(31 downto 0);
    	Dsel    : in std_logic;
    	Bsel	: in std_logic_vector(1 downto 0);
    	RW		: in std_logic;
    	Wt      : inout std_logic);	 	
    end component;
    
    -- Signal Declerations
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal address : std_logic_vector(31 downto 0);
    signal DataBus : std_logic_vector(15 downto 0);
    signal DataToSend : std_logic_vector(15 downto 0);
    signal Dsel : std_logic := '0';
    signal Bsel : std_logic_vector(1 downto 0);
    signal RW : std_logic := '0';
    signal Wt : std_logic;
    
    -- Constant declerations
    constant CLK_PERIOD : time := 100ns;
begin
    uut: FulBusRam    
     port map (
        clk => clk,
        rst => rst,
        Data => DataBus,
        address => address,
        Dsel => Dsel,
        Bsel => Bsel,
        RW => RW,
        Wt => Wt);
    
clock_proc: process
begin
    clk <= '0';
    wait for CLK_PERIOD / 2;
    clk <= '1';
    wait for CLK_PERIOD / 2;
end process;

bi_dir_drive:
    process (RW, DataToSend) begin
        if (RW = '1') then DataBus <= DataToSend;
        else DataBus <= "ZZZZZZZZZZZZZZZZ";
        end if;
    end process;

stimulus: process
begin
    -- Write 
    rst <= '0';
    address <= x"0000000b";
    RW <= '1';
    Bsel <= "11";
    DataToSend <= x"2016";
    Dsel <= '1';
    -- Read back
    wait for CLK_PERIOD;
    RW <= '0';
    Bsel <= "10";
    wait for CLK_PERIOD;
    -- Read next address
    address <= x"0000000c";
    -- Deselect device
    wait for CLK_PERIOD;
    Dsel <= '0';
    -- Re-enable device and read 0, 1, 2
    wait for 3 * CLK_PERIOD;
    Dsel <= '1';
    Bsel <= "11";
    address <= x"00000000";
    RW <= '0';
    wait for CLK_PERIOD;
    address <= std_logic_vector(unsigned(address) + 1);
    wait for CLK_PERIOD;
    address <= x"00000002";
    wait;
end process;
end Behavioral;
