----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2017 10:07:07 PM
-- Design Name: 
-- Module Name: fulminate - Behavioral
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

entity fulminate is
    port (clk, rst : in std_logic;
          data_bus_in : in std_logic_vector (15 downto 0);
          data_bus_out: out std_logic_vector (15 downto 0);
          addr_bus : out std_logic_vector (31 downto 0);
          bus_sel, bus_rw : out std_logic);
end fulminate;

architecture Behavioral of fulminate is
component execution_unit is
    Port ( clk, rst : in STD_LOGIC;
    
            -- data bus interface
           data_bus_in : in STD_LOGIC_VECTOR (15 downto 0);
           data_bus_out : out STD_LOGIC_VECTOR (15 downto 0);
           
           -- mdr control signals.
           mdr_src_sel : in STD_LOGIC; -- 0 => ALU result, 1 => data bus
           mdr_ld : in STD_LOGIC; -- LD MDR
           
           -- reg control signals
           reg_wr_src_sel : in STD_LOGIC; -- 0 => ALU result, 1 => MDR
           reg_wr_sel : in STD_LOGIC_VECTOR (2 downto 0); -- what register to write to
           reg_wr_en : in STD_LOGIC; -- LD REG
           reg_out1_sel : in STD_LOGIC_VECTOR (2 downto 0); -- Reg output 1 selector
           reg_out2_sel : in STD_LOGIC_VECTOR (2 downto 0); -- Reg output 2 selector
           
           -- alu control signals
           alu_src2_sel : in STD_LOGIC_VECTOR (1 downto 0); -- 0 => reg file, 1 => flags, 2=> temp_reg, 3 => MDR
           alu_funct : in STD_LOGIC_VECTOR (3 downto 0); -- See ALU
           
           -- flag register control signals
           flags_ld_bus : in STD_LOGIC; -- LD FLAGS from ALU src 2 bus
           flags_ld_alu : in STD_LOGIC; -- LD FLAGS from ALU operation
           flags_out : out STD_LOGIC_VECTOR (15 downto 0); -- status register contents
           
           -- temporary register control signals
           temp_ld : in STD_LOGIC; -- LD TEMPORARY
          
          -- offset selector control signals
           addr_offset_sel : in STD_LOGIC_VECTOR (2 downto 0); -- 0 => MDR, 1 => TEMP&MDR, 2=> RegB, 3 => 4 bit offset, 4 => "8"
           addr_offset_out : out STD_LOGIC_VECTOR (31 downto 0); -- output to address adder
           branch_cond_sel : in STD_LOGIC_VECTOR (3 downto 0); -- branch condition selector: matched to opcodes
           branch_cond_true : out STD_LOGIC; -- 1 if branch condition met
           
           -- instruction reg in
           IRin : std_logic_vector(15 downto 0));
end component;

component addr_unit is
    Port ( clk, rst     : std_logic; -- jellybean
            -- data from execution unit:
          -- ex_data_through : in STD_LOGIC_VECTOR (31 downto 0);
           -- external addr bus:
           ext_addr_bus : out STD_LOGIC_VECTOR (31 downto 0);
           -- offset (from execution unit) in
           offset_in : in STD_LOGIC_VECTOR(31 downto 0);
           -- control signals:
           mux1sel : in STD_LOGIC; -- 0 => PC, 1 => AREG
           mux2sel : in STD_LOGIC_VECTOR (2 downto 0); -- 0 => 0, 1 => 1, 2 => 2, 3 => 9, 4 => -1, 5 => -2, 6 => offset_in, 7 => unused
           bypass_en : in STD_LOGIC; -- bypass adder, that is bus = data from mux 2
           ld_pc : in STD_LOGIC; -- load pc
           ld_mar : in STD_LOGIC; -- load mar
           ld_areg : in STD_LOGIC; -- load areg
           areg_wr_sel : in STD_LOGIC_VECTOR (1 downto 0); -- select areg write reg
           areg_rd_sel : in STD_LOGIC_VECTOR (1 downto 0)); -- select areg read reg
end component;

-- internal interconnect signals
signal addr_offset_exec : std_logic_vector(31 downto 0);
signal branch_cond_true : std_logic;

-- executuion unit control signals
signal  mdr_src_sel, ld_mdr,  reg_wr_src_sel, reg_wr_en, flags_ld_bus, flags_ld_alu, temp_ld : std_logic;
signal  reg_wr_sel , reg_out1_sel,  reg_out2_sel : std_logic_vector(2 downto 0);
signal  alu_src2_sel  : std_logic_vector(1 downto 0);
signal alu_funct : std_logic_vector(3 downto 0);
signal addr_offset_sel : std_logic_vector (2 downto 0);
signal branch_cond_sel : std_logic_vector (3 downto 0);

-- address unit control signals
signal addr_mux1sel, addr_bypass_en, ld_pc, ld_mar, ld_areg : std_logic;
signal addr_mux2sel : std_logic_vector(2 downto 0);
signal areg_wr_sel, areg_rd_sel : std_logic_vector(1 downto 0);

-- instruction register
signal IR : std_logic_vector(15 downto 0);
signal ld_IR : std_logic;

-- unused signals
signal flags_out : std_logic_vector(15 downto 0);

-- internal bus signals
signal bus_rw_int : std_logic;

-- decode signals
-- two_op operand types:
signal to_type_greg, to_type_postdec, to_type_preinc, to_type_add8, to_type_addsimm16, to_type_addimm32 : std_logic;
signal to_type_imm, to_type_abs16, to_type_zero, to_type_abs32, to_type_areg_greg, to_type_ra_soff4 : std_logic;


-- control state machine
type microstate is (DECODE, EXTGET1, EXTGET2, EXTSET1, RESET1, ONLY_FETCH, TO_IMM1);
signal current_state, next_state : microstate;

begin

ExecUnit: execution_unit port map (
           clk => clk,
           rst => rst,
           data_bus_in => data_bus_in,
           data_bus_out => data_bus_out,
           mdr_src_sel => mdr_src_sel,
           mdr_ld => ld_mdr,
           reg_wr_src_sel => reg_wr_src_sel,
           reg_wr_sel => reg_wr_sel,
           reg_wr_en => reg_wr_en,
           reg_out1_sel => reg_out1_sel,
           reg_out2_sel => reg_out2_sel,
           alu_src2_sel => alu_src2_sel,
           alu_funct => alu_funct,
           flags_ld_bus => flags_ld_bus,
           flags_ld_alu => flags_ld_alu,
           flags_out => flags_out,
           temp_ld => temp_ld,
           addr_offset_sel => addr_offset_sel,
           addr_offset_out => addr_offset_exec,
           branch_cond_sel => branch_cond_sel,
           branch_cond_true => branch_cond_true,
           IRin => IR);
           
AddrUnit: addr_unit port map (
           clk => clk,
           rst => rst,
          ext_addr_bus => addr_bus,
          offset_in => addr_offset_exec,
          mux1sel => addr_mux1sel,
          mux2sel => addr_mux2sel,
          bypass_en => addr_bypass_en,
          ld_pc => ld_pc,
          ld_mar => ld_mar,
          ld_areg => ld_areg,
          areg_wr_sel => areg_wr_sel,
          areg_rd_sel => areg_rd_sel);

-- Instruction register
    process (clk) begin
    if rising_edge(clk) then
        if ld_IR = '1' then IR <= data_bus_in; end if;
    end if;
    end process;

-- start of decode logic

    -- two op second operand type decoding
--    process (IR) begin
--            to_type_greg <= '0';
--            to_type_postdec <= '0';
--            to_type_preinc <= '0';
--            to_type_add8 <= '0'; 
--            to_type_addsimm16 <= '0';
--            to_type_addimm32 <= '0';
--            to_type_imm <= '0';
--            to_type_abs16 <= '0';
--            to_type_zero <= '0';
--            to_type_abs32 <= '0';
--            to_type_areg_greg <= '0';
--            to_type_ra_soff4 <= '0';
            
--            if IR(6) = '0' then
--                if IR(5) = '0' then
--                    case IR(4 downto 0) is
--                    when "00000" => to_type_greg <= '1';
--                    when "00001" => to_type_greg <= '1';
--                    when "00010" => to_type_greg <= '1';
--                    when "00011" => to_type_greg <= '1';
--                    when "00100" => to_type_greg <= '1';
--                    when "00101" => to_type_greg <= '1';
--                    when "00110" => to_type_greg <= '1';
--                    when "00111" => to_type_greg <= '1';
--                    when "01000" => to_type_postdec <= '1';
--                    when "01001" => to_type_postdec <= '1';
--                    when "01010" => to_type_postdec <= '1';
--                    when "01011" => to_type_postdec <= '1';
--                    when "01100" => to_type_preinc <= '1';
--                    when "01101" => to_type_preinc <= '1';
--                    when "01110" => to_type_preinc <= '1';
--                    when "01111" => to_type_preinc <= '1';
--                    when "10000" => to_type_add8 <= '1';
--                    when "10001" => to_type_add8 <= '1';
--                    when "10010" => to_type_add8 <= '1';
--                    when "10011" => to_type_add8 <= '1';
--                    when "10100" => to_type_addsimm16 <= '1';
--                    when "10101" => to_type_addsimm16 <= '1';
--                    when "10110" => to_type_addsimm16 <= '1';
--                    when "10111" => to_type_addsimm16 <= '1';
--                    when "11000" => to_type_addimm32 <= '1';
--                    when "11001" => to_type_addimm32 <= '1';
--                    when "11010" => to_type_addimm32 <= '1';
--                    when "11011" => to_type_addimm32 <= '1';
--                    when "11100" => to_type_imm <= '1';
--                    when "11101" => to_type_abs16 <= '1';
--                    when "11110" => to_type_zero <= '1';
--                    when "11111" => to_type_abs32 <= '1';
--                    when others => null;
--                    end case;
--                else
--                    to_type_areg_greg <= '1';
--                end if;
--            else
--                to_type_ra_soff4 <= '1';
--            end if;
--    end process;

-- state machine update logic
    process (clk) begin
    if rising_edge(clk) then 
        if rst = '1' then current_state <= RESET1;
        else current_state <= next_state;
        end if;
    end if;
    end process;

-- state output logic
    process (current_state, IR, branch_cond_true) begin
        -- defaults:
        mdr_src_sel <= '-';
        ld_mdr <= '0';
        reg_wr_src_sel <= '-';
        reg_wr_en <= '0';
        flags_ld_bus <= '0';
        flags_ld_alu <= '0';
        temp_ld <= '0';
        reg_wr_sel <= "---";
        reg_out1_sel <= "---";
        reg_out2_sel <= "---";
        alu_src2_sel <= "--";
        alu_funct <= "----";
        addr_offset_sel <= "---";
        branch_cond_sel <= "----";
        addr_mux1sel <= '-';
        addr_bypass_en <= '-';
        ld_pc <= '0';
        ld_areg <= '0';
        ld_mar <= '0';
        addr_mux2sel <= "---";
        areg_wr_sel <= "--";
        areg_rd_sel <= "--";
        ld_ir <= '0';
        bus_rw_int <= '0';
        
        case current_state is
        when RESET1 => -- ld PC and MAR with address 0
            ld_mar <= '1';
            ld_pc <= '1';
            addr_mux1sel <= '0';
            addr_mux2sel <= "000";
            addr_bypass_en <= '1';
            next_state <= ONLY_FETCH; 
        when DECODE =>
            if IR(15 downto 14) = "01" then
                if IR(11) = '0' then -- GET EXTENDED: MAR <- aReg + offset7
                    ld_mar <= '1';
                    areg_rd_sel <= IR(13 downto 12);
                    addr_mux1sel <= '1'; -- select Areg
                    addr_mux2sel <= "110"; -- select offset in
                    addr_offset_sel <= "101"; -- 7 bit offset
                    addr_bypass_en <= '0';
                    next_state <= EXTGET1;
                elsif IR(11) = '1' then -- SET EXTENDED: MAR <- aReg + offset7, MDR <- gpr
                    ld_mar <= '1';
                    areg_rd_sel <= IR(13 downto 12);
                    addr_mux1sel <= '1'; -- select Areg
                    addr_mux2sel <= "110"; -- select offset in
                    addr_offset_sel <= "101"; -- 7 bit offset
                    addr_bypass_en <= '0';
                    
                    ld_mdr <= '1';
                    mdr_src_sel <= '0';
                    alu_funct <= "1001"; -- srcA
                    reg_out1_sel <= IR(10 downto 8);
                    
                    next_state <= EXTSET1;
                end if;
            elsif IR(15 downto 13) = "001" then
                -- BRANCH:
                if IR(12 downto 11) /= "00" then -- if cond, PC & MAR <= PC + soffset
                    addr_mux1sel <= '0';
                    addr_mux2sel <= "110";
                    addr_offset_sel <= "110";
                    addr_bypass_en <= '0';
                    if branch_cond_true = '1' then
                        ld_pc <= '1';
                        ld_mar <= '1';  
                    end if;
                    next_state <= ONLY_FETCH;
                else next_state <= DECODE;
                end if;
            -- TWO OPERAND ARITHMETIC
            elsif IR(15 downto 14) = "10" then
                if IR(6 downto 3) = "0000" then -- greg. reg <= ra op rb. fetch
                    alu_funct <= "0" & IR(13 downto 11);
                    flags_ld_alu <= '1';
                    alu_src2_sel <= "00";
                    reg_wr_src_sel <= '0';
                    reg_wr_en <= '1';
                    reg_out1_sel <= IR(10 downto 8);
                    reg_out2_sel <= IR(2 downto 0);
                    reg_wr_sel <= IR(10 downto 8);
                    
                    -- FETCH:
                    ld_ir <= '1';
                    addr_mux1sel <= '0'; -- pc <= pc + 2
                    ld_pc <= '1';
                    ld_mar <= '1';
                    addr_mux2sel <= "010";
                    addr_bypass_en <= '0';
                    
                    next_state <= DECODE; -- this is correct
                elsif IR(6 downto 2) = "00010" then -- [areg--]. mar <- areg.
                    ld_mar <= '1';
                    areg_rd_sel <= IR(1 downto 0);
                    addr_mux1sel <= '1';
                    addr_mux2sel <= "000";
                    
                elsif IR(6 downto 0) = "0011100" then -- imm16. mdr <- mem. pc & mar = pc + 2
                    mdr_src_sel <= '1';
                    ld_mdr <= '1';
                    ld_pc <= '1';
                    ld_mar <= '1';
                    addr_mux1sel <= '0';
                    addr_mux2sel <= "010";
                    addr_bypass_en <= '0';
                    
                    next_state <= TO_IMM1;
                else next_state <= DECODE;
                end if;
            else next_state <= DECODE;
            end if;
        when EXTGET1 => -- MDR <= bus, MAR <= PC
            mdr_src_sel <= '1';
            ld_mdr <= '1';
            ld_mar <= '1';
            addr_mux1sel <= '0';
            addr_bypass_en <= '0';
            addr_mux2sel <= "000";
            next_state <= EXTGET2;
        when EXTGET2 => -- GPR <= MDR, fetch
            alu_funct <= "1000"; -- alu out <= src2
            alu_src2_sel <= "11"; -- mdr as src
            reg_wr_src_sel <= '0';
            reg_wr_sel <= IR(10 downto 8);
            reg_wr_en <= '1';
            
            -- FETCH:
            ld_ir <= '1';
            addr_mux1sel <= '0'; -- pc <= pc + 2
            ld_pc <= '1';
            ld_mar <= '1';
            addr_mux2sel <= "010";
            addr_bypass_en <= '0';
            
            next_state <= DECODE;
        when EXTSET1 => -- bus write, MAR <- PC
            bus_rw_int <= '1';
            ld_mar <= '1';
            addr_mux2sel <= "000";
            addr_bypass_en <= '0';
            addr_mux1sel <= '0';
            next_state <= ONLY_FETCH;
        when ONLY_FETCH => -- Fetch
            -- FETCH:
            ld_ir <= '1';
            addr_mux1sel <= '0'; -- pc <= pc + 2
            ld_pc <= '1';
            ld_mar <= '1';
            addr_mux2sel <= "010";
            addr_bypass_en <= '0';
            
            next_state <= DECODE;
        when TO_IMM1 => -- reg <- reg op mdr; fetch
            reg_out1_sel <= IR(10 downto 8);
            alu_src2_sel <= "11";
            alu_funct <= '0' & IR(13 downto 11);
            flags_ld_alu <= '1';
            reg_wr_en <= '1';
            reg_wr_src_sel <= '0';
            reg_wr_sel <= IR(10 downto 8);
            
            -- FETCH:
            ld_ir <= '1';
            addr_mux1sel <= '0'; -- pc <= pc + 2
            ld_pc <= '1';
            ld_mar <= '1';
            addr_mux2sel <= "010";
            addr_bypass_en <= '0';
            
            next_state <= DECODE;
        when others => next_state <= RESET1;
        end case;
    end process;

-- bus assignments
    bus_sel <= (ld_mdr and mdr_src_sel) or ld_IR or bus_rw_int;
    bus_rw <= bus_rw_int; -- 1 indicates write
end Behavioral;
