-------------------------------------------------------------------------------
--
-- Title       : PIPE
-- Design      : SIMD
-- Author      : Judah Ben-Eliezer
-- Company     : Stony Brook University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\SIMD\SIMD\src\PIPE.vhd
-- Generated   : Mon May  3 18:39:02 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use work.data_types.all;

entity IF_ID is
	port(
		clk: in std_logic;
		rst: in std_logic;
		D: in std_logic_vector(24 downto 0);
		Q: out std_logic_vector(24 downto 0)
		);
end IF_ID;

architecture behavioral of IF_ID is
begin
	process(clk, rst)
	begin
		if rst = '1' then
			Q <= nop;  	-- reset
		elsif rising_edge(clk) then
			Q <= D;					-- set
		end if;
	end process;

end behavioral;
