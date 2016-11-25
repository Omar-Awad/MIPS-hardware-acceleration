LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use IEEE.STD_LOGIC_ARITH.ALL;	
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity Fetch is 
port ( 
		 PC_Src : in std_logic ;
		 branch_addr: in std_logic_vector(4 downto 0);
       newPC : out std_logic_vector( 4 downto 0 );
	    instr : out std_logic_vector( 31 downto 0 )
	  ) ;
end entity ;

architecture arch of Fetch is 
signal PC : std_logic_vector(4 downto 0):= "00000";
type memory is array (31 downto 0) of std_logic_vector(31 downto 0 );
signal PCnew : std_logic_vector(4 downto 0);
constant instrMEM : memory := (
1 => x"11111111" , 
2 => x"11010101" , 
3 => x"01101000" , 
4 => x"10011011" , 
5 => x"01101101" , 
6 => x"00110111" , 
others => x"00000000" ) ;
begin
   newPC <= PCnew;
	PCnew <= PC + "00001";
	PC <= PCnew when PC_Src = '0' else branch_addr;
	instr <= instrMEM(conv_integer(PC));
end arch;