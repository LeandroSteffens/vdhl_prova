library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity ula8 is
port(
	a, b: in std_logic_vector(7 downto 0);
	f: in std_logic_vector(2 downto 0);
	saida: out std_logic_vector(7 downto 0)
	);
end ula8;

architecture ula8 of ula8 is
signal result: std_logic_vector(7 downto 0);
begin
	process(a, b, f)
	begin
		case f is
			when "000" => 
				result <= a;
			when "001" => 
				result <= not a ;
			when "010" => 
				result <= a and b;
			when "011" => 
				result <= a xor b;
			when "100" => 
				result <= a or b;
			when "101" => 
				result <= a + b;
			when "110" => 
				result <= b;
			when "111" => 
				result <= not b;
			when others =>
				result <= "00000000";
		end case;
	end process;
	saida <= result;
end ula8;