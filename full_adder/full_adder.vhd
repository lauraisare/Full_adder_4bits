library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
	
	port
	(
		-- Input ports
		A,B, Cin	: in  std_logic;
		Sum, Cout	: out  std_logic
	);
end full_adder;

architecture full_adder_arch of full_adder is

component half_adder
	
	port
	(
		-- Input ports
		A,B	: in  std_logic;
		Sum, Cout	: out  std_logic
	);
end component;

signal HA1_sum, HA1_cout, HA2_cout :std_logic;
begin

  HA1 : half_adder port map (A, B, HA1_sum, HA1_cout);
  HA2 : half_adder port map (HA1_sum, Cin, sum, HA2_cout);
  
  Cout <= HA1_cout or HA2_cout after 1 ns;
 
end architecture;