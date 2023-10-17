library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Contador4bits_UpDown is 
	port (Clk:in std_logic;
			Up: in std_logic;
			Q: out std_logic_vector(5 downto 0));
end Contador4bits_UpDown;

architecture Contador4bits_UpDown_arch of Contador4bits_UpDown is
signal Cont: std_logic_vector(5 downto 0):="000000";
signal Conta: std_logic_vector(5 downto 0):="111011";
signal Q1: std_logic_vector (5 downto 0);
begin 

process(Up,Clk) begin
	 
	 if (Clk' event and Clk='1') then
		if (Up='0') then
		Cont<=Cont+1;
		Conta<="111011";
		    if (Cont=60) then 
		    Cont<="000000";
		    end if;
		else
		Conta<=Conta-1;
		Cont<="000000";
		    if (Conta=0) then 
			 Conta<="111011";
			 end if;
		end if;
	 end if;
if (Up='0') then
	Q1<=Cont;
else 
	Q1<=Conta;
end if;
end process;
Q<=Q1;
end Contador4bits_UpDown_arch;