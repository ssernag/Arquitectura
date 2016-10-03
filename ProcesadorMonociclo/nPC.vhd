----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:11 10/01/2016 
-- Design Name: 
-- Module Name:    nPC - Behavioral 
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

entity nPC is
    Port ( SalidaSumador : in  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           SalidaNpc : out  STD_LOGIC_VECTOR (31 downto 0));
end nPC;

architecture Behavioral of nPC is

begin
 process(CLK,Reset, SalidaSumador)
	begin
	
	if (reset='1') then
	   SalidaNpc<=(others=>'0');
   else 
	  if (rising_edge(CLK)) then
		    SalidaNpc<=SalidaSumador;
		end if;
	end if;
	end process;


end Behavioral;

