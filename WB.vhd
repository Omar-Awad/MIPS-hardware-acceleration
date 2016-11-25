
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WB is
PORT (
		ALUoutput : in std_logic_vector(31 downto 0);
		MEMoutput : in std_logic_vector(31 downto 0);
		MEMtoReg : in std_logic;
		wb_data : out std_logic_vector(31 downto 0)
		);
end WB;

architecture Behavioral of WB is

begin
wb_data <= ALUoutput when MEMtoReg = '0' else MEMoutput;
end Behavioral;

