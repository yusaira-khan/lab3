
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY scan_test IS 

END scan_test;

ARCHITECTURE bdf_type OF scan_test IS 

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
<<<<<<< HEAD
signal enable :std_logic;
signal reset :std_logic;
signal empty :std_logic;
signal zero :std_logic;
signal last :std_logic;
signal clk : std_logic;
=======
signal enable :std_logic_vector(1 downto 0);
signal reset :std_logic_vector(1 downto 0);
signal empty :std_logic;
signal zero :std_logic;
signal last :std_logic;
signal clk : std_logic := '0';
>>>>>>> f5753a96ebcfdaa75517c54a6fc80a687091660b
signal TC :  std_logic_vector(11 downto 0);

BEGIN 

zero<='0';
<<<<<<< HEAD


bleh : g24_possibility_table
PORT MAP(TC_EN => enable,
		 TC_RST => reset,
=======
clk<= not clk after 20 ns;


bleh : g24_possibility_table
PORT MAP(TC_EN => enable(0),
		 TC_RST => reset(0),
>>>>>>> f5753a96ebcfdaa75517c54a6fc80a687091660b
		 TM_IN => zero,
		 TM_EN => zero,
		 CLK 	=>clk ,
		 TC_LAST=>last,
		 TM_ADDR => TC,
		 TM_OUT=>empty
		 );
generate_test : PROCESS                                               
BEGIN                                                          
<<<<<<< HEAD
    reset<='1';
	enable<='0';
    WAIT 100ns ;
	reset<='0';
	enable<='0';
	WAIT 100ns ;
	reset<='0';
	enable<='1';
=======
    reset<="11";
	enable<="00";
    WAIT For 100 ns ;
	reset<="00";
	enable<="00";
	WAIT For 100 ns ;
	reset<="00";
	enable<="11";
>>>>>>> f5753a96ebcfdaa75517c54a6fc80a687091660b
	WAIT;

	
                                                        
END PROCESS generate_test; 


END bdf_type;
