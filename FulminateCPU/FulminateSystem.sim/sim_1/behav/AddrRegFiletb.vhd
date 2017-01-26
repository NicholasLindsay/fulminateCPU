----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2016 22:56:53
-- Design Name: 
-- Module Name: AddrRegFiletb - Behavioral
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

entity AddrRegFiletb is
end AddrRegFiletb;

architecture Behavioral of AddrRegFiletb is
    component AddrRegFile is 
        port (clk : in STD_LOGIC;
               WrSel : in STD_LOGIC_VECTOR (1 downto 0);
               WrData : in STD_LOGIC_VECTOR (31 downto 0);
               OutSel : in STD_LOGIC_VECTOR (1 downto 0);
               OutData : out STD_LOGIC_VECTOR (31 downto 0);
               WrEn : in STD_LOGIC);
    end component;
    
    component AddrAdder is
        port ( Mux1Sel : in STD_LOGIC;  -- If '1', Adder Source 1 is PC, otherwise Source 1 is Addr Reg
               Mux2Sel : in STD_LOGIC_VECTOR (2 downto 0); -- Selects source 2. Possible values:
                                            -- 0 = "0";
                                            -- 1 = "1";
                                            -- 2 = "2";
                                            -- 3 = "4";
                                            -- 4 = "-1";
                                            -- 5 = "-2";
                                            -- 6 = "-4";
                                            -- 7 = from execution side
               PCIn : in STD_LOGIC_VECTOR (31 downto 0); -- Data from PC
               RegIn : in STD_LOGIC_VECTOR (31 downto 0); -- Data from Address file
               ExecDataIn: in STD_LOGIC_VECTOR(31 downto 0); -- Data from execution unit
               Sum : out STD_LOGIC_VECTOR (31 downto 0); -- Numeric result
               BypassEn : in STD_LOGIC); -- If '1', output is simply source '2'
    end component;
    
    signal clk : std_logic; -- clock signal
    signal WrData, RdData : std_logic_vector(31 downto 0); -- reg file data inputs and outputs
    signal WrSel, RdSel : std_logic_vector(1 downto 0); -- reg file register select
    signal WrEn : std_logic; -- reg file write enable
    signal Mux1Sel : std_logic; -- adder source 1 select
    signal Mux2Sel : std_logic_vector(2 downto 0); -- adder source 2 select
    signal BypassEn: std_logic; -- if true, adder output = source 2
    signal ExecDataIn: std_logic_vector(31 downto 0); -- data to addr reg from execution side
begin
    
uut1: AddrRegFile
    port map (
        clk => clk,
        WrSel => WrSel,
        WrData => WrData,
        OutSel => RdSel,
        OutData => RdData,
        WrEn => WrEn);
 
uut2: AddrAdder
    port map (
        Mux1Sel => Mux1Sel,
        Mux2Sel => Mux2Sel,
        PCIn => x"ae110abc",
        RegIn => RdData,
        ExecDataIn => ExecDataIn,
        Sum => WrData,
        BypassEn => BypassEn);
      
clk_process: process begin
    clk <= '0';
    wait for 100ns;
    clk <= '1';
    wait for 100ns;
end process;

tb_stimulus: process begin
    WrSel <= "00";
    RdSel <= "01";
    WrEn <= '0';
    ExecDataIn <= x"abcdef12";
    Mux1Sel <= '0'; -- source 1 =  PC
    Mux2Sel <= "000"; -- source 2 = "0"
    wait for 200ns;
    Mux2Sel <= "001"; -- source 2 = "1"
    wait for 200ns;
    Mux2Sel <= "010"; -- source 2 = "2"
    wait for 200ns;
    Mux2Sel <= "011"; -- source 2 = "4"
    WrEn <= '1'; -- write this value in addr reg
    wait for 200ns;
    Mux2Sel <= "100"; -- source 2 = "-1"
                     -- this value will be written to
    wait for 200ns;
    Mux2Sel <= "101"; -- source 2 = "-2"
    WrEn <= '0'; -- stop writing
    wait for 200ns;
    Mux2Sel <= "110"; -- source 2 = "-4"
    wait for 200ns;
    Mux2Sel <= "111"; -- source 2 = exec data in
    WrSel <= "11"; -- write to register 11 (3 in decimal)
    WrEn <= '1';
    wait for 200ns;
    WrSel <= "10"; -- write input B to register "10" (2)
    BypassEn <= '1';
    wait for 200ns;
    WrEn <= '0';
    wait for 551ns;
end process;
end Behavioral;
