library IEEE;	
use IEEE.STD_LOGIC_1164.ALL;	
use IEEE.STD_LOGIC_ARITH.ALL;	
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity MEM is	
Port (
		write_read : in std_logic;
		address : in std_logic_vector(4 downto 0);		
		write_data: in std_logic_vector(31 downto 0);
		read_data: out std_logic_vector(31 downto 0)
	   ); 	
end entity;
	
architecture arch of MEM is	

type memory is array(31 downto 0) of std_logic_vector(31 downto 0);	
signal dataMEM : memory;	

begin	
process(clk)
begin
  if(write_read = '1') then 
		dataMEM(conv_integer(address)) <= write_data;
    else
      read_data <= dataMEM(conv_integer(address));
	end if;
	end process;
end arch;	
