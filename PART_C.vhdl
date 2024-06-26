library ieee;
use ieee.std_logic_1164.all;

--Use the Gates package already uploaded in my previous repository named AND_using_NAND. 
library work;
use work.Gates.all;

entity PART_C is
	port(d3,d2,d1,d0,c3,c2,c1,c0,b3,b2,b1,b0,a3,a2,a1,a0,sel1,sel0:in std_logic;
			Y3,Y2,Y1,Y0:out std_logic);
end entity;

architecture struct of PART_C is
	--The code for PART_B component is uploaded in my previous repository named 4x1_MUX.
	component PART_B is
	port(In5,In4,In3,In2,S2,S1:in std_logic;
			Y: out std_logic);
	end component;
	
begin

	inst0: PART_B port map (In5=>d3,In4=>c3,In3=>b3,In2=>a3,S2=>sel1,S1=>sel0,Y=>Y3);
	inst1: PART_B port map (In5=>d2,In4=>c2,In3=>b2,In2=>a2,S2=>sel1,S1=>sel0,Y=>Y2);
	inst2: PART_B port map (In5=>d1,In4=>c1,In3=>b1,In2=>a1,S2=>sel1,S1=>sel0,Y=>Y1);
	inst3: PART_B port map (In5=>d0,In4=>c0,In3=>b0,In2=>a0,S2=>sel1,S1=>sel0,Y=>Y0);

end architecture;
