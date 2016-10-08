library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux1b is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end Mux1b;

architecture Behavioral of Mux1b is

begin

	Z <= ((not(sel)) and X ) or ( sel and Y);

end Behavioral;

