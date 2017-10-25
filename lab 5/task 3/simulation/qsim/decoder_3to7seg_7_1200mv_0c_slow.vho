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

-- DATE "10/25/2017 18:14:45"

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

ENTITY 	decoder_3to7seg IS
    PORT (
	En : IN std_logic;
	R : IN std_logic_vector(2 DOWNTO 0);
	mag_leds : OUT std_logic_vector(6 DOWNTO 0);
	sign_leds : OUT std_logic_vector(6 DOWNTO 0)
	);
END decoder_3to7seg;

-- Design Ports Information
-- mag_leds[0]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[3]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[5]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[6]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[0]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[4]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[6]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder_3to7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_R : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_mag_leds : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sign_leds : std_logic_vector(6 DOWNTO 0);
SIGNAL \mag_leds[0]~output_o\ : std_logic;
SIGNAL \mag_leds[1]~output_o\ : std_logic;
SIGNAL \mag_leds[2]~output_o\ : std_logic;
SIGNAL \mag_leds[3]~output_o\ : std_logic;
SIGNAL \mag_leds[4]~output_o\ : std_logic;
SIGNAL \mag_leds[5]~output_o\ : std_logic;
SIGNAL \mag_leds[6]~output_o\ : std_logic;
SIGNAL \sign_leds[0]~output_o\ : std_logic;
SIGNAL \sign_leds[1]~output_o\ : std_logic;
SIGNAL \sign_leds[2]~output_o\ : std_logic;
SIGNAL \sign_leds[3]~output_o\ : std_logic;
SIGNAL \sign_leds[4]~output_o\ : std_logic;
SIGNAL \sign_leds[5]~output_o\ : std_logic;
SIGNAL \sign_leds[6]~output_o\ : std_logic;
SIGNAL \R[0]~input_o\ : std_logic;
SIGNAL \R[1]~input_o\ : std_logic;
SIGNAL \R[2]~input_o\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \mag_leds~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \sign_leds~0_combout\ : std_logic;
SIGNAL \ALT_INV_En~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_En <= En;
ww_R <= R;
mag_leds <= ww_mag_leds;
sign_leds <= ww_sign_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_En~input_o\ <= NOT \En~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X42_Y0_N16
\mag_leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \mag_leds[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\mag_leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_En~input_o\,
	devoe => ww_devoe,
	o => \mag_leds[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\mag_leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \mag_leds[2]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\mag_leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \mag_leds[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\mag_leds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mag_leds~0_combout\,
	devoe => ww_devoe,
	o => \mag_leds[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\mag_leds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \mag_leds[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\mag_leds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \mag_leds[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\sign_leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sign_leds[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\sign_leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sign_leds[1]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\sign_leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sign_leds[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\sign_leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sign_leds[3]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\sign_leds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sign_leds[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\sign_leds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sign_leds[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\sign_leds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sign_leds~0_combout\,
	devoe => ww_devoe,
	o => \sign_leds[6]~output_o\);

-- Location: IOIBUF_X49_Y0_N8
\R[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(0),
	o => \R[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\R[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(1),
	o => \R[1]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\R[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(2),
	o => \R[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\En~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: LCCOMB_X49_Y1_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\En~input_o\ & (((\R[1]~input_o\ & !\R[2]~input_o\)) # (!\R[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~input_o\,
	datab => \R[1]~input_o\,
	datac => \R[2]~input_o\,
	datad => \En~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X49_Y1_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\En~input_o\ & (((\R[0]~input_o\ & \R[2]~input_o\)) # (!\R[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~input_o\,
	datab => \R[1]~input_o\,
	datac => \R[2]~input_o\,
	datad => \En~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X49_Y1_N12
\mag_leds~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mag_leds~0_combout\ = (\R[0]~input_o\) # (!\En~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~input_o\,
	datad => \En~input_o\,
	combout => \mag_leds~0_combout\);

-- Location: LCCOMB_X49_Y1_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\R[1]~input_o\ & (\En~input_o\ & (\R[0]~input_o\ $ (!\R[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~input_o\,
	datab => \R[1]~input_o\,
	datac => \R[2]~input_o\,
	datad => \En~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X49_Y1_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\En~input_o\ & ((\R[1]~input_o\ & ((!\R[2]~input_o\) # (!\R[0]~input_o\))) # (!\R[1]~input_o\ & ((\R[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~input_o\,
	datab => \R[1]~input_o\,
	datac => \R[2]~input_o\,
	datad => \En~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X49_Y1_N26
\sign_leds~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_leds~0_combout\ = (!\En~input_o\) # (!\R[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R[2]~input_o\,
	datad => \En~input_o\,
	combout => \sign_leds~0_combout\);

ww_mag_leds(0) <= \mag_leds[0]~output_o\;

ww_mag_leds(1) <= \mag_leds[1]~output_o\;

ww_mag_leds(2) <= \mag_leds[2]~output_o\;

ww_mag_leds(3) <= \mag_leds[3]~output_o\;

ww_mag_leds(4) <= \mag_leds[4]~output_o\;

ww_mag_leds(5) <= \mag_leds[5]~output_o\;

ww_mag_leds(6) <= \mag_leds[6]~output_o\;

ww_sign_leds(0) <= \sign_leds[0]~output_o\;

ww_sign_leds(1) <= \sign_leds[1]~output_o\;

ww_sign_leds(2) <= \sign_leds[2]~output_o\;

ww_sign_leds(3) <= \sign_leds[3]~output_o\;

ww_sign_leds(4) <= \sign_leds[4]~output_o\;

ww_sign_leds(5) <= \sign_leds[5]~output_o\;

ww_sign_leds(6) <= \sign_leds[6]~output_o\;
END structure;


