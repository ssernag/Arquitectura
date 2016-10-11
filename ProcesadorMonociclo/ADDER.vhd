----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:30:11 10/01/2016 
-- Design Name: 
-- Module Name:    ADDER - Behavioral 
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

entity ADDER is
    Port ( In : in  STD_LOGIC_VECTOR (3 downto 0);
           SalidaPC : in  STD_LOGIC_VECTOR (31 downto 0);
           SalidaSumador : out  STD_LOGIC_VECTOR (32 downto 0));
end ADDER;

architecture Behavioral of ADDER is

begin

   process
      begin   



end Behavioral;

