----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:43 10/18/2016 
-- Design Name: 
-- Module Name:    ProcesadorIMM - Behavioral 
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

entity ProcesadorIMM is
    Port ( Reset : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           OUTP : out  STD_LOGIC_VECTOR (31 downto 0));
end ProcesadorIMM;

architecture arq_ProcesadorIMM of ProcesadorIMM is


COMPONENT ADDER
	PORT(
		In1 : IN std_logic_vector(31 downto 0);
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
	
		COMPONENT SEU
	PORT(
		IMM13Bits : IN std_logic_vector(12 downto 0);          
		Out_SEU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
		COMPONENT RF
	PORT(
		Rd : IN std_logic_vector(4 downto 0);
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		dwr : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;          
		Crs1 : OUT std_logic_vector(31 downto 0);
		Crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Multiplexor
	PORT(
		i : IN std_logic;
		Out_SEU : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);          
		Out_MUX : OUT std_logic_vector(31 downto 0)
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

	
signal sumadorToNpc, NPcToIM,IMToURS,ALUOut,RFToALU,RFToMUX,MUXtoALU,SEUtoMUX:STD_LOGIC_VECTOR (31 downto 0); 
signal OUC:STD_LOGIC_VECTOR (5 downto 0);

begin

	Inst_ADDER: ADDER PORT MAP(
		In1 =>X"00000001" ,
		SalidaPC => NPcToIM,
		SalidaSumador => sumadorToNpc
	);


	Inst_nPC: nPC PORT MAP(
		SalidaSumador => sumadorToNpc,
		CLK => CLK,
		Reset => Reset,
		SalidaNpc =>NPcToIM 
	);

	Inst_instructionMemory: instructionMemory PORT MAP(
		address => NPcToIM ,
		reset =>reset ,
		outInstruction =>IMToURS 
	);
	
		Inst_UC: UC PORT MAP(
		op => IMToURS(31 downto 30) ,
		op3 =>IMToURS(24 downto 19) ,
		OutUC => OUC
	);
	
	Inst_RF: RF PORT MAP(
		Rd =>IMToURS(29 downto 25) ,
		Rs1 => IMToURS(18 downto 14) ,
		Rs2 =>IMToURS(4 downto 0) ,
		Crs1 => RFToALU,
		Crs2 => RFToMUX,
		dwr => ALUOut,
		Reset => Reset
	);

	Inst_SEU: SEU PORT MAP(
		IMM13Bits =>IMToURS(12 downto 0),
		Out_SEU => SEUtoMUX
	);
	
		Inst_Multiplexor: Multiplexor PORT MAP(
		i => IMToURS(13),
		Out_SEU => SEUtoMUX,
		Crs2 => RFToMUX,
		Out_MUX =>MUXtoALU 
	);
	
		Inst_ALU: ALU PORT MAP(
		Crs1 =>RFToALU ,
		Crs2 =>MUXtoALU ,
		OutUC =>OUC ,
		OutAlu => ALUOut
	);
	OUTP<=ALUOut;

end arq_ProcesadorIMM;

