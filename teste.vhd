library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity teste is 
	generic(n :natural:= 4);
	port(A,B	   : in std_logic_vector(n-1 downto 0);
		  cin    : in std_logic;
		  cout   : out std_logic_vector(n -1 downto 0));
end teste;


architecture somar of teste is

signal c: std_logic_vector(n-1 downto 0);

component mux generic(n :natural:= 4);
port(
	Bn0,Bn1: in std_logic_vector(n - 1 downto 0);
	sel 	: in std_logic;
	s   	: out std_logic_vector(n - 1 downto 0));
end component;


begin 
s1 : mux port map(B,not(B),cin,c);
cout <= A + c + cin;   
end;