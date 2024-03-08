library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
	
	port
	(
		-- Input ports
		A,B	: in  std_logic;
		Sum, Cout	: out  std_logic
	);
end half_adder;

architecture half_adder_arch of half_adder is

begin

  Sum <= A xor B after 1 ns;
  Cout <= A and B after 1 ns;
 
end architecture;