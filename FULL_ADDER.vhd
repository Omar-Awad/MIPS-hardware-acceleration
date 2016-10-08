library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity Full_adder is 
    port(
	        X	: in	std_logic;
	        Y	: in	std_logic;
	        CIN	: in	std_logic;
	        COUT	: out	std_logic;
	        S	: out	std_logic
        );
end Full_adder;

architecture arch of Full_adder is

begin

	COUT <= (X and Y) or (X and CIN) or ( Y and CIN );
	S <= X xor Y xor CIN;
end arch;