
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

USE ieee.numeric_std.ALL;
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         RegIn1 : IN  std_logic_vector(31 downto 0);
         RegIn2 : IN  std_logic_vector(31 downto 0);
         SignExtendIn : IN  std_logic_vector(31 downto 0);
         ALUOp : IN  std_logic_vector(1 downto 0);
         ALU_inSel : IN  std_logic;
         ALU_Out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RegIn1 : std_logic_vector(31 downto 0) := (others => '0');
   signal RegIn2 : std_logic_vector(31 downto 0) := (others => '0');
   signal SignExtendIn : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUOp : std_logic_vector(1 downto 0) := (others => '0');
   signal ALU_inSel : std_logic := '0';

 	--Outputs
   signal ALU_Out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          RegIn1 => RegIn1,
          RegIn2 => RegIn2,
          SignExtendIn => SignExtendIn,
          ALUOp => ALUOp,
          ALU_inSel => ALU_inSel,
          ALU_Out => ALU_Out
        );
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      RegIn1 <= std_logic_vector(to_unsigned(50, RegIn1'length));
		RegIn2 <= std_logic_vector(to_unsigned(21, RegIn1'length));
		SignExtendIn <= std_logic_vector(to_unsigned(33, RegIn1'length)); 
		ALUOp <= "00";
		ALU_inSel<= '0';
      wait for clk_period*10;

      RegIn1 <= std_logic_vector(to_unsigned(50, RegIn1'length));
		RegIn2 <= std_logic_vector(to_unsigned(77, RegIn1'length));
		SignExtendIn <= std_logic_vector(to_unsigned(33, RegIn1'length)); 
		ALUOp <= "01";
		ALU_inSel<= '0';
      wait for clk_period*10;
		
		RegIn1 <= std_logic_vector(to_unsigned(50, RegIn1'length));
		RegIn2 <= std_logic_vector(to_unsigned(21, RegIn1'length));
		SignExtendIn <= std_logic_vector(to_unsigned(33, RegIn1'length)); 
		ALUOp <= "10";
		ALU_inSel<= '1';
      wait for clk_period*10;
		
		RegIn1 <= std_logic_vector(to_unsigned(50, RegIn1'length));
		RegIn2 <= std_logic_vector(to_unsigned(21, RegIn1'length));
		SignExtendIn <= std_logic_vector(to_unsigned(33, RegIn1'length)); 
		ALUOp <= "11";
		ALU_inSel<= '1';
      wait for clk_period*10;
		
		RegIn1 <= std_logic_vector(to_unsigned(50, RegIn1'length));
		RegIn2 <= std_logic_vector(to_unsigned(21, RegIn1'length));
		SignExtendIn <= std_logic_vector(to_unsigned(33, RegIn1'length)); 
		ALUOp <= "00";
		ALU_inSel<= '0';
      wait for clk_period*10;
		
		
      wait;
   end process;

END;
