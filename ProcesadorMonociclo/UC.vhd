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

architecture Behavioral of UC is

begin

process (op,op3)
 begin 
    if (op="10") then
	   case op3 is
	   when "000001"=>--And
		     OutUC <="000000";
	   when "000010"=> --OR
		     OutUC <="000001";
		when "000011"=> --XOr
		     OutUC <="000011";
		when "000000"=>-- ADD
		     OutUC <="000111";	
		when "000100"=>--SUB
		      OutUC <="001111";	
      when others=>
            OutUC <="111111";		
	   end case;
	end if;	
end process;	

end Behavioral;

