library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity FulBusRAM is	
	generic
	( Start_addr : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	RAM_size : integer :=  1024);
	
	port ( clk, rst : in std_logic;
	Data    : inout std_logic_vector(15 downto 0);
	address	: in std_logic_vector(31 downto 0);
	Dsel    : in std_logic;
	Bsel	: in std_logic_vector(1 downto 0);
	RW		: in std_logic;
    Wt      : inout std_logic );	
	
	
end FulBusRam;

architecture beh of FulBusRAM is
type RAM is array (0 to RAM_size - 1) of std_logic_vector(15 downto 0);
signal RAMArray : RAM; 
signal dev_sel : std_logic;	
signal dev_selb: boolean;
signal wb_en   : std_logic_vector(1 downto 0);
begin
	-- device select logic
	dev_selb <=(unsigned(address) >= unsigned(Start_addr))
		and (unsigned(address) < unsigned(start_Addr) + to_unsigned(RAM_SIZE, 32));

DEVICE_SEL_BOOL_TO_LOGIC: process (dev_selb, Dsel) begin
		if (dev_selb and Dsel = '1') then dev_sel <= '1';
		else dev_sel <= '0'; 
		end if;
	end process;


    -- internal write enables
	wb_en(0) <= Bsel(0) and RW and dev_sel;
	wb_en(1) <= Bsel(1) and RW and dev_sel;
	
	-- process to write to memory
MEM_WRITE:	process (clk) begin
		if rising_edge(clk) then
			if wb_en(0) = '1' then
				RAMArray(to_integer(unsigned(address)))(7 downto 0) <= Data(7 downto 0);
			end if;
			if wb_en(1) = '1' then
				RAMArray(to_integer(unsigned(address)))(15 downto 8) <= Data(15 downto 8);
			end if;		
		end if;	 
	end process;

    -- process to simulate reading from memory
OUTPUT: process (dev_sel, address, RAMArray, Dsel, RW, Bsel) begin
        -- only output data if device selected, it is a read operation, and bytes are requested
		if dev_sel = '1' and RW = '0' and Bsel /= "00" then 
		  Data <= RAMArray(to_integer(unsigned(address)));
		else Data <= "ZZZZZZZZZZZZZZZZ";	  
		end if;
	end process;
	
	-- wait logic : never active
WAIT_LOGIC: process (Dsel) begin
	   if (Dsel = '1') then Wt <= '0';
	   else Wt <= 'Z'; end if;
	end process;
	
	-- initilise with some data
INITIAL: process begin
        wait for 1ns;
        RAMArray(0)(15 downto 0) <= x"abcd";
        RAMArray(1) <= x"1139";
        wait;
end process;
end beh;
