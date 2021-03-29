-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : ALU
-- Author      : Judah Ben-Eliezer
-- Company     : Stony Brook University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\SIMD\ALU\compile\SIMSHS.vhd
-- Generated   : Sun Mar 28 22:23:33 2021
-- From        : C:\My_Designs\SIMD\ALU\..\blocks\SIMSHS.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;

entity SIMSHS is
  port(
       op : in STD_LOGIC_VECTOR(24 downto 0);
       i : in STD_LOGIC_VECTOR(127 downto 0);
       j : in STD_LOGIC_VECTOR(127 downto 0);
       k : in STD_LOGIC_VECTOR(127 downto 0);
       r : out STD_LOGIC_VECTOR(127 downto 0)
  );
end SIMSHS;

architecture behavioral of SIMSHS is

---- Component declarations -----

component MULT_SUB_I
  port(
       x : in STD_LOGIC_VECTOR(15 downto 0);
       y : in STD_LOGIC_VECTOR(15 downto 0);
       z : in STD_LOGIC_VECTOR(31 downto 0);
       result : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal res : STD_LOGIC_VECTOR(127 downto 0);

begin

---- Processes ----

process (op)
                       begin
                         if (op(24 downto 20) = "10011") then
                            r <= res;
                         end if;
                       end process;
                      

----  Component instantiations  ----

SIMSHS_0 : MULT_SUB_I
  port map(
       x(15) => i(31),
       x(14) => i(30),
       x(13) => i(29),
       x(12) => i(28),
       x(11) => i(27),
       x(10) => i(26),
       x(9) => i(25),
       x(8) => i(24),
       x(7) => i(23),
       x(6) => i(22),
       x(5) => i(21),
       x(4) => i(20),
       x(3) => i(19),
       x(2) => i(18),
       x(1) => i(17),
       x(0) => i(16),
       y(15) => j(31),
       y(14) => j(30),
       y(13) => j(29),
       y(12) => j(28),
       y(11) => j(27),
       y(10) => j(26),
       y(9) => j(25),
       y(8) => j(24),
       y(7) => j(23),
       y(6) => j(22),
       y(5) => j(21),
       y(4) => j(20),
       y(3) => j(19),
       y(2) => j(18),
       y(1) => j(17),
       y(0) => j(16),
       z(31) => k(31),
       z(30) => k(30),
       z(29) => k(29),
       z(28) => k(28),
       z(27) => k(27),
       z(26) => k(26),
       z(25) => k(25),
       z(24) => k(24),
       z(23) => k(23),
       z(22) => k(22),
       z(21) => k(21),
       z(20) => k(20),
       z(19) => k(19),
       z(18) => k(18),
       z(17) => k(17),
       z(16) => k(16),
       z(15) => k(15),
       z(14) => k(14),
       z(13) => k(13),
       z(12) => k(12),
       z(11) => k(11),
       z(10) => k(10),
       z(9) => k(9),
       z(8) => k(8),
       z(7) => k(7),
       z(6) => k(6),
       z(5) => k(5),
       z(4) => k(4),
       z(3) => k(3),
       z(2) => k(2),
       z(1) => k(1),
       z(0) => k(0),
       result(31) => res(31),
       result(30) => res(30),
       result(29) => res(29),
       result(28) => res(28),
       result(27) => res(27),
       result(26) => res(26),
       result(25) => res(25),
       result(24) => res(24),
       result(23) => res(23),
       result(22) => res(22),
       result(21) => res(21),
       result(20) => res(20),
       result(19) => res(19),
       result(18) => res(18),
       result(17) => res(17),
       result(16) => res(16),
       result(15) => res(15),
       result(14) => res(14),
       result(13) => res(13),
       result(12) => res(12),
       result(11) => res(11),
       result(10) => res(10),
       result(9) => res(9),
       result(8) => res(8),
       result(7) => res(7),
       result(6) => res(6),
       result(5) => res(5),
       result(4) => res(4),
       result(3) => res(3),
       result(2) => res(2),
       result(1) => res(1),
       result(0) => res(0)
  );

SIMSHS_1 : MULT_SUB_I
  port map(
       x(15) => i(63),
       x(14) => i(62),
       x(13) => i(61),
       x(12) => i(60),
       x(11) => i(59),
       x(10) => i(58),
       x(9) => i(57),
       x(8) => i(56),
       x(7) => i(55),
       x(6) => i(54),
       x(5) => i(53),
       x(4) => i(52),
       x(3) => i(51),
       x(2) => i(50),
       x(1) => i(49),
       x(0) => i(48),
       y(15) => j(63),
       y(14) => j(62),
       y(13) => j(61),
       y(12) => j(60),
       y(11) => j(59),
       y(10) => j(58),
       y(9) => j(57),
       y(8) => j(56),
       y(7) => j(55),
       y(6) => j(54),
       y(5) => j(53),
       y(4) => j(52),
       y(3) => j(51),
       y(2) => j(50),
       y(1) => j(49),
       y(0) => j(48),
       z(31) => k(63),
       z(30) => k(62),
       z(29) => k(61),
       z(28) => k(60),
       z(27) => k(59),
       z(26) => k(58),
       z(25) => k(57),
       z(24) => k(56),
       z(23) => k(55),
       z(22) => k(54),
       z(21) => k(53),
       z(20) => k(52),
       z(19) => k(51),
       z(18) => k(50),
       z(17) => k(49),
       z(16) => k(48),
       z(15) => k(47),
       z(14) => k(46),
       z(13) => k(45),
       z(12) => k(44),
       z(11) => k(43),
       z(10) => k(42),
       z(9) => k(41),
       z(8) => k(40),
       z(7) => k(39),
       z(6) => k(38),
       z(5) => k(37),
       z(4) => k(36),
       z(3) => k(35),
       z(2) => k(34),
       z(1) => k(33),
       z(0) => k(32),
       result(31) => res(63),
       result(30) => res(62),
       result(29) => res(61),
       result(28) => res(60),
       result(27) => res(59),
       result(26) => res(58),
       result(25) => res(57),
       result(24) => res(56),
       result(23) => res(55),
       result(22) => res(54),
       result(21) => res(53),
       result(20) => res(52),
       result(19) => res(51),
       result(18) => res(50),
       result(17) => res(49),
       result(16) => res(48),
       result(15) => res(47),
       result(14) => res(46),
       result(13) => res(45),
       result(12) => res(44),
       result(11) => res(43),
       result(10) => res(42),
       result(9) => res(41),
       result(8) => res(40),
       result(7) => res(39),
       result(6) => res(38),
       result(5) => res(37),
       result(4) => res(36),
       result(3) => res(35),
       result(2) => res(34),
       result(1) => res(33),
       result(0) => res(32)
  );

SIMSHS_2 : MULT_SUB_I
  port map(
       x(15) => i(95),
       x(14) => i(94),
       x(13) => i(93),
       x(12) => i(92),
       x(11) => i(91),
       x(10) => i(90),
       x(9) => i(89),
       x(8) => i(88),
       x(7) => i(87),
       x(6) => i(86),
       x(5) => i(85),
       x(4) => i(84),
       x(3) => i(83),
       x(2) => i(82),
       x(1) => i(81),
       x(0) => i(80),
       y(15) => j(95),
       y(14) => j(94),
       y(13) => j(93),
       y(12) => j(92),
       y(11) => j(91),
       y(10) => j(90),
       y(9) => j(89),
       y(8) => j(88),
       y(7) => j(87),
       y(6) => j(86),
       y(5) => j(85),
       y(4) => j(84),
       y(3) => j(83),
       y(2) => j(82),
       y(1) => j(81),
       y(0) => j(80),
       z(31) => k(95),
       z(30) => k(94),
       z(29) => k(93),
       z(28) => k(92),
       z(27) => k(91),
       z(26) => k(90),
       z(25) => k(89),
       z(24) => k(88),
       z(23) => k(87),
       z(22) => k(86),
       z(21) => k(85),
       z(20) => k(84),
       z(19) => k(83),
       z(18) => k(82),
       z(17) => k(81),
       z(16) => k(80),
       z(15) => k(79),
       z(14) => k(78),
       z(13) => k(77),
       z(12) => k(76),
       z(11) => k(75),
       z(10) => k(74),
       z(9) => k(73),
       z(8) => k(72),
       z(7) => k(71),
       z(6) => k(70),
       z(5) => k(69),
       z(4) => k(68),
       z(3) => k(67),
       z(2) => k(66),
       z(1) => k(65),
       z(0) => k(64),
       result(31) => res(95),
       result(30) => res(94),
       result(29) => res(93),
       result(28) => res(92),
       result(27) => res(91),
       result(26) => res(90),
       result(25) => res(89),
       result(24) => res(88),
       result(23) => res(87),
       result(22) => res(86),
       result(21) => res(85),
       result(20) => res(84),
       result(19) => res(83),
       result(18) => res(82),
       result(17) => res(81),
       result(16) => res(80),
       result(15) => res(79),
       result(14) => res(78),
       result(13) => res(77),
       result(12) => res(76),
       result(11) => res(75),
       result(10) => res(74),
       result(9) => res(73),
       result(8) => res(72),
       result(7) => res(71),
       result(6) => res(70),
       result(5) => res(69),
       result(4) => res(68),
       result(3) => res(67),
       result(2) => res(66),
       result(1) => res(65),
       result(0) => res(64)
  );

SIMSHS_3 : MULT_SUB_I
  port map(
       x(15) => i(127),
       x(14) => i(126),
       x(13) => i(125),
       x(12) => i(124),
       x(11) => i(123),
       x(10) => i(122),
       x(9) => i(121),
       x(8) => i(120),
       x(7) => i(119),
       x(6) => i(118),
       x(5) => i(117),
       x(4) => i(116),
       x(3) => i(115),
       x(2) => i(114),
       x(1) => i(113),
       x(0) => i(112),
       y(15) => j(127),
       y(14) => j(126),
       y(13) => j(125),
       y(12) => j(124),
       y(11) => j(123),
       y(10) => j(122),
       y(9) => j(121),
       y(8) => j(120),
       y(7) => j(119),
       y(6) => j(118),
       y(5) => j(117),
       y(4) => j(116),
       y(3) => j(115),
       y(2) => j(114),
       y(1) => j(113),
       y(0) => j(112),
       z(31) => k(127),
       z(30) => k(126),
       z(29) => k(125),
       z(28) => k(124),
       z(27) => k(123),
       z(26) => k(122),
       z(25) => k(121),
       z(24) => k(120),
       z(23) => k(119),
       z(22) => k(118),
       z(21) => k(117),
       z(20) => k(116),
       z(19) => k(115),
       z(18) => k(114),
       z(17) => k(113),
       z(16) => k(112),
       z(15) => k(111),
       z(14) => k(110),
       z(13) => k(109),
       z(12) => k(108),
       z(11) => k(107),
       z(10) => k(106),
       z(9) => k(105),
       z(8) => k(104),
       z(7) => k(103),
       z(6) => k(102),
       z(5) => k(101),
       z(4) => k(100),
       z(3) => k(99),
       z(2) => k(98),
       z(1) => k(97),
       z(0) => k(96),
       result(31) => res(127),
       result(30) => res(126),
       result(29) => res(125),
       result(28) => res(124),
       result(27) => res(123),
       result(26) => res(122),
       result(25) => res(121),
       result(24) => res(120),
       result(23) => res(119),
       result(22) => res(118),
       result(21) => res(117),
       result(20) => res(116),
       result(19) => res(115),
       result(18) => res(114),
       result(17) => res(113),
       result(16) => res(112),
       result(15) => res(111),
       result(14) => res(110),
       result(13) => res(109),
       result(12) => res(108),
       result(11) => res(107),
       result(10) => res(106),
       result(9) => res(105),
       result(8) => res(104),
       result(7) => res(103),
       result(6) => res(102),
       result(5) => res(101),
       result(4) => res(100),
       result(3) => res(99),
       result(2) => res(98),
       result(1) => res(97),
       result(0) => res(96)
  );


end behavioral;
