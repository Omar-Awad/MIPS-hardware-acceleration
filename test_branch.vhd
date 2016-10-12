--------------------------------------------------------------------------------
-- Company: 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY test_branch IS
END test_branch;
 
ARCHITECTURE behavior OF test_branch IS 
 
 
    COMPONENT BranchDecider
    PORT(
         NEXT_PC : IN  std_logic_vector(31 downto 0);
         SIGN_EXTEND : IN  std_logic_vector(31 downto 0);
         A : IN  std_logic_vector(31 downto 0);
         OUTPUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal NEXT_PC : std_logic_vector(31 downto 0) := (others => '0');
   signal SIGN_EXTEND : std_logic_vector(31 downto 0) := (others => '0');
   signal A : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal OUTPUT : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BranchDecider PORT MAP (
          NEXT_PC => NEXT_PC,
          SIGN_EXTEND => SIGN_EXTEND,
          A => A,
          OUTPUT => OUTPUT
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
     
	  
	  NEXT_PC <= x"00001000";
	  SIGN_EXTEND <= x"00900001";
	  A <= x"00000011";
wait for 50ns;
	  NEXT_PC <= x"44000000";
	  SIGN_EXTEND <= x"00090001";
	  A <= x"00000000";  
	  
	  
	 
      wait;
   end process;

END;
