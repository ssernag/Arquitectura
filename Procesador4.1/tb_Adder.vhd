--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:20:48 11/09/2016
-- Design Name:   
-- Module Name:   C:/Users/CBAS/Desktop/UTP/Laboratorio de electronica/EJERCICIOS/XILINX PROYECTOS 20152 NOVIEMBRE 07/Procesador4/tb_adder.vhd
-- Project Name:  Procesador4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADDER
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
 
ENTITY tb_adder IS
END tb_adder;
 
ARCHITECTURE behavior OF tb_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADDER
    PORT(
         In1 : IN  std_logic_vector(31 downto 0);
         SalidaPC : IN  std_logic_vector(31 downto 0);
         SalidaSumador : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In1 : std_logic_vector(31 downto 0) := (others => '0');
   signal SalidaPC : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal SalidaSumador : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADDER PORT MAP (
          In1 => In1,
          SalidaPC => SalidaPC,
          SalidaSumador => SalidaSumador
        );

 
 

   -- Stimulus process
   stim_proc: process
	begin
	
		 SalidaPC <= "00000000000000000000000000000001";
		 In1 <="00000000000000000000000000000000";
		 wait for 20ns;
		 SalidaPC <= "00000110000000000000011111111111";
		 In1 <="00001000000000001100000000000000";
		 wait for 20 ns;
		 SalidaPC <= "00000000001111111111111111111111";
		 In1 <="00000000000111111111111110000000";
		 wait;
	end process;

END;
