
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_OR is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end AND_OR;

architecture Behavioral of AND_OR is

begin
Z <= ( X and Y and not(sel)) or ( (X or Y ) and sel);

end Behavioral;

