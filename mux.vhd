library ieee;
use ieee.std_logic_1164.all;


entity mux is generic(n :natural:= 4);
port(
	Bn0,Bn1  : in std_logic_vector(n - 1 downto 0);
	sel   	: in std_logic;
	s     	: out std_logic_vector(n - 1 downto 0));
end mux;

architecture selecionador of mux is 
begin 
	s <= Bn0 when (sel = '0') else
	Bn1;
end architecture;
