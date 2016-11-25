LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Decode_test IS
END Decode_test;
 
ARCHITECTURE behavior OF Decode_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decode
    PORT(
         read_write : IN  std_logic;
         wb_addr : IN  std_logic_vector(4 downto 0);
         wb_data : IN  std_logic_vector(31 downto 0);
         instr : IN  std_logic_vector(31 downto 0);
         DecOpcode : IN  std_logic_vector(2 downto 0);
         read_data1 : OUT  std_logic_vector(31 downto 0);
         read_data2 : OUT  std_logic_vector(31 downto 0);
         sign_extend : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal read_write : std_logic := '0';
   signal wb_addr : std_logic_vector(4 downto 0) := (others => '0');
   signal wb_data : std_logic_vector(31 downto 0) := (others => '0');
   signal instr : std_logic_vector(31 downto 0) := (others => '0');
   signal DecOpcode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal read_data1 : std_logic_vector(31 downto 0);
   signal read_data2 : std_logic_vector(31 downto 0);
   signal sign_extend : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decode PORT MAP (
          read_write => read_write,
          wb_addr => wb_addr,
          wb_data => wb_data,
          instr => instr,
          DecOpcode => DecOpcode,
          read_data1 => read_data1,
          read_data2 => read_data2,
          sign_extend => sign_extend
        );

   -- Stimulus process
   stim_proc: process
   begin		
    read_write <= '0';
	 wb_addr <= "00001";
	 wb_data <= x"00001111";
	 wait for 100ns;
	 
	 read_write <= '1';
	 instr <= "00001000010001000000000000001010";
	 DecOpcode <= "100";
      wait;
   end process;

END;
