----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:31 10/01/2016 
-- Design Name: 
-- Module Name:    RF - Behavioral 
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

entity RF is
    Port ( Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Crs1 : out  STD_LOGIC_VECTOR (32 downto 0);
           Crs2 : out  STD_LOGIC_VECTOR (32 downto 0));
end RF;

architecture Behavioral of RF is

begin
  process(Rd,Rs1,Rs2)
	begin
	
	if (Rd /= "00000") then
	   myreg(con_integer(Rd))<=dwr;
   end if; 
	  Crs1<=myreg(Conv_integer(Rs1));
	  Crs2<=myreg(Conv_integer(Rs2));
	  
	end process;


end Behavioral;

