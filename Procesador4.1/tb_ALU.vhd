--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:26:33 11/09/2016
-- Design Name:   
-- Module Name:   C:/Users/CBAS/Desktop/UTP/Laboratorio de electronica/EJERCICIOS/XILINX PROYECTOS 20152 NOVIEMBRE 07/Procesador4/tb_alu.vhd
-- Project Name:  Procesador4
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
 
ENTITY tb_alu IS
END tb_alu;
 
ARCHITECTURE behavior OF tb_alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Crs1 : IN  std_logic_vector(31 downto 0);
         Crs2 : IN  std_logic_vector(31 downto 0);
         Carry : IN  std_logic;
         OutUC : IN  std_logic_vector(5 downto 0);
         OutAlu : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Crs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal Carry : std_logic := '0';
   signal OutUC : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal OutAlu : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Crs1 => Crs1,
          Crs2 => Crs2,
          Carry => Carry,
          OutUC => OutUC,
          OutAlu => OutAlu
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
       
      -- insert stimulus here 
--ADD
		Crs1 <= "00000000000000000000000000000111";
		Crs2 <= "00000000000000000000000000000111";
		OutUC <= "000001";
		wait for 20 ns;	
		--SUB
		Crs1 <= "00000000000000000000000000000111";
		Crs2 <= "00000000000000000000000000000111";
		OutUC <= "000010";
		wait for 20 ns;
		--AND
		Crs1 <= "00000000000000000000000000000111";
		Crs2 <= "00000000000000000000000000000111";
		OutUC <= "000011";
		wait for 20 ns;
		--ANDN
		Crs1 <= "00000000000000000000000000000111";
		Crs2 <= "00000000000000000000000000000111";
		OutUC <= "000100";
		wait for 20 ns;
		--OR
		Crs1 <= "00000000000000000000000000000111";
		Crs2 <= "00000000000000000000000000000111";
		OutUC <= "000101";
		wait for 20 ns;
		--ORN
		Crs1 <= "00000000000000000000000000000111";
		Crs2 <= "00000000000000000000000000000111";
		OutUC <= "000110";
		wait for 20 ns;
		--XOR		
		Crs1 <= "00000000000000000000000000000111";
		Crs2 <= "00000000000000000000000000000111";
		OutUC <= "000111";
		wait for 20 ns;
		--XORN
		Crs1 <= "00000000000000000000000000000111";
		Crs2 <= "00000000000000000000000000000111";
		OutUC <= "001000";

      wait;
   end process;

END;
