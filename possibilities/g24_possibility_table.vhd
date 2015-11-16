library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
entity g24_possibility_table is
	port (	TC_EN 	: in std_logic; -- table counter enable
		  	TC_RST 	: in std_logic; -- table counter reset
			TM_IN 	: in std_logic; -- table memory input data
			TM_EN 	: in std_logic; -- table memory write enable
			CLK 	: in std_logic;
			TC_LAST : out std_logic; -- last count flag
			TM_ADDR : out std_logic_vector(11 downto 0);
			TM_OUT 	: out std_logic); -- table memory output
end g24_possibility_table;

-- Arcitecture Block
architecture behavior of g24_possibility_table is
	signal Table_Memory : std_logic_vector(4095 to 0);
	-- Declare needed signals
	signal TC 		 	: std_logic_vector(11 downto 0);
	signal pin_index 	: std_logic_vector(1 downto 0);
	signal TC0 			: std_logic_vector(2 downto 0);
	signal LR0 			: std_logic;
	signal TC1			: std_logic_vector(2 downto 0);
	signal LR1 			: std_logic;
	signal TC2 			: std_logic_vector(2 downto 0);
	signal LR2 			: std_logic;
	signal TC3 			: std_logic_vector(2 downto 0);
	signal LR3 			: std_logic;
	signal EN0 			: std_logic;
	signal EN1 			: std_logic;
	signal EN2 			: std_logic;
	signal EN3 			: std_logic;
	--signal enable_add	: std_logic;
	signal last_reached	: std_logic;
	
	-- Declare componenet
	component color_counter is
		port (clock 			: in std_logic;
				reset			: in std_logic;
				enable			: in std_logic;
				last_reached	: out std_logic;
				next_color 		: out std_logic_vector(2 downto 0));
	end component;
	
begin
	
	-- Local instances
	---TC <= "000000000000";
	TC(2 downto 0)<=TC0 ;
	--LR0 <= '0';
	TC(5 downto 3)<=TC1  ;
	--LR1 <= '0';
	TC(8 downto 6) <= TC2;
	--LR2 <= '0';
	TC(11 downto 9) <= TC3;
	--LR3 <= '0';
	EN0 <= Not(last_reached) AND TC_EN;
	last_reached<= LR3 AND LR2 AND LR1 AND LR0;
	TC_LAST<=last_reached;
	EN1 <= LR0 AND TC_EN;
	EN2 <= LR1 AND TC_EN;
	EN3 <= LR2 AND TC_EN;
	TM_ADDR <= TC;
	Table_Memory <= (others=>'0');
	
	
	-- Declare our needed instances of color counters
	color_counter0 : color_counter port map( 
		clock 			=> CLK,
		reset 			=> TC_RST,
		enable 			=> EN0,
		last_reached	=> LR0,
		next_color		=> TC0
	);
	color_counter1 : color_counter port map(
		clock 			=> CLK,
		reset 			=> TC_RST,
		enable 			=> EN1,
		last_reached	=> LR1,
		next_color		=> TC1
	);
	color_counter2 : color_counter port map(
		clock 			=> CLK,
		reset 			=> TC_RST,
		enable 			=> EN2,
		last_reached	=> LR2,
		next_color		=> TC2
	);
	color_counter3 : color_counter port map(
		clock 			=> CLK,
		reset 			=> TC_RST,
		enable 			=> EN3,
		last_reached	=> LR3,
		next_color		=> TC3
	);
	
	-- Start the logic process to cascade our 4 individual counters
	--process(TC_RST, TC_EN, CLK, TC)
	--begin
		
		--TC <= TC0 & TC1 & TC2 & TC3;
		
	--end process;

	
	
	
	
end architecture;
