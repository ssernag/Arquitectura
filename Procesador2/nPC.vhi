
-- VHDL Instantiation Created from source file nPC.vhd -- 18:46:58 10/23/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT nPC
	PORT(
		SalidaSumador : IN std_logic_vector(31 downto 0);
		CLK : IN std_logic;
		Reset : IN std_logic;          
		SalidaNpc : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_nPC: nPC PORT MAP(
		SalidaSumador => ,
		CLK => ,
		Reset => ,
		SalidaNpc => 
	);


