-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/12/2017 13:00:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          traffi
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY traffi_vhd_vec_tst IS
END traffi_vhd_vec_tst;
ARCHITECTURE traffi_arch OF traffi_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL car_ew : STD_LOGIC;
SIGNAL car_ns : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL ryg_ew : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ryg_ns : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT traffi
	PORT (
	car_ew : IN STD_LOGIC;
	car_ns : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	ryg_ew : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ryg_ns : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : traffi
	PORT MAP (
-- list connections between master ports and signals
	car_ew => car_ew,
	car_ns => car_ns,
	clk => clk,
	rst => rst,
	ryg_ew => ryg_ew,
	ryg_ns => ryg_ns
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 12500 ps;
	clk <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 25000 ps;
	rst <= '0';
	WAIT FOR 750000 ps;
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;

-- car_ew
t_prcs_car_ew: PROCESS
BEGIN
	car_ew <= '0';
	WAIT FOR 175000 ps;
	car_ew <= '1';
	WAIT FOR 25000 ps;
	car_ew <= '0';
	WAIT FOR 50000 ps;
	car_ew <= '1';
	WAIT FOR 175000 ps;
	car_ew <= '0';
	WAIT FOR 50000 ps;
	car_ew <= '1';
	WAIT FOR 150000 ps;
	car_ew <= '0';
WAIT;
END PROCESS t_prcs_car_ew;

-- car_ns
t_prcs_car_ns: PROCESS
BEGIN
	car_ns <= '0';
	WAIT FOR 150000 ps;
	car_ns <= '1';
	WAIT FOR 50000 ps;
	car_ns <= '0';
	WAIT FOR 275000 ps;
	car_ns <= '1';
WAIT;
END PROCESS t_prcs_car_ns;
END traffi_arch;
