library IEEE;
use IEEE.std_logic_1164.all;

entity ula1 is 
	port(
		inp: in std_logic_vector(1 downto 0);
		sel: in std_logic_vector(1 downto 0);
		outp: out std_logic
	);
end ula1;

architecture ula1 of ula1 is
	signal sig: std_logic_vector (3 downto 0);
	component mux2x4
		port(
		i: in std_logic_vector(1 downto 0);
		x: in std_logic_vector(3 downto 0);
		o: out std_logic	
	);
	end component;
	
begin
	sig(0) <= inp(0) and inp(1);
	sig(1) <= inp(0) or inp(1);
	sig(2) <= (not inp(0)) and inp(1);
	sig(3) <= inp(0) xor inp(1);
	
	MUX: mux2x4 port map(
	i => sel,
	x => sig,
	o => outp
	);
end ula1;
	