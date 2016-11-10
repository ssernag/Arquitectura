--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:23:42 11/09/2016
-- Design Name:   
-- Module Name:   C:/Users/CBAS/Desktop/UTP/Laboratorio de electronica/EJERCICIOS/XILINX PROYECTOS 20152 NOVIEMBRE 07/Procesador4/tb_RF.vhd
-- Project Name:  Procesador4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RF
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_RF IS
END tb_RF;
 
ARCHITECTURE behavior OF tb_RF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF
    PORT(
         Rd : IN  std_logic_vector(4 downto 0);
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Crs1 : OUT  std_logic_vector(31 downto 0);
         Crs2 : OUT  std_logic_vector(31 downto 0);
         dwr : IN  std_logic_vector(31 downto 0);
         Reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Rd : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal dwr : std_logic_vector(31 downto 0) := (others => '0');
   signal Reset : std_logic := '0';

 	--Outputs
   signal Crs1 : std_logic_vector(31 downto 0);
   signal Crs2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF PORT MAP (
          Rd => Rd,
          Rs1 => Rs1,
          Rs2 => Rs2,
          Crs1 => Crs1,
          Crs2 => Crs2,
          dwr => dwr,
          Reset => Reset
        );


 

   -- Stimulus process
   stim_proc: process
    begin		
	
	RST <= '1';
      -- hold reset state for50 ns.
      wait for 50 ns;
			Reset <='0';
			Rs1 <= "10000";
			Rs2 <= "10001";
			Rd  <= "10010";
			dwr  <= "00000000000000000000000000010011";
       -- insert stimulus here 

      wait;
   end process;

END;
