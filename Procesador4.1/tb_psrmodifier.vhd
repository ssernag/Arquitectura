--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:27:27 11/09/2016
-- Design Name:   
-- Module Name:   C:/Users/CBAS/Desktop/UTP/Laboratorio de electronica/EJERCICIOS/XILINX PROYECTOS 20152 NOVIEMBRE 07/Procesador4/tb_psrmodifier.vhd
-- Project Name:  Procesador4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSRModifier
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
 
ENTITY tb_psrmodifier IS
END tb_psrmodifier;
 
ARCHITECTURE behavior OF tb_psrmodifier IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSRModifier
    PORT(
         OutUC : IN  std_logic_vector(5 downto 0);
         Crs1 : IN  std_logic_vector(31 downto 0);
         Crs2 : IN  std_logic_vector(31 downto 0);
         Reset : IN  std_logic;
         OutALU : IN  std_logic_vector(31 downto 0);
         NZVC : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OutUC : std_logic_vector(5 downto 0) := (others => '0');
   signal Crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Crs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal Reset : std_logic := '0';
   signal OutALU : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal NZVC : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSRModifier PORT MAP (
          OutUC => OutUC,
          Crs1 => Crs1,
          Crs2 => Crs2,
          Reset => Reset,
          OutALU => OutALU,
          NZVC => NZVC
        );



   -- Stimulus process
   stim_proc: process
   begin				
      -- hold reset state for 100 ns.
		OutALU<= x"00000000";
		Crs1 <= "1111111111111111111111111111111";
 		Crs2  <= "1111111111111111111111111111111";
		OutUC <= "001001";
      wait for 100 ns;	
		OutALU<= x"0000000F";
		Crs1 <= "1111111111111111111111111111111";
 		Crs2  <= "00000000000000000000000000000000";
		OutUC <= "001100";
		wait for 100 ns;
		OutALU<= x"F000010F";
		Crs1 <= "00000000000000000000000000000000";
 		Crs2  <= "1111111111111111111111111111111";
		OutUC <= "001011";
		wait for 100 ns;
		OutALU<= x"F0000000";
		Crs1 <= "00000000000000000000000000000000";
 		Crs2  <= "00000000000000000000000000000000";
		OutUC <= "010001";
      wait;
   end process;

END;
