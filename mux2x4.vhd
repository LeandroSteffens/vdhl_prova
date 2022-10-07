library IEEE;
use IEEE.std_logic_1164.all;

entity mux2x4 is 
	port(
		i: in std_logic_vector(1 downto 0);
		x: in std_logic_vector(3 downto 0);
		o: out std_logic	
	);
end mux2x4;

architecture mux2x4 of mux2x4 is
	signal decod_out: std_logic_vector(3 downto 0);
	signal s: std_logic_vector(3 downto 0);

begin
	decod_out(0) <= (not i(1)) and (not i(0));
	decod_out(1) <= (not i(1)) and i(0);
	decod_out(2) <= i(1) and (not i(0));
	decod_out(3) <= i(1) and i(0);
	
	s(0) <= decod_out(0) and x(0);
	s(1) <= decod_out(1) and x(1);
	s(2) <= decod_out(2) and x(2);
	s(3) <= decod_out(3) and x(3);
	
	o <= s(0) or s(1) or s(2) or s(3);

end mux2x4