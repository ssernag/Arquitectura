----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:09:16 10/10/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  Carry : in STD_LOGIC;
           OutUC : in  STD_LOGIC_VECTOR (5 downto 0);
           OutAlu : out  STD_LOGIC_VECTOR (31 downto 0):= "00000000000000000000000000000000");
end ALU;

architecture arq_ALU of ALU is

begin
  process (Crs1,Crs2,OutUC,Carry)
     begin
	    case (OutUC) is
            
                       when "000000" => -- add
										OutAlu <= Crs1 + Crs2;
								
								when "010000" => -- addcc
										OutAlu <= Crs1 + Crs2;
								
							when "001000" => -- addX
										OutAlu <= Crs1 + Crs2 + Carry;
								
							when "011000" => -- addXcc
										OutAlu <= Crs1 + Crs2 + Carry;
								
								when "000100" => -- sub
										OutAlu <= Crs1 - Crs2;
								
								when "010100" => -- subcc
										OutAlu <= Crs1 - Crs2;
								
								when "001100" => -- subX
										OutAlu <= Crs1 - Crs2 - Carry;
								
							when "011100" => -- subXcc
										OutAlu <= Crs1 - Crs2 - Carry;
								
								when "000001" => -- and
										OutAlu <= Crs1 and Crs2;
								
								when "000101" => -- andn
										OutAlu <= Crs1 and not (Crs2);
								
								when "010101" => --andNcc
										OutAlu <= Crs1 and Crs2;
								
								when "010001" => --andcc
										OutAlu <= Crs1 and Crs2;
								
								when "000010" => --or
										OutAlu <= Crs1 or Crs2;
								
								when "000110" => --orn
									OutAlu <= Crs1 or not (Crs2);	
									
								when "010010" => --orcc
										OutAlu <= Crs1 or Crs2;	
								
								when "010110" => --orNcc
										OutAlu <= Crs1 or Crs2;  
								
								when "000011" => -- xor
										OutAlu <= Crs1 xor Crs2;
								
								when "000111" => -- xnor
										OutAlu <= Crs1 xnor Crs2;
								
								when "010011" => -- xorcc
										OutAlu <= Crs1 xor Crs2;				
									
								when others => --otras instrucciones
											OutAlu <= "00000000000000000000000000000000";

        end case;
	end process;	 
  


end arq_ALU;

