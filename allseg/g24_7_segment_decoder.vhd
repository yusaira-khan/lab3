library ieee; -- allows use of the std_logic_vector type 
use ieee.std_logic_1164.all; 
entity g24_7_segment_decoder is
port( code : in std_logic_vector(3 downto 0);
RippleBlank_In:in std_logic;
RippleBlank_Out:out std_logic;
segments : out std_logic_vector(6 downto 0));
end g24_7_segment_decoder;
architecture arch of g24_7_segment_decoder is
	signal inputs :std_logic_vector(4 downto 0);
	signal outs :std_logic_vector(7 downto 0);
	begin
	inputs <= RippleBlank_In & code;

	with inputs select
	outs<= "10000001" when "00000",
	
	"01001111" when "00001",
	"00010010" when "00010",
	"00000110" when "00011",
	"01001100" when "00100",
	"00100100" when "00101",
	"00100000" when "00110",
	"00001111" when "00111",
	"00000000" when "01000",
	"00001100" when "01001",
	"01100000" when "01010",
	"01111010" when "01011",
	"01101010" when "01100",
	"01000111" when "01101",
	"01100011" when "01110",
	"01110010" when "01111",
	"11111111" when others;

	RippleBlank_Out <= outs(7);
	segments <= outs(6 downto 0);
	

end architecture ; -- arch