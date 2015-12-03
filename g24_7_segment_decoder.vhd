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
	
	"01001111" when "00001",--1
	"00010010" when "00010",--2
	"00000110" when "00011",--3
	"01001100" when "00100",--4
	"00100100" when "00101",--5
	"00100000" when "00110",--6
	"00001111" when "00111",--7
	"00000000" when "01000",--8
	"00001100" when "01001",--9
	"01100000" when "01010",--b
	"01111010" when "01011",--r
	"01101010" when "01100",--n
	"01000111" when "01101",--j
	"01100011" when "01110",--v
	"01110010" when "01111",--c
	
	"11001111" when "10001",--1
	"10010010" when "10010",--2
	"10000110" when "10011",--3
	"11001100" when "10100",--4
	"10100100" when "10101",--5
	"10100000" when "10110",--6
	"10001111" when "10111",--7
	"10000000" when "11000",--8
	"10001100" when "11001",--9
	"11100000" when "11010",--b
	"11111010" when "11011",--r
	"11101010" when "11100",--n
	"11000111" when "11101",--j
	"11100011" when "11110",--v
	"11110010" when "11111",--c
	
	"11111111" when others;

	RippleBlank_Out <= outs(7);
	segments <= outs(6 downto 0);
	

end architecture ; -- arch