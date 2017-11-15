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
-- Generated on "11/07/2017 19:07:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          arbiter_lsb_3bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY arbiter_lsb_3bit_vhd_vec_tst IS
END arbiter_lsb_3bit_vhd_vec_tst;
ARCHITECTURE arbiter_lsb_3bit_arch OF arbiter_lsb_3bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL grant : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL req : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT arbiter_lsb_3bit
	PORT (
	grant : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	req : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Z : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : arbiter_lsb_3bit
	PORT MAP (
-- list connections between master ports and signals
	grant => grant,
	req => req,
	Z => Z
	);
-- req[2]
t_prcs_req_2: PROCESS
BEGIN
LOOP
	req(2) <= '0';
	WAIT FOR 1000000 ps;
	req(2) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_req_2;
-- req[1]
t_prcs_req_1: PROCESS
BEGIN
LOOP
	req(1) <= '0';
	WAIT FOR 500000 ps;
	req(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_req_1;
-- req[0]
t_prcs_req_0: PROCESS
BEGIN
LOOP
	req(0) <= '0';
	WAIT FOR 250000 ps;
	req(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_req_0;
END arbiter_lsb_3bit_arch;
