
-- VHDL Instantiation Created from source file WindowsManager.vhd -- 00:32:35 11/09/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_WindowsManager: WindowsManager PORT MAP(
		Rs1 => ,
		Rs2 => ,
		Rd => ,
		Cwp => ,
		op => ,
		op3 => ,
		NRs1 => ,
		NRs2 => ,
		NRd => ,
		NCwp => ,
		O7 => 
	);


