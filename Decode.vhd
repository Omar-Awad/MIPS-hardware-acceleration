LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
use ieee.numeric_std.all;

entity Decode is 
port ( 
	 read_write : in std_logic;
    wb_addr : in std_logic_vector(4 downto 0);
	 wb_data: in std_logic_vector( 31 downto 0 );
    instr : in std_logic_vector( 31 downto 0 );
	 DecOpcode : in std_logic_vector(2 downto 0);
	 read_data1: out std_logic_vector(31 downto 0);
	 read_data2: out std_logic_vector(31 downto 0);
	 sign_extend: out std_logic_vector(31 downto 0)) ;
end entity ;

architecture arch of Decode is
type memory is array (31 downto 0) of std_logic_vector( 31 downto 0 );
signal registerFile : memory:= (others => x"00000000");
--constant registerFile(0):= x"00000000";
signal readSel1, readSel2: std_logic_vector(4 downto 0):= "00000" ;
signal imm: std_logic_vector(15 downto 0):= x"0000";

begin 
process(read_write)
begin

if(read_write = '1') then --read
case DecOpcode is
   --JRa
	when "001" => readSel1 <= instr(25 downto 21); readSel2 <= "00000"; imm <= instr(15 downto 0);
	--BEQZ
	when "010" => readSel1 <= instr(26 downto 22); readSel2 <=instr(20 downto 16); imm <= instr(15 downto 0);
	--ADD/SUB/AND/OR
	when "011" => readSel1 <= instr(22 downto 18); readSel2 <=instr(16 downto 12); imm <= x"0000";
	--SUBI/ADDI
	when "100" => readSel1 <= instr(22 downto 18); readSel2 <="00000"; imm <= instr(16 downto 1);
	--LW/SW
	when "101" => readSel1 <= "00000"; readSel2 <= instr(20 downto 16); imm <= instr(15 downto 0);
	when others => readSel1 <= "00000"; readSel2 <= "00000"; imm <= x"0000";
end case;
  else
		registerFile(conv_integer(wb_addr)) <= wb_data;
end if;
end process;
read_data1 <= registerFile(conv_integer(readSel1));
read_data2 <= registerFile(conv_integer(readSel2));
sign_extend <= std_logic_vector(resize(signed(imm), 32));
end arch;