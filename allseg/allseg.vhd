library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
entity allseg is
port( code : in std_logic_vector(3 downto 0);
RippleBlank_In:in std_logic;
segments : out std_logic_vector(6 downto 0);
segments1 : out std_logic_vector(6 downto 0);
segments2 : out std_logic_vector(6 downto 0);
segments3 : out std_logic_vector(6 downto 0));
end allseg;
architecture arch of allseg is
component g24_7_segment_decoder is
port( code : in std_logic_vector(3 downto 0);
RippleBlank_In:in std_logic;
RippleBlank_Out:out std_logic;
segments : out std_logic_vector(6 downto 0));
end component;
	signal zero :std_logic_vector(3 downto 0);
	signal RB1 : std_logic;
	signal RB2 : std_logic;
	signal RB3 : std_logic;
	signal RB4 : std_logic;
	signal x: std_logic;
	
	begin
	zero<="0000";
	RB4<= '0';
	seg0: g24_7_segment_decoder port map(code=>code, segments=>segments,RippleBlank_In=>RippleBlank_In,RippleBlank_Out=>RB1);
	seg1: g24_7_segment_decoder port map(code=>zero, segments=>segments1,RippleBlank_In=>RB1,RippleBlank_Out=>RB2);
	seg2: g24_7_segment_decoder port map(code=>zero, segments=>segments2,RippleBlank_In=>RB2,RippleBlank_Out=>RB3);
	seg3: g24_7_segment_decoder port map(code=>zero, segments=>segments3,RippleBlank_In=>RB3,RippleBlank_Out=>x);
		

end architecture ; -- arch