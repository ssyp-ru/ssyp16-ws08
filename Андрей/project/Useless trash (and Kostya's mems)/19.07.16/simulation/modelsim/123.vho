-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "07/19/2016 07:02:40"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter IS
    PORT (
	c : IN std_logic;
	q1 : BUFFER std_logic;
	q2 : BUFFER std_logic;
	q3 : BUFFER std_logic
	);
END counter;

-- Design Ports Information
-- q1	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q3	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_q1 : std_logic;
SIGNAL ww_q2 : std_logic;
SIGNAL ww_q3 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \e3~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \r3~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \t3~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_e3~0_combout\ : std_logic;
SIGNAL \ALT_INV_r3~0_combout\ : std_logic;
SIGNAL \ALT_INV_t3~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;

BEGIN

ww_c <= c;
q1 <= ww_q1;
q2 <= ww_q2;
q3 <= ww_q3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_e3~0_combout\ <= NOT \e3~0_combout\;
\ALT_INV_r3~0_combout\ <= NOT \r3~0_combout\;
\ALT_INV_t3~0_combout\ <= NOT \t3~0_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;

-- Location: IOOBUF_X68_Y10_N79
\q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_comb~0_combout\,
	devoe => ww_devoe,
	o => ww_q1);

-- Location: IOOBUF_X68_Y10_N96
\q2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_comb~1_combout\,
	devoe => ww_devoe,
	o => ww_q2);

-- Location: IOOBUF_X68_Y10_N45
\q3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_comb~2_combout\,
	devoe => ww_devoe,
	o => ww_q3);

-- Location: IOIBUF_X68_Y10_N61
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LABCELL_X67_Y10_N51
\e3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \e3~0_combout\ = ( \comb~2_combout\ & ( (\e3~0_combout\ & \c~input_o\) ) ) # ( !\comb~2_combout\ & ( (!\c~input_o\) # (\e3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e3~0_combout\,
	datad => \ALT_INV_c~input_o\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \e3~0_combout\);

-- Location: LABCELL_X67_Y10_N30
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \c~input_o\ & ( \e3~0_combout\ ) ) # ( !\c~input_o\ & ( \comb~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_e3~0_combout\,
	datac => \ALT_INV_comb~2_combout\,
	dataf => \ALT_INV_c~input_o\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X67_Y10_N45
\r3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3~0_combout\ = ( \comb~1_combout\ & ( \comb~2_combout\ & ( (!\c~input_o\) # (\r3~0_combout\) ) ) ) # ( !\comb~1_combout\ & ( \comb~2_combout\ & ( (\r3~0_combout\ & \c~input_o\) ) ) ) # ( \comb~1_combout\ & ( !\comb~2_combout\ & ( (\r3~0_combout\ & 
-- \c~input_o\) ) ) ) # ( !\comb~1_combout\ & ( !\comb~2_combout\ & ( (!\c~input_o\) # (\r3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111000000000000111100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_r3~0_combout\,
	datad => \ALT_INV_c~input_o\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \r3~0_combout\);

-- Location: LABCELL_X67_Y10_N54
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \comb~1_combout\ & ( \c~input_o\ & ( \r3~0_combout\ ) ) ) # ( !\comb~1_combout\ & ( \c~input_o\ & ( \r3~0_combout\ ) ) ) # ( \comb~1_combout\ & ( !\c~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_r3~0_combout\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_c~input_o\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X67_Y10_N24
\t3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \t3~0_combout\ = ( \comb~0_combout\ & ( \comb~2_combout\ & ( (!\c~input_o\) # (\t3~0_combout\) ) ) ) # ( !\comb~0_combout\ & ( \comb~2_combout\ & ( (\t3~0_combout\ & \c~input_o\) ) ) ) # ( \comb~0_combout\ & ( !\comb~2_combout\ & ( (!\c~input_o\ & 
-- ((\comb~1_combout\))) # (\c~input_o\ & (\t3~0_combout\)) ) ) ) # ( !\comb~0_combout\ & ( !\comb~2_combout\ & ( (!\c~input_o\ & ((!\comb~1_combout\))) # (\c~input_o\ & (\t3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101000001011111010100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_t3~0_combout\,
	datac => \ALT_INV_c~input_o\,
	datad => \ALT_INV_comb~1_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \t3~0_combout\);

-- Location: LABCELL_X67_Y10_N39
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \comb~0_combout\ & ( \c~input_o\ & ( \t3~0_combout\ ) ) ) # ( !\comb~0_combout\ & ( \c~input_o\ & ( \t3~0_combout\ ) ) ) # ( \comb~0_combout\ & ( !\c~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_t3~0_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_c~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X27_Y3_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


