library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity full_adder_completo is
    port
    (
        
        A,B	: in  std_logic_vector(3 downto 0);
        Uni_Display	: out  std_logic_vector(6 downto 0); -- Vector de 7 bits para las unidades
        Dec_Display  : out std_logic_vector(6 downto 0)   -- Vector de 7 bits para las decenas
    );
end full_adder_completo;

architecture full_adder_completo_arch of full_adder_completo is

    component full_adder_4bits
        port
        (
           
            A,B	: in  std_logic_vector(3 downto 0);
            Sum	: out  std_logic_vector(3 downto 0);
            Cout  : out std_logic
        );
    end component;

    component formula
        port
        (
            sum	: in integer range 0 to 31; -- Rango de 0 a 31 para la suma
            UN    : out integer range 0 to 9; -- Rango de 0 a 9 para unidades
            DC    : out integer range 0 to 9  -- Rango de 0 a 9 para decenas
        );
    end component;

    component decoBCD 
        port
        (
            IA	: in std_logic_vector(3 downto 0); -- 4 bits para unidades y decenas
            F: out std_logic_vector(6 downto 0) -- Vector de 7 bits para representar unidades o decenas en el display de 7 segmentos
        );
    end component;

    signal clk_up : std_logic); -- Se necesitan 5 bits para manejar de 0 a 31
    signal clk_down : std_logic_vector(3 downto 0);
    signal c : std_logic;
    signal U : integer range 0 to 9; 
    signal D : integer range 0 to 9; 

begin
 
  A0: full_adder_4bits port map (A, B, sum_senal, c);
  
  formula_senal <= c & sum_senal;
  
  A1: formula port map (to_integer(unsigned(formula_senal)), U, D); -- Convertir formula_senal a unsigned antes de convertirla a integer
  A2: decoBCD port map (std_logic_vector(to_unsigned(U, 4)), Uni_Display); -- Convertir U a unsigned antes de convertirlo a std_logic_vector
  A3: decoBCD port map (std_logic_vector(to_unsigned(D, 4)), Dec_Display); -- Convertir D a unsigned antes de convertirlo a std_logic_vector
 
end architecture;