
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AND_OR32b is
    Port ( X : in  STD_LOGIC_vector (31 downto 0);
           Y : in  STD_LOGIC_vector (31 downto 0);
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC_vector (31 downto 0));
end AND_OR32b;

architecture Behavioral of AND_OR32b is

	component AND_OR is
		Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC);
	end component;
	
	signal outp : STD_LOGIC_vector (31 downto 0);
	
	begin
	gen: for i in 0 to 31 generate
	AND_GEN: AND_OR port map (X(i),Y(i),sel,outp(i));
	end generate;
	Z<= outp;
end Behavioral;

