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
	
begin
	
	TC <= "000000000000"
	pin_index <= "00"
	
	TC0 <= TC(2 downto 0);
	TC1 <= TC(5 downto 3);
	TC2 <= TC(8 downto 6);
	TC3 <= TC(11 downto 9);
	
	
	process(TC_RST, TC_EN, CLK, TC)
	begin
		signal increment : std_logic_vector(11 downto 0);
		
		-- Based on which pin we are searching possible values for we will have a different incrementing value
		case pin_index is
			when "00" => increment <= "000000000001";
			when "01" => increment <= "000000001000";
			when "10" => increment <= "000001000000";
			when "11" => increment <= "001000000000";
		end case;
		
		increment <= "000000000001";
		
		-- The count value TC is set to zero ("000000000000") when TC_RST is high
		if TC_RST then 
			TC <= "000000000000";
		-- If TC_RST is low and TC_EN is high, then TC is set to the next count value in the count sequence on the next positive-going transition of the CLK signal
		elsif rising_edge(CLK) and TC_EN and not(TC_RST) then
			TC <= TC + increment;
		end if;
		
		-- Need to update the pin index if we reach the end of that search field
		case TC is
			when "000000000101" => pin_index <= "01";
			when "000000101101" => pin_index <= "10";
			when "000101101101" => pin_index <= "11";
			-- Iterate around to the first if we see the end
			when "101101101101" => pin_index <= "00";
		end case;
		
		-- If the count value TC has a value of "101101101101" the signal TC_LAST goes high, TC is not changed. Otherwise TC_LAST is low.
		if TC = "101101101101" then
			TC_LAST <= "1";
		else
			TC_LAST <= "0";
		
	end process;

	
	
	
	
end architecture;
