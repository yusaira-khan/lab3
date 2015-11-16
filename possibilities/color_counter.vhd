-- Here we define our color_counter that acts like a counter except it returns to zero and sets last_reached = 1 on 6 instead of 8 (ie, 101 instead of 111)

-- DO NOT NEED INPUT VECTOR!!!
library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
entity color_counter is
	port (	present_color	: in std_logic_vector(2 downto 0);
			clock 			: in std_logic;
			reset			: in std_logic;
			enable			: in std_logic;
			last_reached	: out std_logic;
			next_color 		: out std_logic_vector(2 downto 0));
end color_counter;

-- Initialize behavior
architecture behavior of color_counter is
begin
		
	-- Initialie process
	process(present_color, clock, reset, enable)
	begin
	
		-- If we have a reset set back to 000
		if reset = '1' then 
			next_color <= "000";
			
		-- Otherwise we change on the rising edge the output to the next value
		elsif rising_edge(clock)  then
			if enable = '1' and reset = '0' then
				case present_color is
					when "000" => next_color <= "001";
					when "001" => next_color <= "010";
					when "010" => next_color <= "011";
					when "011" => next_color <= "100";
					when "100" => next_color <= "101";
					when "101" => next_color <= "000";
				end case;
			
			
				-- Now that we are changing the value we need to address the 101 case to allow for cascading
				if present_color = "100" then
					last_reached <= '1';
				else
					last_reached <= '0';
			end if;
		end if;
		end if;
	end process;
end architecture;