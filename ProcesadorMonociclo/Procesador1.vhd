----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:47:20 10/12/2016 
-- Design Name: 
-- Module Name:    Procesador1 - arq_Procesador1 
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

entity Procesador1 is
    Port ( Reset : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           OUTP : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador1;

architecture arq_Procesador1 of Procesador1 is

	COMPONENT ADDER
	PORT(
		In1 : IN std_logic_vector(3 downto 0);
		SalidaPC : IN std_logic_vector(31 downto 0);          
		SalidaSumador : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT nPC
	PORT(
		SalidaSumador : IN std_logic_vector(31 downto 0);
		CLK : IN std_logic;
		Reset : IN std_logic;          
		SalidaNpc : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT instructionMemory
	PORT(
		address : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		outInstruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT UC
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		OutUC : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
		COMPONENT RF
	PORT(
		Rd : IN std_logic_vector(4 downto 0);
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		dwr : IN std_logic_vector(31 downto 0);          
		Crs1 : OUT std_logic_vector(31 downto 0);
		Crs2 : OUT std_logic_vector(31 downto 0);
		Reset : in  STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT ALU
	PORT(
		Crs1 : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);
		OutUC : IN std_logic_vector(5 downto 0);          
		OutAlu : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	
signal sumadorToNpc, NpcToPC,PCToIM,IMToUR,ALUOut,RFToALU,RFToALU2:STD_LOGIC_VECTOR (31 downto 0); 
signal OUC:STD_LOGIC_VECTOR (5 downto 0);

begin

	Inst_ADDER: ADDER PORT MAP(
		In1 =>"0001" ,
		SalidaPC =>NpcToPC ,
		SalidaSumador => sumadorToNpc
	);

	Inst_nPC: nPC PORT MAP(
		SalidaSumador => sumadorToNpc,
		CLK => CLK,
		Reset => Reset,
		SalidaNpc => NpcToPC
	);

Inst_PC: nPC PORT MAP(
		SalidaSumador => NpcToPC,
		CLK => CLK,
		Reset => Reset,
		SalidaNpc => PCToIM
	);
	
	Inst_instructionMemory: instructionMemory PORT MAP(
		address => PCToIM,
		reset =>reset ,
		outInstruction => IMToUR
	);
	
		Inst_UC: UC PORT MAP(
		op =>IMToUR(31 downto 30) ,
		op3 =>IMToUR(24 downto 19) ,
		OutUC => OUC
	);
	
		Inst_RF: RF PORT MAP(
		Rd =>IMToUR(29 downto 25) ,
		Rs1 => IMToUR(18 downto 14),
		Rs2 =>IMToUR(4 downto 0) ,
		Crs1 =>RFToALU ,
		Crs2 =>RFToALU2 ,
		dwr =>ALUOut, 
		Reset=> Reset
	);
	
		Inst_ALU: ALU PORT MAP(
		Crs1 =>RFToALU ,
		Crs2 =>RFToALU2 ,
		OutUC => OUC,
		OutAlu => ALUOut
	);
	
	OUTP <=ALUOut;
end arq_Procesador1;


