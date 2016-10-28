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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PSRModifier is
    Port ( OutUC : in  STD_LOGIC_VECTOR (5 downto 0);
           Crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           OutMUX : in  STD_LOGIC_VECTOR (31 downto 0);
           Reset : in  STD_LOGIC;
           OutALU : in  STD_LOGIC_VECTOR (31 downto 0);
           NZVC : out  STD_LOGIC_VECTOR (3 downto 0));
end PSRModifier;

architecture arq_PSRModifier of PSRModifier is

begin 
  process(OutUC,OutALU,Crs1,OutMUX)
    begin 
	 if (OutUC) is
	   when "000000" => --And or Andcc
		        NZVC<=Crs1 and OutMUX;
		when "000100" => --andn or Andncc
              NZVC<=Crs1 and not OutMUX;
				  


end arq_PSRModifier;

