entity color_counter is
	port (	present_color	: in std_logic_vector(2 downto 0);
			clock 			: in std_logic;
			reset			: in std_logic;
			last_reached	: out std_logic;
			next_color 		: out std_logic_vector(2 downto 0);
end color_counter;

architecture behavior of color_counter is