library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
port (A, B, Cin : in std_logic;
Sum, Cout : out std_logic);
end full_adder;


architecture arqfull of full_adder is

component half_adder
port(A, B : in std_logic;
Sum, Cout : out std_logic);
end component;

signal HA1_Sum, HA1_Cout, HA2_Cout : std_logic;

begin

HA1 : half_adder port map (A, B, HA1_Sum, HA1_Cout);
HA2 : half_adder port map (HA1_Sum, Cin, Sum, HA2_Cout);

Cout<= HA1_Cout or HA2_Cout after 1 ns;

end arqfull;