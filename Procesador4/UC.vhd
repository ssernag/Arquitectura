----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:27:28 10/10/2016 
-- Design Name: 
-- Module Name:    UC - Behavioral 
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

entity UC is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           OutUC : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;

architecture arq_UC of UC is

begin

process (op,op3)
 begin 
    if (op="10") then
	   case op3 is
	         	when "000000" => -- ADD
										OutUC  <= "000000";
											
										when "010000" => -- ADDcc
										OutUC  <= "010000";
											
										when "001000" => -- ADDX
										OutUC  <= "001000";
										
										when "011000" => -- ADDXcc
										OutUC  <= "011000";

										when "000100" => -- SUB
										OutUC <= "000100";
									 
										when "010100" => -- SUBcc
									   OutUC <= "010100";	
											 
										when "001100" => -- SUBX
										OutUC <= "001100";	
										
										when "011100" => -- SUBXcc
										OutUC <= "011100";							
											 
										when "000001" => -- AND
										OutUC <= "000001";
											 
										when "000101" => -- ANDN
										OutUC <= "000101";
										
										when "010101" => -- ANDNcc
										OutUC <= "010101";
											 
										when "010001" => -- ANDcc
										OutUC <= "010001";							
											 
										when "000010" => -- OR
										OutUC <= "000010";
											
										when "000110" => -- ORN
										OutUC <= "000110";
											
										when "010010" => -- ORcc
										OutUC <= "010010";
											
										when "010110" => -- ORNcc
										OutUC <= "010110";	
											 
										when "000011" => -- XOR
										OutUC  <= "000011"; 
											
										when "000111" => -- XNOR
										OutUC <= "000111";
										
										when "010011" => -- XORcc
										OutUC  <= "010011"; 
											
										when "010111" => -- XNORcc
										OutUC <= "010111";	
											
										when others => --otras instrucciones
                               OutUC <= "111111"; 
	              end case;
	end if;	
end process;	

end arq_UC;

