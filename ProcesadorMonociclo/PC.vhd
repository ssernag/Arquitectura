----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:43 10/01/2016 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
    Port ( SalidaNpc : in  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           SalidaPC : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is

begin

process(CLK,Reset, SalidaNpc)
	begin
	
	if (reset='1') then
	   SalidaPC<=(others=>'0');
   else 
	  if (rising_edge(CLK)) then
		    SalidaPC<=SalidaNpc;
		end if;
	end if;
	end process;



end Behavioral;

