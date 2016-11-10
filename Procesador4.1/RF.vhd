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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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
           Crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Crs2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  dwr  :in STD_LOGIC_VECTOR (31 downto 0);
			  Reset : in  STD_LOGIC);
end RF;

architecture arq_RF of RF is

type ram_type is array (0 to 39) of std_logic_vector (31 downto 0);
signal myreg : ram_type :=(others => x"00000000");

begin
  process(Rd,Rs1,Rs2,dwr,Reset)
	begin 
	 if(Reset='1') then
	   Crs1 <=(others=>'0');
		Crs2 <=(others=>'0');
		
		myreg<=(others=>x"00000000");
		else 
		Crs1<=myreg(Conv_integer(Rs1));
	  Crs2<=myreg(Conv_integer(Rs2));
		
	    if (Rd /= "000000") then
	        myreg(conv_integer(Rd))<=dwr;
       end if; 
	end if;	 
	  
	  
	end process;


end arq_RF ;

