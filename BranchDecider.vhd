
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BranchDecider is
    Port ( NEXT_PC: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
			  SIGN_EXTEND: in  STD_LOGIC_VECTOR (31 downto 0);
           A : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           OUTPUT : out STD_LOGIC_VECTOR (31 DOWNTO 0) );
end BranchDecider;

architecture Behavioral of BranchDecider is

	component ADD_SUB is
		port(
		X	: in	STD_LOGIC_VECTOR(31 downto 0);
		Y	: in	STD_LOGIC_VECTOR(31 downto 0);
		sel : in std_logic;
		COUT	: out	STD_LOGIC;
		S	: out	STD_LOGIC_VECTOR(31 downto 0)
	);
	end component ;
	
	component MUX32b is
		Port ( X : in  STD_LOGIC_vector (31 downto 0);
           Y : in  STD_LOGIC_vector (31 downto 0) ;
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC_vector (31 downto 0));
	end component;	
	
	signal adder_output: STD_LOGIC_VECTOR(31 downto 0);
	signal adder_cout: STD_LOGIC;
	constant adder_operation: STD_LOGIC := '0';
	signal result: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal SEL: STD_LOGIC;
	
begin	
		SEL <= '1' WHEN (A = x"0000000") else '0';		
		adderModule: ADD_SUB port map(NEXT_PC, SIGN_EXTEND, adder_operation , adder_cout,adder_output);
		muxModule: MUX32b port map (adder_output, NEXT_PC, SEL , result);
		OUTPUT <= result;

end Behavioral;

