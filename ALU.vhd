
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALU is
    Port ( RegIn1 : in  STD_LOGIC_VECTOR (31 downto 0);
           RegIn2 : in  STD_LOGIC_VECTOR (31 downto 0);
           SignExtendIn : in  STD_LOGIC_VECTOR (31 downto 0);
			  ALUOp 			: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
			  ALU_inSel 	   : IN 	STD_LOGIC;
           ALU_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

	component ADD_SUB is
		port(
		X	: in	STD_LOGIC_VECTOR(31 downto 0);
		Y	: in	STD_LOGIC_VECTOR(31 downto 0);
		sel : in std_logic;
		COUT	: out	STD_LOGIC;
		S	: out	STD_LOGIC_VECTOR(31 downto 0)
	);
	end component ;
	
	component AND_OR32b is
	Port ( X : in  STD_LOGIC_vector (31 downto 0);
           Y : in  STD_LOGIC_vector (31 downto 0);
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC_vector (31 downto 0));
	end component;	

	component MUX32b is
		Port ( X : in  STD_LOGIC_vector (31 downto 0);
           Y : in  STD_LOGIC_vector (31 downto 0) ;
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC_vector (31 downto 0));
	end component;		  
	
	signal X : STD_LOGIC_vector (31 downto 0);
	signal Y : STD_LOGIC_vector (31 downto 0);
	signal COUT	: 	STD_LOGIC;
	signal AddSub_out	: STD_LOGIC_VECTOR(31 downto 0);
	signal AndOr_out	: STD_LOGIC_VECTOR(31 downto 0);
	signal res : STD_LOGIC_VECTOR(31 downto 0);
	
	begin
	X <= RegIn1;
	input_MUX: MUX32b port map ( RegIn2, SignExtendIn, ALU_inSel, Y);
	AddSub : ADD_SUB port map(X, Y, ALUOp(0), COUT ,AddSub_out);
	AndOr : AND_OR32b port map(X, Y, ALUOp(0), AndOr_out);
	Output_select: MUX32b port map(AddSub_out, AndOr_out, ALUOp(1), res);
	ALU_Out <= res;
end Behavioral;

