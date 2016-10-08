library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX32b is
    Port ( X : in  STD_LOGIC_vector (31 downto 0);
           Y : in  STD_LOGIC_vector (31 downto 0) ;
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC_vector (31 downto 0));
end MUX32b;

architecture Behavioral of MUX32b is

	component MUX1b is
		Port ( X : in  STD_LOGIC;
					  Y : in  STD_LOGIC;
					  sel : in  STD_LOGIC;
					  Z : out  STD_LOGIC);
	end component;
	
	signal output : std_logic_vector ( 31 downto 0);
	
	begin
	
		MUX_gen: for i in 0 to 31 generate
		MUX:	MUX1b port map (X(i),Y(i),sel,output(i));
		end generate;	
		Z <= output;
		
	end Behavioral;

