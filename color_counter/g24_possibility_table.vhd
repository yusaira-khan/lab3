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
	
	signal TC : std_logic_vector(11 downto 0);
	signal pin_index : std_logic vector(1 downto 0);
	-- Declare componenet
	
begin
	
	TC <= "000000000000"
	
	process(TC_RST, TC_EN, CLK, TC)
	begin
				
		
		
	end process;

	
	
	
	
end architecture;
