
-- VHDL Instantiation Created from source file RF.vhd -- 18:06:40 10/18/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_RF: RF PORT MAP(
		Rd => ,
		Rs1 => ,
		Rs2 => ,
		Crs1 => ,
		Crs2 => ,
		dwr => ,
		Reset => 
	);


