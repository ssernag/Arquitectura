--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:30:39 11/01/2016
-- Design Name:   
-- Module Name:   C:/Users/CBAS/Desktop/UTP/Laboratorio de electronica/EJERCICIOS/XILINX PROYECTOS 20152 NOVIEMBRE 07/Procesador3/tb_ALU.vhd
-- Project Name:  Procesador3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Crs1 : IN  std_logic_vector(31 downto 0);
         Crs2 : IN  std_logic_vector(31 downto 0);
         OutUC : IN  std_logic_vector(5 downto 0);
         OutAlu : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Crs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal OutUC : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal OutAlu : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Crs1 => Crs1,
          Crs2 => Crs2,
          OutUC => OutUC,
          OutAlu => OutAlu
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
