----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:22:08 10/08/2016 
-- Design Name: 
-- Module Name:    BranchDecider - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BranchDecider is
    Port ( PREVIOUS_STAGE : in  STD_LOGIC_VECTOR (31 DOWNTO 0);
           NEXT_PC: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
			  SIGN_EXTEND: in  STD_LOGIC_VECTOR (31 downto 0);
           SEL : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (31 DOWNTO 0) );
end BranchDecider;

architecture Behavioral of BranchDecider is

	component ADD_SUB is
		port(
		X	: in	STD_LOGIC_VECTOR(31 downto 0);
		Y	: in	STD_LOGIC_VECTOR(31 downto 0);
		sel : in std_logic;
		COUT	: out	STD_LOGIC;
		S	: out	STD_LOGIC_VECTOR(31 downto 0)
	);
	end component ;
	
	component MUX32b is
		Port ( X : in  STD_LOGIC_vector (31 downto 0);
           Y : in  STD_LOGIC_vector (31 downto 0) ;
           sel : in  STD_LOGIC;
           Z : out  STD_LOGIC_vector (31 downto 0));
	end component;	
	
	signal adder_output: STD_LOGIC_VECTOR(31 downto 0);
	signal adder_cout: STD_LOGIC;
	constant adder_operation: STD_LOGIC := '0';
	signal result: STD_LOGIC_VECTOR (31 DOWNTO 0);
	
	
begin
	
		adderModule: ADD_SUB port map(PREVIOUS_STAGE, SIGN_EXTEND, adder_operation , adder_cout,adder_output);
		muxModule: MUX32b port map (adder_output, NEXT_PC, SEL , result);
		OUTPUT <= result;

end Behavioral;

