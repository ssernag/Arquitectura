
-- VHDL Instantiation Created from source file PSRModifier.vhd -- 23:24:48 11/01/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_PSRModifier: PSRModifier PORT MAP(
		OutUC => ,
		Crs1 => ,
		Crs2 => ,
		Reset => ,
		OutALU => ,
		NZVC => 
	);


