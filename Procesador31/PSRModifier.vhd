----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:33:38 10/27/2016 
-- Design Name: 
-- Module Name:    PSRModifier - arq_PSRModifier 
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--when "000000" =>-- Add
					--OutUC<= "000001"; 
				--when "000100" =>-- Sub
					--OutUC <= "000010"; 
				---when "000001" => -- And
					--OutUC <= "000011";
				--when "000101" =>-- Nand
              -- OutUC<= "000100"; 
				--when "000010" =>-- Or
					--OutUC <= "000101"; 	
				--when "000110" =>-- Nor
					--OutUC<= "000110"; 
				--when "000011" =>-- Xor
					--OutUC <= "000111"; 
				--when "000111" =>-- Xnor	
					--OutUC <= "001000"; 
				--when "010000"  =>-- Addcc
					---OutUC<= "001001"; 
				--when "001000"  =>-- Addx
					--OutUC <= "001010"; 
				--when "011000"  => -- Addxcc
					--OutUC <= "001011";
				--when "010100" =>-- Subcc
					--OutUC <= "001100"; 
				--when "001100"  =>-- Subx
					--OutUC <= "001101"; 
				--when "011100" =>-- Subxcc
					--OutUC <= "001110"; 
				--when "010001" =>-- Andcc
					--OutUC<= "001111"; 
				--when "010101"  =>-- Nandcc
					--OutUC <= "010000"; 
				--when "010010"  => -- Orcc
					--OutUC <= "010001";
				--when "010110" =>-- Norcc
					--OutUC <= "010010"; 
				--when "010011"  =>-- Xorcc
					--OutUC <= "010011"; 
				--when "010111"  =>-- Xnorcc				
					--OutUC <= "010100"; 
				--when others =>
               -- OutUC <= "000000";	

entity PSRModifier is
    Port ( OutUC : in  STD_LOGIC_VECTOR (5 downto 0);
           Crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Reset : in  STD_LOGIC;
           OutALU : in  STD_LOGIC_VECTOR (31 downto 0);
           NZVC : out  STD_LOGIC_VECTOR (3 downto 0));
end PSRModifier;

architecture arq_PSRModifier of PSRModifier is

begin 
  process(OutUC,OutALU,Crs1,Crs2)
    begin 
	 if (OutUC= "001111" or OutUC="010000" or OutUC="010001" or OutUC="010010" or  OutUC="010011" or  OutUC="010100") then
	      NZVC(3)<=OutALU(31);
			  if (conv_integer(OutALU)=0) then
			       NZVC(2)<= '1';
					 else 
					 NZVC(2)<='0';
			 end if;
			NZVC(1)<='0';
         NZVC(0)<='0';
			end if;

         if (OutUC="001001" or OutUC="001011") then
			NZVC(3)<=OutALU(31);
			  if (conv_integer(OutALU)=0) then
			       NZVC(2)<= '1';
					 else 
					 NZVC(2)<='0';
			  end if;			  
			NZVC(1) <= (Crs1(31) and Crs2(31) and (not OutALU(31))) or ((Crs1(31)) and (not Crs2(31)) and OutALU(31)); 
         NZVC(0) <= (Crs1(31) and Crs2(31)) or ((not OutALU(31)) and (Crs1(31) or Crs2(31)));
			end if;
		
			  if (OutUC="001100"  or OutUC="001110") then 
			      if (OutUC="001001" or OutUC="001011") then
			NZVC(3)<=OutALU(31);
			  if (conv_integer(OutALU)=0) then
			       NZVC(2)<= '1';
					 else 
					 NZVC(2)<='0';
			  end if;
           NZVC(1) <= (Crs1(31) and (not Crs2(31)) and (not OutALU(31))) or ((not Crs1(31)) and Crs2(31) and OutALU(31));			  
			  NZVC(0) <= ((not Crs1(31)) and Crs2(31)) or (OutALU(31) and ((not Crs1(31)) or Crs2(31)));
			 
				  end if;
			end if;  		  
 
   end process;  
				  


end arq_PSRModifier;

