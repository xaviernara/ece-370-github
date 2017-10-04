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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"

-- DATE "10/04/2017 09:51:51"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	asupkg_3bit IS
    PORT (
	arith : IN std_logic;
	sub : IN std_logic;
	x : IN std_logic_vector(2 DOWNTO 0);
	y : IN std_logic_vector(2 DOWNTO 0);
	r : OUT std_logic_vector(2 DOWNTO 0);
	v : OUT std_logic
	);
END asupkg_3bit;

ARCHITECTURE structure OF asupkg_3bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_arith : std_logic;
SIGNAL ww_sub : std_logic;
SIGNAL ww_x : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_v : std_logic;
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \FA0|sum~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \sub~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \xor_sig1~combout\ : std_logic;
SIGNAL \FA0|g~combout\ : std_logic;
SIGNAL \FA0|cout~0_combout\ : std_logic;
SIGNAL \FA1|sum~combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \FA1|cout~0_combout\ : std_logic;
SIGNAL \FA2|sum~0_combout\ : std_logic;
SIGNAL \arith~input_o\ : std_logic;
SIGNAL \FA2|cout~0_combout\ : std_logic;
SIGNAL \v~0_combout\ : std_logic;

BEGIN

ww_arith <= arith;
ww_sub <= sub;
ww_x <= x;
ww_y <= y;
r <= ww_r;
v <= ww_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA0|sum~0_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|sum~combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

\r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|sum~0_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \v~0_combout\,
	devoe => ww_devoe,
	o => \v~output_o\);

\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

\FA0|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|sum~0_combout\ = \x[0]~input_o\ $ (\y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \FA0|sum~0_combout\);

\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

\sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sub,
	o => \sub~input_o\);

\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

xor_sig1 : cycloneive_lcell_comb
-- Equation(s):
-- \xor_sig1~combout\ = \sub~input_o\ $ (\y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub~input_o\,
	datad => \y[1]~input_o\,
	combout => \xor_sig1~combout\);

\FA0|g\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|g~combout\ = (\x[0]~input_o\ & (\y[0]~input_o\ $ (\sub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datac => \y[0]~input_o\,
	datad => \sub~input_o\,
	combout => \FA0|g~combout\);

\FA0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|cout~0_combout\ = (\sub~input_o\ & (\x[0]~input_o\ $ (!\y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \x[0]~input_o\,
	datac => \y[0]~input_o\,
	combout => \FA0|cout~0_combout\);

\FA1|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|sum~combout\ = \x[1]~input_o\ $ (\xor_sig1~combout\ $ (((\FA0|g~combout\) # (\FA0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \xor_sig1~combout\,
	datac => \FA0|g~combout\,
	datad => \FA0|cout~0_combout\,
	combout => \FA1|sum~combout\);

\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

\FA1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|cout~0_combout\ = (\xor_sig1~combout\ & ((\FA0|cout~0_combout\) # ((\FA0|g~combout\) # (\x[1]~input_o\)))) # (!\xor_sig1~combout\ & (\x[1]~input_o\ & ((\FA0|cout~0_combout\) # (\FA0|g~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA0|cout~0_combout\,
	datab => \FA0|g~combout\,
	datac => \xor_sig1~combout\,
	datad => \x[1]~input_o\,
	combout => \FA1|cout~0_combout\);

\FA2|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|sum~0_combout\ = \sub~input_o\ $ (\x[2]~input_o\ $ (\y[2]~input_o\ $ (\FA1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \FA1|cout~0_combout\,
	combout => \FA2|sum~0_combout\);

\arith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arith,
	o => \arith~input_o\);

\FA2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|cout~0_combout\ = (\x[2]~input_o\ & ((\FA1|cout~0_combout\) # (\y[2]~input_o\ $ (\sub~input_o\)))) # (!\x[2]~input_o\ & (\FA1|cout~0_combout\ & (\y[2]~input_o\ $ (\sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \sub~input_o\,
	datac => \x[2]~input_o\,
	datad => \FA1|cout~0_combout\,
	combout => \FA2|cout~0_combout\);

\v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v~0_combout\ = \FA2|cout~0_combout\ $ (((\arith~input_o\ & ((\FA1|cout~0_combout\))) # (!\arith~input_o\ & (\sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datab => \sub~input_o\,
	datac => \FA1|cout~0_combout\,
	datad => \FA2|cout~0_combout\,
	combout => \v~0_combout\);

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_v <= \v~output_o\;
END structure;


