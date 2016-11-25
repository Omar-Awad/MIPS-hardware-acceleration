LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY IF_ID is
PORT (clk: IN STD_LOGIC;
		rst: IN STD_LOGIC;
		instr_in : in std_logic_vector( 31 downto 0);
		next_PC_in : in std_logic_vector(4 downto 0);
		instr_out : out std_logic_vector( 31 downto 0);
		next_PC_out : out std_logic_vector(4 downto 0));
END ENTITY;

Architecture flow of IF_ID is

BEGIN
  process(clk,rst)
  BEGIN
    if(rst = '0') then
    instr_out <= x"00000000";
	 next_PC_out <= "00000";
    ELSIF(clk'event and clk = '1') then
    instr_out <= instr_in;
	 next_PC_out <= next_PC_in;
    END IF;
  END process;
END architecture;