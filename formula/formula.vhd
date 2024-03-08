library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_logic_ARITH.ALL;


entity formula is
	port
	(
		sum	: in integer range 0 to 31;
		UN    : out integer range 0 to 9;
		DC    : out integer range 0 to 9
		);

end formula;

architecture formula_arch of formula is 

  --signal Un, Dc: integer range 0 to 9;

begin

DC <= sum/10;
UN <= sum mod 10;



end architecture;