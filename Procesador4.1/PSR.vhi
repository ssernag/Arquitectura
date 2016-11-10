
-- VHDL Instantiation Created from source file PSR.vhd -- 00:33:27 11/09/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_PSR: PSR PORT MAP(
		CLK => ,
		Reset => ,
		NZVC => ,
		Carry => ,
		NCwp => ,
		Cwp => 
	);


