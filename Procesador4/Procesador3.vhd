----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:20:45 11/01/2016 
-- Design Name: 
-- Module Name:    Procesador3 - arq_procesador3 
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

entity Procesador4 is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           OUTP3 : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador4;

 architecture arq_procesador3 of Procesador3 is

	COMPONENT ADDER
	PORT(
		In1 : IN std_logic_vector(31 downto 0);
		SalidaPC : IN std_logic_vector(31 downto 0);          
		SalidaSumador : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ALU
	PORT(
		Crs1 : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);
		Carry : IN std_logic;
		OutUC : IN std_logic_vector(5 downto 0);          
		OutAlu : OUT std_logic_vector(31 downto 0)
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
	
	COMPONENT PSRModifier
	PORT(
		OutUC : IN std_logic_vector(5 downto 0);
		Crs1 : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;
		OutALU : IN std_logic_vector(31 downto 0);          
		NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
COMPONENT PSR
	PORT(
		CLK : IN std_logic;
		Reset : IN std_logic;
		NZVC : IN std_logic_vector(3 downto 0);
		NCwp : IN std_logic;
		Cwp : IN std_logic;          
		Carry : OUT std_logic
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
	
		COMPONENT SEU
	PORT(
		IMM13Bits : IN std_logic_vector(12 downto 0);          
		Out_SEU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
		COMPONENT UC
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		OutUC : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT instructionMemory
	PORT(
		address : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;          
		outInstruction : OUT std_logic_vector(31 downto 0)
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
	
	COMPONENT WindowsManager
	PORT(
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		Rd : IN std_logic_vector(4 downto 0);
		Cwp : IN std_logic;
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		NRs1 : OUT std_logic_vector(5 downto 0);
		NRs2 : OUT std_logic_vector(5 downto 0);
		NRd : OUT std_logic_vector(5 downto 0);
		NCwp : OUT std_logic;
		O7 : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	
signal sumadorToNpc, NPcToIM,IMToUMSW,ALUOut,RFToALU,RFToMUX,MUXtoALU,SEUtoMUX:STD_LOGIC_VECTOR (31 downto 0); 
signal OUC,OUC2,Rs1WMToRF,Rs2WMToRF,RDWMToRF:STD_LOGIC_VECTOR (5 downto 0);
signal PSRModifier_PSR,PSRModifier_PSR2: STD_LOGIC_VECTOR(3 downto 0);
signal PSRToALU: STD_LOGIC;
signal WMToPSR,PsrToWM: STD_LOGIC := '0';


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
		Reset =>Reset ,
		outInstruction =>IMToUMSW 
	);
	
		Inst_UC: UC PORT MAP(
		op => IMToUMSW(31 downto 30) ,
		op3 =>IMToUMSW(24 downto 19) ,
		OutUC => OUC
	);
	
		Inst_RF: RF PORT MAP(
		Rd =>RDWMToRF ,
		Rs1 => Rs1WMToRF ,
		Rs2 =>Rs2WMToRF ,
		Crs1 => RFToALU,
		Crs2 => RFToMUX,
		dwr => ALUOut,
		Reset => Reset
	);
	
	   Inst_Multiplexor: Multiplexor PORT MAP(
		i => IMToUMSW(13),
		Out_SEU => SEUtoMUX,
		Crs2 =>RFToMUX,
		Out_MUX =>MUXtoALU 
	);
	
		Inst_SEU: SEU PORT MAP(
		IMM13Bits =>IMToUMSW(12 downto 0),
		Out_SEU => SEUtoMUX
	);
	
		Inst_ALU: ALU PORT MAP(
		Crs1 =>RFToALU  ,
		Crs2 => MUXtoALU,
		Carry =>PSRToALU ,
		OutUC =>OUC ,
		OutAlu => ALUOut
	);

	
		Inst_PSR: PSR PORT MAP(
		CLK =>CLK ,
		Reset =>Reset ,
		NZVC =>PSRModifier_PSR ,
		Carry =>PSRToALU ,
		NCwp =>WMToPSR ,
		Cwp => PsrToWM
	);

	
		Inst_PSRModifier: PSRModifier PORT MAP(
		OutUC =>OUC ,
		Crs1 =>RFToALU,
		Crs2 => MUXtoALU,
		Reset => Reset,
		OutALU => ALUOut,
		NZVC => PSRModifier_PSR
	);
	
	Inst_WindowsManager: WindowsManager PORT MAP(
		Rs1 => IMToUMSW(18 downto 14),
		Rs2 =>IMToUMSW(4 downto 0) ,
		Rd => IMToUMSW(29 downto 25),
		Cwp =>PsrToWM ,
		op =>IMToUMSW(31 downto 30) ,
		op3 =>IMToUMSW(24 downto 19) ,
		NRs1 =>Rs1WMToRF ,
		NRs2 =>Rs2WMToRF ,
		NRd => RDWMToRF,
		NCwp => WMToPSR
	);

	

OUTP3<=ALUOut;	

end arq_procesador3;

