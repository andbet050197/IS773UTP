--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:40:32 02/20/2017
-- Design Name:   
-- Module Name:   C:/ANDREStemp/LabElecDig/Detector_De_Pulso/Detectordepulso_TB.vhd
-- Project Name:  Detector_De_Pulso
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Detectordepulso
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Detectordepulso_TB IS
END Detectordepulso_TB;
 
ARCHITECTURE behavior OF Detectordepulso_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Detectordepulso
    PORT(
         Button : IN  std_logic;
         Clk : IN  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Button : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal S : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Detectordepulso PORT MAP (
          Button => Button,
          Clk => Clk,
          S => S
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
			Button <= '0';
			wait for 190 ns;
			Button <= '1';
			wait for 20 ms;
			Button <= '0';
			wait for 20 ms;
			Button <= '1';
			wait for 20 ms;
			Button <= '0';
			wait for 20 ms;
			Button <= '1';
			wait for 130 ms;
			Button <= '0';
			wait for 200 ms;
			Button <= '1';
			wait for 20 ms;
			Button <= '0';
			wait for 20 ms;
			Button <= '1';
			wait for 20 ms;
			Button <= '0';
			wait for 20 ms;
			Button <= '1';
			wait for 200 ms;
			Button <= '0';
			wait for 10 ns;
      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
