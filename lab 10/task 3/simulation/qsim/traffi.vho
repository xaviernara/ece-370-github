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

-- DATE "12/12/2017 13:00:38"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	traffi IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	car_ew : IN std_logic;
	car_ns : IN std_logic;
	ryg_ew : OUT std_logic_vector(2 DOWNTO 0);
	ryg_ns : OUT std_logic_vector(2 DOWNTO 0)
	);
END traffi;

ARCHITECTURE structure OF traffi IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_car_ew : std_logic;
SIGNAL ww_car_ns : std_logic;
SIGNAL ww_ryg_ew : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ryg_ns : std_logic_vector(2 DOWNTO 0);
SIGNAL \ryg_ew[0]~output_o\ : std_logic;
SIGNAL \ryg_ew[1]~output_o\ : std_logic;
SIGNAL \ryg_ew[2]~output_o\ : std_logic;
SIGNAL \ryg_ns[0]~output_o\ : std_logic;
SIGNAL \ryg_ns[1]~output_o\ : std_logic;
SIGNAL \ryg_ns[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \car_ns~input_o\ : std_logic;
SIGNAL \present_state.GREEN_NS0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \present_state.GREEN_NS0~q\ : std_logic;
SIGNAL \present_state.GREEN_NS1~0_combout\ : std_logic;
SIGNAL \present_state.GREEN_NS1~q\ : std_logic;
SIGNAL \present_state.GREEN_NS2~q\ : std_logic;
SIGNAL \present_state.GREEN_NS3~q\ : std_logic;
SIGNAL \car_ew~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \present_state.GREEN_NS4~q\ : std_logic;
SIGNAL \next_state.YELLOW_NS~0_combout\ : std_logic;
SIGNAL \present_state.YELLOW_NS~q\ : std_logic;
SIGNAL \present_state.GREEN_EW0~q\ : std_logic;
SIGNAL \present_state.GREEN_EW1~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_state.GREEN_EW2~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_state.YELLOW_EW~q\ : std_logic;
SIGNAL \ryg_ns~2_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_present_state.YELLOW_EW~q\ : std_logic;
SIGNAL \ALT_INV_ryg_ns~2_combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_car_ew <= car_ew;
ww_car_ns <= car_ns;
ryg_ew <= ww_ryg_ew;
ryg_ns <= ww_ryg_ns;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_present_state.YELLOW_EW~q\ <= NOT \present_state.YELLOW_EW~q\;
\ALT_INV_ryg_ns~2_combout\ <= NOT \ryg_ns~2_combout\;

\ryg_ew[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ryg_ew[0]~output_o\);

\ryg_ew[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_present_state.YELLOW_EW~q\,
	devoe => ww_devoe,
	o => \ryg_ew[1]~output_o\);

\ryg_ew[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \present_state.YELLOW_EW~q\,
	devoe => ww_devoe,
	o => \ryg_ew[2]~output_o\);

\ryg_ns[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ryg_ns~2_combout\,
	devoe => ww_devoe,
	o => \ryg_ns[0]~output_o\);

\ryg_ns[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ryg_ns~2_combout\,
	devoe => ww_devoe,
	o => \ryg_ns[1]~output_o\);

\ryg_ns[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ryg_ns[2]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\car_ns~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_ns,
	o => \car_ns~input_o\);

\present_state.GREEN_NS0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.GREEN_NS0~0_combout\ = !\present_state.YELLOW_EW~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.YELLOW_EW~q\,
	combout => \present_state.GREEN_NS0~0_combout\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\present_state.GREEN_NS0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.GREEN_NS0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.GREEN_NS0~q\);

\present_state.GREEN_NS1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.GREEN_NS1~0_combout\ = !\present_state.GREEN_NS0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.GREEN_NS0~q\,
	combout => \present_state.GREEN_NS1~0_combout\);

\present_state.GREEN_NS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.GREEN_NS1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.GREEN_NS1~q\);

\present_state.GREEN_NS2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.GREEN_NS1~q\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.GREEN_NS2~q\);

\present_state.GREEN_NS3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.GREEN_NS2~q\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.GREEN_NS3~q\);

\car_ew~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_ew,
	o => \car_ew~input_o\);

\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\present_state.GREEN_NS3~q\) # ((\present_state.GREEN_NS4~q\ & !\car_ew~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.GREEN_NS3~q\,
	datab => \present_state.GREEN_NS4~q\,
	datad => \car_ew~input_o\,
	combout => \Selector0~0_combout\);

\present_state.GREEN_NS4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.GREEN_NS4~q\);

\next_state.YELLOW_NS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.YELLOW_NS~0_combout\ = (\present_state.GREEN_NS4~q\ & \car_ew~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.GREEN_NS4~q\,
	datab => \car_ew~input_o\,
	combout => \next_state.YELLOW_NS~0_combout\);

\present_state.YELLOW_NS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \next_state.YELLOW_NS~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.YELLOW_NS~q\);

\present_state.GREEN_EW0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.YELLOW_NS~q\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.GREEN_EW0~q\);

\present_state.GREEN_EW1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \present_state.GREEN_EW0~q\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.GREEN_EW1~q\);

\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\present_state.GREEN_EW1~q\) # ((\present_state.GREEN_EW2~q\ & !\car_ns~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.GREEN_EW1~q\,
	datab => \present_state.GREEN_EW2~q\,
	datad => \car_ns~input_o\,
	combout => \Selector1~0_combout\);

\present_state.GREEN_EW2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.GREEN_EW2~q\);

\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\car_ns~input_o\ & \present_state.GREEN_EW2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_ns~input_o\,
	datab => \present_state.GREEN_EW2~q\,
	combout => \Selector2~0_combout\);

\present_state.YELLOW_EW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.YELLOW_EW~q\);

\ryg_ns~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ryg_ns~2_combout\ = (\present_state.GREEN_NS4~q\) # (\present_state.YELLOW_NS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.GREEN_NS4~q\,
	datab => \present_state.YELLOW_NS~q\,
	combout => \ryg_ns~2_combout\);

ww_ryg_ew(0) <= \ryg_ew[0]~output_o\;

ww_ryg_ew(1) <= \ryg_ew[1]~output_o\;

ww_ryg_ew(2) <= \ryg_ew[2]~output_o\;

ww_ryg_ns(0) <= \ryg_ns[0]~output_o\;

ww_ryg_ns(1) <= \ryg_ns[1]~output_o\;

ww_ryg_ns(2) <= \ryg_ns[2]~output_o\;
END structure;


