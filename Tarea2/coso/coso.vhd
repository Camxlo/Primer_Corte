library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity coso is 
	port(Clk: in std_logic;
	     Up: in std_logic;
		  Uni: out std_logic_vector (6 downto 0);
		  Dec: out std_logic_vector (6 downto 0)
		  );
end coso;

architecture coso_arch of coso is
signal M0: std_logic; 
signal M1: std_logic_vector (5 downto 0);
signal M2: std_logic_vector (7 downto 0);
signal Unid: std_logic_vector(3 downto 0):=M2 (3 downto 0);
signal Dece: std_logic_vector(3 downto 0):=M2 (7 downto 4);
signal M4: std_logic; 
component divi50 
PORT ( clk : IN STD_LOGIC;
       out2 : BUFFER STD_LOGIC);
END component;

component Contador4bits_UpDown 
	port (Clk:in std_logic;
			Up: in std_logic;
			Q: out std_logic_vector(5 downto 0));
end component;

component Bi_De 
port ( BI : in  STD_LOGIC_VECTOR (5 downto 0);
       DE : out STD_LOGIC_VECTOR (7 downto 0));
end component ;

component BCD_HEX 
port ( HEXA : in  STD_LOGIC_VECTOR (3 downto 0);
       LED : out STD_LOGIC_VECTOR (6 downto 0));
end component;

begin 

L0 : divi50 port map (Clk,M0);
L1 : Contador4bits_UpDown port map (M0,Up,M1);
L2 : Bi_De port map (M1,M2);
L3 : BCD_HEX port map (Unid,Uni);
L4 : BCD_HEX port map (Dece,Dec);

end architecture;