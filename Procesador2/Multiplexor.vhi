
-- VHDL Instantiation Created from source file Multiplexor.vhd -- 18:13:38 10/18/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Multiplexor
	PORT(
		i : IN std_logic;
		Out_SEU : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);          
		Out_MUX : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Multiplexor: Multiplexor PORT MAP(
		i => ,
		Out_SEU => ,
		Crs2 => ,
		Out_MUX => 
	);


