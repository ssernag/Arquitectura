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
           Carry : out  STD_LOGIC;
			  NCwp : in  STD_LOGIC;
			  Cwp : out STD_LOGIC
			  );
end PSR;

architecture arq_PSR of PSR is

begin
   process(CLK)
        begin
		    if(rising_edge(CLK))then
		    if (Reset='1') then
			   Carry<='0';
				Cwp<='0';
			else
				if NCwp = '1' then
					Cwp <= '1';
				else
					Cwp <= '0';
				end if;
				if NZVC(0) = '1' then
					Carry <= '1';
				else 
					Carry <= '0';
            end if;
           end if;
			end if;  
    end process;			  

end  arq_PSR ;

