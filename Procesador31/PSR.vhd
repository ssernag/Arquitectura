----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:25 10/31/2016 
-- Design Name: 
-- Module Name:    PSR - Behavioral 
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

entity PSR is
    Port ( CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           NZVC : in  STD_LOGIC_VECTOR (3 downto 0);
           Carry : out  STD_LOGIC);
end PSR;

architecture arq_PSR of PSR is

begin
   process( CLK,Reset, NZVC)
        begin
		    if (Reset='1') then
			   Carry<='0';
			else 
            if (rising_edge(CLK)) then
              Carry<= NZVC(0);
            end if;
           end if;
    end process;			  

end  arq_PSR ;

