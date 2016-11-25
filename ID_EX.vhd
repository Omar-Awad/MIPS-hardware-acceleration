LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY ID_EX is
PORT (clk: IN STD_LOGIC;
		rst: IN STD_LOGIC;
		instr_in : in std_logic_vector( 31 downto 0);
		next_PC_in : in std_logic_vector(4 downto 0);
		A_in :in std_logic_vector( 31 downto 0);
		B_in :in std_logic_vector( 31 downto 0);
		sign_extend_in : in std_logic_vector( 31 downto 0);
		A_out :out std_logic_vector( 31 downto 0);
		B_out :out std_logic_vector( 31 downto 0);
		sign_extend_out : out std_logic_vector( 31 downto 0);
		instr_out : out std_logic_vector( 31 downto 0);
		next_PC_out : out std_logic_vector(4 downto 0));
END ENTITY;

Architecture flow of ID_EX is

BEGIN
  process(clk,rst)
  BEGIN
    if(rst = '0') then
    instr_out <= x"00000000";
	 next_PC_out <= "00000";
	 A_out <= x"00000000";
	 B_out <= x"00000000";
	 sign_extend_out <= x"00000000";
    ELSIF(clk'event and clk = '1') then
    instr_out <= instr_in;
	 next_PC_out <= next_PC_in;
	 A_out <= A_in;
	 B_out <= B_in;
	 sign_extend_out <= sign_extend_in;
    END IF;
  END process;
END architecture;