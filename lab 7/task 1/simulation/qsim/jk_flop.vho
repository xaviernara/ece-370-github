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

-- DATE "11/07/2017 16:21:00"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	jk_flop IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	EN : IN std_logic;
	J : IN std_logic;
	K : IN std_logic;
	Q : OUT std_logic;
	Qbar : OUT std_logic
	);
END jk_flop;

ARCHITECTURE structure OF jk_flop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Qbar : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Qbar~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \J~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Qtemp~0_combout\ : std_logic;
SIGNAL \Qtemp~1_combout\ : std_logic;
SIGNAL \Qtemp~q\ : std_logic;
SIGNAL \ALT_INV_Qtemp~q\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_EN <= EN;
ww_J <= J;
ww_K <= K;
Q <= ww_Q;
Qbar <= ww_Qbar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Qtemp~q\ <= NOT \Qtemp~q\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

\Q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Qtemp~q\,
	devoe => ww_devoe,
	o => \Q~output_o\);

\Qbar~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Qtemp~q\,
	devoe => ww_devoe,
	o => \Qbar~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

\K~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

\J~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J,
	o => \J~input_o\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\Qtemp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~0_combout\ = (\Qtemp~q\ & ((\rst~input_o\))) # (!\Qtemp~q\ & (\J~input_o\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J~input_o\,
	datab => \Qtemp~q\,
	datac => \rst~input_o\,
	combout => \Qtemp~0_combout\);

\Qtemp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qtemp~1_combout\ = (\Qtemp~q\ & (!\Qtemp~0_combout\ & ((!\K~input_o\) # (!\EN~input_o\)))) # (!\Qtemp~q\ & (\EN~input_o\ & ((\Qtemp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \K~input_o\,
	datac => \Qtemp~q\,
	datad => \Qtemp~0_combout\,
	combout => \Qtemp~1_combout\);

Qtemp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Qtemp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Qtemp~q\);

ww_Q <= \Q~output_o\;

ww_Qbar <= \Qbar~output_o\;
END structure;


