library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
 
entity ADD_SUB is    
	port(
		X	: in	STD_LOGIC_VECTOR(31 downto 0);
		Y	: in	STD_LOGIC_VECTOR(31 downto 0);
		sel : in std_logic;
		COUT	: out	STD_LOGIC;
		S	: out	STD_LOGIC_VECTOR(31 downto 0)
	);
end ADD_SUB;

architecture arch of ADD_SUB is

  
	component Full_adder is
	    port(
			X	: in	STD_LOGIC;
			Y	: in	STD_LOGIC;
			CIN	: in	STD_LOGIC;
			COUT	: out	STD_LOGIC;
			S	: out	STD_LOGIC
	    );
	end component Full_adder;
	
	component MUX32b is
		Port ( X : in  STD_LOGIC_vector (31 downto 0);
           Y : in  STD_LOGIC_vector (31 downto 0) ;
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC_vector (31 downto 0));
	end component;
	
	signal Carry :	STD_LOGIC_VECTOR (31 downto 0);
   signal in2 : STD_LOGIC_VECTOR (31 downto 0);   
	signal CIN	: STD_LOGIC;

begin

	Input_MUX: MUX32b port map (Y, not(Y) , sel , in2);
	CIN <= sel;
	Begin_FA:	
		FULL_ADDER port map (
			X	=> X(0),
			Y	=> in2(0),
			CIN	=> CIN,
			COUT	=> Carry(0),
			S	=> S(0)
		);
	GEN_ADDER:
		for i in 1 to 31 generate
			Next_FA:
				Full_adder port map (
					X	=> X(i),
					Y	=> in2(i),	
					CIN	=> Carry(i-1),
					COUT=> Carry(i),
					S	=> S(i)
				);
		end generate;
	COUT <= Carry(31);
	
end arch;
