
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY scan_test IS 

END scan_test;

ARCHITECTURE bdf_type OF g24_lab1 IS 

COMPONENT g24_possibility_table is
	port (	TC_EN 	: in std_logic; -- table counter enable
		  	TC_RST 	: in std_logic; -- table counter reset
			TM_IN 	: in std_logic; -- table memory input data
			TM_EN 	: in std_logic; -- table memory write enable
			CLK 	: in std_logic;
			TC_LAST : out std_logic; -- last count flag
			TM_ADDR : out std_logic_vector(11 downto 0);
			TM_OUT 	: out std_logic); -- table memory output
END COMPONENT;
signal enable :std_logic;


BEGIN 



b2v_inst : g24_comp6
PORT MAP(A => A,
		 B => B,
		 AeqB => AeqB);


END bdf_type;