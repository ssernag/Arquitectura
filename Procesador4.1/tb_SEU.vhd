--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:26:06 11/09/2016
-- Design Name:   
-- Module Name:   C:/Users/CBAS/Desktop/UTP/Laboratorio de electronica/EJERCICIOS/XILINX PROYECTOS 20152 NOVIEMBRE 07/Procesador4/tb_SEU.vhd
-- Project Name:  Procesador4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SEU
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
 
ENTITY tb_SEU IS
END tb_SEU;
 
ARCHITECTURE behavior OF tb_SEU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SEU
    PORT(
         IMM13Bits : IN  std_logic_vector(12 downto 0);
         Out_SEU : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IMM13Bits : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal Out_SEU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEU PORT MAP (
          IMM13Bits => IMM13Bits,
          Out_SEU => Out_SEU
        );

 

   -- Stimulus process
   stim_proc: process
    begin		
      IMM13Bits<="1111111111001";
      wait;
   end process;

END;
