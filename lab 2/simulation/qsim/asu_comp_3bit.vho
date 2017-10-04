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

-- DATE "10/03/2017 19:27:43"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	asu_comp_3bit IS
    PORT (
	arith : IN std_logic;
	sub : IN std_logic;
	x : IN std_logic_vector(2 DOWNTO 0);
	y : IN std_logic_vector(2 DOWNTO 0);
	r : OUT std_logic_vector(2 DOWNTO 0);
	v : OUT std_logic
	);
END asu_comp_3bit;

-- Design Ports Information
-- r[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arith	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF asu_comp_3bit IS
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
SIGNAL \sub~input_o\ : std_logic;
SIGNAL \FA0|cout~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \xor_sig1~combout\ : std_logic;
SIGNAL \FA0|g~combout\ : std_logic;
SIGNAL \FA1|sum~combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \FA1|cout~0_combout\ : std_logic;
SIGNAL \FA2|sum~0_combout\ : std_logic;
SIGNAL \FA2|cout~0_combout\ : std_logic;
SIGNAL \arith~input_o\ : std_logic;
SIGNAL \v~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y46_N23
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

-- Location: IOOBUF_X0_Y47_N23
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

-- Location: IOOBUF_X0_Y42_N2
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

-- Location: IOOBUF_X0_Y46_N16
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

-- Location: IOIBUF_X0_Y44_N1
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X1_Y44_N0
\FA0|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|sum~0_combout\ = \x[0]~input_o\ $ (\y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \FA0|sum~0_combout\);

-- Location: IOIBUF_X0_Y44_N8
\sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sub,
	o => \sub~input_o\);

-- Location: LCCOMB_X1_Y44_N22
\FA0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|cout~0_combout\ = (\sub~input_o\ & (\x[0]~input_o\ $ (!\y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \y[0]~input_o\,
	datad => \sub~input_o\,
	combout => \FA0|cout~0_combout\);

-- Location: IOIBUF_X0_Y43_N15
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X1_Y44_N26
xor_sig1 : cycloneive_lcell_comb
-- Equation(s):
-- \xor_sig1~combout\ = \sub~input_o\ $ (\y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datad => \y[1]~input_o\,
	combout => \xor_sig1~combout\);

-- Location: LCCOMB_X1_Y44_N12
\FA0|g\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|g~combout\ = (\x[0]~input_o\ & (\y[0]~input_o\ $ (\sub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \y[0]~input_o\,
	datad => \sub~input_o\,
	combout => \FA0|g~combout\);

-- Location: LCCOMB_X1_Y44_N24
\FA1|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|sum~combout\ = \x[1]~input_o\ $ (\xor_sig1~combout\ $ (((\FA0|cout~0_combout\) # (\FA0|g~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA0|cout~0_combout\,
	datab => \x[1]~input_o\,
	datac => \xor_sig1~combout\,
	datad => \FA0|g~combout\,
	combout => \FA1|sum~combout\);

-- Location: IOIBUF_X0_Y44_N15
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X1_Y44_N10
\FA1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|cout~0_combout\ = (\x[1]~input_o\ & ((\FA0|cout~0_combout\) # ((\xor_sig1~combout\) # (\FA0|g~combout\)))) # (!\x[1]~input_o\ & (\xor_sig1~combout\ & ((\FA0|cout~0_combout\) # (\FA0|g~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA0|cout~0_combout\,
	datab => \x[1]~input_o\,
	datac => \xor_sig1~combout\,
	datad => \FA0|g~combout\,
	combout => \FA1|cout~0_combout\);

-- Location: LCCOMB_X1_Y44_N28
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

-- Location: LCCOMB_X1_Y44_N6
\FA2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|cout~0_combout\ = (\x[2]~input_o\ & ((\FA1|cout~0_combout\) # (\sub~input_o\ $ (\y[2]~input_o\)))) # (!\x[2]~input_o\ & (\FA1|cout~0_combout\ & (\sub~input_o\ $ (\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \FA1|cout~0_combout\,
	combout => \FA2|cout~0_combout\);

-- Location: IOIBUF_X0_Y42_N8
\arith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arith,
	o => \arith~input_o\);

-- Location: LCCOMB_X1_Y44_N8
\v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v~0_combout\ = \FA2|cout~0_combout\ $ (((\arith~input_o\ & ((\FA1|cout~0_combout\))) # (!\arith~input_o\ & (\sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \FA2|cout~0_combout\,
	datac => \arith~input_o\,
	datad => \FA1|cout~0_combout\,
	combout => \v~0_combout\);

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_v <= \v~output_o\;
END structure;


