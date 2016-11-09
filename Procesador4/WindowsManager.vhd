----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:19:31 11/09/2016 
-- Design Name: 
-- Module Name:    WindowsManager - arq_wm 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity WindowsManager is
    Port ( Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           Cwp : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           NRs1 : out  STD_LOGIC_VECTOR (5 downto 0);
           NRs2 : out  STD_LOGIC_VECTOR (5 downto 0);
           NRd : out  STD_LOGIC_VECTOR (5 downto 0);
           NCwp : out  STD_LOGIC
			  );
end WindowsManager;

architecture arq_wm of WindowsManager is

begin
  process(Rs1,Rs2,Rd,Cwp)
	begin
		--si es locales y salida
		if (Rs1>="01000" and Rs1<="10111") then
			NRs1<=conv_std_logic_vector(conv_integer(Rs1)+(conv_integer(Cwp)*16),6);
		end if;
		if (Rs2>="01000" and Rs2<="10111") then
			NRs2<=conv_std_logic_vector(conv_integer(Rs2)+(conv_integer(Cwp)*16),6);
		end if;
		if (Rd>="01000" and Rd<="10111") then
			NRd<=conv_std_logic_vector(conv_integer(Rd)+(conv_integer(Cwp)*16),6);
		end if;
		
		--si es entrada
		if (Rs1>="11000" and Rs1<="11111") then
			NRs1<=conv_std_logic_vector(conv_integer(Rs1)-(conv_integer(Cwp)*16),6);
		end if;
		if (Rs2>="11000" and Rs2<="11111") then
			NRs2<=conv_std_logic_vector(conv_integer(Rs2)-(conv_integer(Cwp)*16),6);
		end if;
		if (Rd>="11000" and Rd<="11111") then
			NRd<=conv_std_logic_vector(conv_integer(Rd)-(conv_integer(Cwp)*16),6);
		end if;
		
		--si es globales
		if (Rs1>="00000" and Rs1<="00111") then
			NRs1<='0'&Rs1;
		end if;
		if (Rs2>="00000" and Rs2<="00111") then
			NRs2<='0'&Rs2;
		end if;
		if (Rd>="00000" and Rd<="00111") then
			NRd<='0'&Rd;
		end if;
end process;

--save: Cwp<=Cwp-1 } Cwp<='0'
--restore: Cwp<=Cwp+1 } Cwp<='1'
process(op,op3,Cwp)
	begin
		--formato3
		if (op="10") then
			--save
			if (op3="111100")then
				NCwp<='0';
			end if;
			--restore
			if (op3="111101")then
				NCwp<='1';
			end if;
		end if;
		
		O7 <= conv_std_logic_vector(15+(conv_integer(Cwp)*16),6);

				
end process;


end arq_wm;

