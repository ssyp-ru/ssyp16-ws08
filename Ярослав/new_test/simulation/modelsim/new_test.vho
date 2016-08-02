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

-- DATE "07/22/2016 14:56:52"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	A_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	B_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	Z : BUFFER std_logic;
	AROUND : BUFFER std_logic_vector(15 DOWNTO 0);
	A_SEL : IN std_logic_vector(3 DOWNTO 0);
	B_SEL : IN std_logic_vector(3 DOWNTO 0);
	CONST_IN : IN std_logic_vector(15 DOWNTO 0);
	DATA_IN : IN std_logic_vector(15 DOWNTO 0);
	DEST_SEL : IN std_logic_vector(3 DOWNTO 0);
	OP_SEL : IN std_logic_vector(3 DOWNTO 0);
	LOAD_EN : IN std_logic;
	CONST_SEL : IN std_logic;
	DATA_SEL : IN std_logic;
	CLK : IN std_logic
	);
END datapath;

-- Design Ports Information
-- A_OUT[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[2]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[4]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[7]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[8]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[9]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[10]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[11]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[12]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[13]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[14]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_OUT[15]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[0]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[3]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[4]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[5]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[7]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[8]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[9]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[10]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[11]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[12]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[13]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[14]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_OUT[15]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[0]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[1]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[2]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[3]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[4]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[6]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[8]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[9]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[10]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[11]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[12]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[13]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[14]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AROUND[15]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_SEL[0]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_SEL[1]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_SEL[2]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_SEL[3]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_SEL[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_SEL[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_SEL[2]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_SEL[3]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_SEL	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[0]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[1]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[2]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[6]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[7]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[8]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[10]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[11]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[13]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[14]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONST_IN[15]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SEL	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_SEL[3]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_SEL[0]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_SEL[1]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_SEL[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEST_SEL[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEST_SEL[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEST_SEL[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEST_SEL[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD_EN	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[8]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[9]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[10]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[11]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[12]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[13]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[14]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[15]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL ww_AROUND : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_A_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CONST_IN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DATA_IN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DEST_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OP_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LOAD_EN : std_logic;
SIGNAL ww_CONST_SEL : std_logic;
SIGNAL ww_DATA_SEL : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A_SEL[2]~input_o\ : std_logic;
SIGNAL \A_SEL[0]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DATA_SEL~input_o\ : std_logic;
SIGNAL \OP_SEL[3]~input_o\ : std_logic;
SIGNAL \OP_SEL[0]~input_o\ : std_logic;
SIGNAL \OP_SEL[1]~input_o\ : std_logic;
SIGNAL \CONST_SEL~input_o\ : std_logic;
SIGNAL \CONST_IN[1]~input_o\ : std_logic;
SIGNAL \B_SEL[0]~input_o\ : std_logic;
SIGNAL \B_SEL[3]~input_o\ : std_logic;
SIGNAL \B_SEL[2]~input_o\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \CONST_IN[0]~input_o\ : std_logic;
SIGNAL \DEST_SEL[0]~input_o\ : std_logic;
SIGNAL \DEST_SEL[3]~input_o\ : std_logic;
SIGNAL \LOAD_EN~input_o\ : std_logic;
SIGNAL \DEST_SEL[1]~input_o\ : std_logic;
SIGNAL \DEST_SEL[2]~input_o\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~15_combout\ : std_logic;
SIGNAL \B_SEL[1]~input_o\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~12_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~13_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~14_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux15~3_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~6_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~4_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~7_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux15~1_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~1_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~3_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~2_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux15~0_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~11_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~9_combout\ : std_logic;
SIGNAL \reg_file|reg8|OUT[0]~feeder_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~8_combout\ : std_logic;
SIGNAL \reg_file|reg10|OUT[0]~feeder_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~10_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux15~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux15~4_combout\ : std_logic;
SIGNAL \m0|OUT[0]~0_combout\ : std_logic;
SIGNAL \m1|OUT[13]~3_combout\ : std_logic;
SIGNAL \OP_SEL[2]~input_o\ : std_logic;
SIGNAL \m1|OUT[13]~5_combout\ : std_logic;
SIGNAL \CONST_IN[2]~input_o\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \CONST_IN[3]~input_o\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \CONST_IN[4]~input_o\ : std_logic;
SIGNAL \DATA_IN[4]~input_o\ : std_logic;
SIGNAL \CONST_IN[5]~input_o\ : std_logic;
SIGNAL \DATA_IN[5]~input_o\ : std_logic;
SIGNAL \A_SEL[3]~input_o\ : std_logic;
SIGNAL \reg_file|A_mul|Mux10~2_combout\ : std_logic;
SIGNAL \A_SEL[1]~input_o\ : std_logic;
SIGNAL \reg_file|reg15|OUT[5]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux10~3_combout\ : std_logic;
SIGNAL \reg_file|dec|Decoder0~5_combout\ : std_logic;
SIGNAL \reg_file|reg9|OUT[5]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg13|OUT[5]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux10~1_combout\ : std_logic;
SIGNAL \reg_file|reg12|OUT[5]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux10~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux10~4_combout\ : std_logic;
SIGNAL \m1|OUT[5]~15_combout\ : std_logic;
SIGNAL \DATA_IN[6]~input_o\ : std_logic;
SIGNAL \CONST_IN[7]~input_o\ : std_logic;
SIGNAL \CONST_IN[8]~input_o\ : std_logic;
SIGNAL \DATA_IN[8]~input_o\ : std_logic;
SIGNAL \CONST_IN[9]~input_o\ : std_logic;
SIGNAL \DATA_IN[9]~input_o\ : std_logic;
SIGNAL \reg_file|reg6|OUT[9]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg2|OUT[9]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux6~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux6~1_combout\ : std_logic;
SIGNAL \reg_file|reg7|OUT[9]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg3|OUT[9]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux6~3_combout\ : std_logic;
SIGNAL \reg_file|reg8|OUT[9]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux6~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux6~4_combout\ : std_logic;
SIGNAL \CONST_IN[6]~input_o\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~2\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~6\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~10\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~14\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~18\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~22\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~26\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~30\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~34\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~37_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s9|SH1~0_combout\ : std_logic;
SIGNAL \m1|OUT[9]~24_combout\ : std_logic;
SIGNAL \DATA_IN[10]~input_o\ : std_logic;
SIGNAL \CONST_IN[10]~input_o\ : std_logic;
SIGNAL \reg_file|reg2|OUT[10]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux5~0_combout\ : std_logic;
SIGNAL \reg_file|reg12|OUT[10]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux5~3_combout\ : std_logic;
SIGNAL \reg_file|reg9|OUT[10]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg8|OUT[10]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux5~2_combout\ : std_logic;
SIGNAL \reg_file|reg4|OUT[10]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg6|OUT[10]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux5~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux5~4_combout\ : std_logic;
SIGNAL \m1|OUT[10]~27_combout\ : std_logic;
SIGNAL \CONST_IN[11]~input_o\ : std_logic;
SIGNAL \DATA_IN[11]~input_o\ : std_logic;
SIGNAL \CONST_IN[12]~input_o\ : std_logic;
SIGNAL \reg_file|A_mul|Mux4~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux4~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux4~3_combout\ : std_logic;
SIGNAL \reg_file|reg1|OUT[11]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg13|OUT[11]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux4~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux4~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~38\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~42\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~45_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s11|SH1~2_combout\ : std_logic;
SIGNAL \reg_file|reg7|OUT[12]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux3~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux3~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux3~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux3~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux3~4_combout\ : std_logic;
SIGNAL \m1|OUT[12]~32_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~46\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~49_sumout\ : std_logic;
SIGNAL \m1|OUT[12]~33_combout\ : std_logic;
SIGNAL \DATA_IN[12]~input_o\ : std_logic;
SIGNAL \CONST_IN[13]~input_o\ : std_logic;
SIGNAL \reg_file|reg13|OUT[13]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg9|OUT[13]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux2~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux2~3_combout\ : std_logic;
SIGNAL \reg_file|reg2|OUT[13]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux2~2_combout\ : std_logic;
SIGNAL \reg_file|reg12|OUT[13]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg8|OUT[13]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux2~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux2~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~50\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~53_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s13|SH1~0_combout\ : std_logic;
SIGNAL \m1|OUT[13]~37_combout\ : std_logic;
SIGNAL \CONST_IN[14]~input_o\ : std_logic;
SIGNAL \DATA_IN[14]~input_o\ : std_logic;
SIGNAL \CONST_IN[15]~input_o\ : std_logic;
SIGNAL \reg_file|reg12|OUT[14]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux1~3_combout\ : std_logic;
SIGNAL \reg_file|reg4|OUT[14]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg5|OUT[14]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg7|OUT[14]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux1~1_combout\ : std_logic;
SIGNAL \reg_file|reg8|OUT[14]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg9|OUT[14]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux1~2_combout\ : std_logic;
SIGNAL \reg_file|reg2|OUT[14]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux1~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux1~4_combout\ : std_logic;
SIGNAL \DATA_IN[15]~input_o\ : std_logic;
SIGNAL \reg_file|reg6|OUT[15]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg2|OUT[15]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux0~2_combout\ : std_logic;
SIGNAL \reg_file|reg9|OUT[15]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg13|OUT[15]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux0~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux0~3_combout\ : std_logic;
SIGNAL \reg_file|reg4|OUT[15]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux0~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux0~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|lv|Mux0~0_combout\ : std_logic;
SIGNAL \m1|OUT[15]~46_combout\ : std_logic;
SIGNAL \m1|OUT[15]~47_combout\ : std_logic;
SIGNAL \m1|OUT[15]~45_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~54\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~57_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~58\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~61_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s15|REG~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s11|SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~41_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s9|SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~29_sumout\ : std_logic;
SIGNAL \reg_file|reg15|OUT[7]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux8~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux8~0_combout\ : std_logic;
SIGNAL \reg_file|reg2|OUT[7]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux8~2_combout\ : std_logic;
SIGNAL \reg_file|reg9|OUT[7]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux8~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux8~4_combout\ : std_logic;
SIGNAL \reg_file|reg2|OUT[8]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux7~0_combout\ : std_logic;
SIGNAL \reg_file|reg6|OUT[8]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux7~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux7~3_combout\ : std_logic;
SIGNAL \reg_file|reg10|OUT[8]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux7~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux7~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~33_sumout\ : std_logic;
SIGNAL \reg_file|reg12|OUT[6]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux9~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux9~2_combout\ : std_logic;
SIGNAL \reg_file|reg1|OUT[6]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg3|OUT[6]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux9~0_combout\ : std_logic;
SIGNAL \reg_file|reg4|OUT[6]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg5|OUT[6]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux9~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux9~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~25_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s6|SH1~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~17_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~21_sumout\ : std_logic;
SIGNAL \reg_file|reg2|OUT[4]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux11~0_combout\ : std_logic;
SIGNAL \reg_file|reg6|OUT[4]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux11~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux11~2_combout\ : std_logic;
SIGNAL \reg_file|reg12|OUT[4]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux11~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux11~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux12~3_combout\ : std_logic;
SIGNAL \reg_file|reg12|OUT[3]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux12~0_combout\ : std_logic;
SIGNAL \reg_file|reg6|OUT[3]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux12~2_combout\ : std_logic;
SIGNAL \reg_file|reg13|OUT[3]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux12~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux12~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux13~2_combout\ : std_logic;
SIGNAL \reg_file|reg4|OUT[2]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg7|OUT[2]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux13~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux13~3_combout\ : std_logic;
SIGNAL \reg_file|reg2|OUT[2]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux13~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux13~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~9_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~13_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~1_sumout\ : std_logic;
SIGNAL \reg_file|reg13|OUT[1]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux14~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux14~2_combout\ : std_logic;
SIGNAL \reg_file|reg4|OUT[1]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux14~0_combout\ : std_logic;
SIGNAL \reg_file|reg15|OUT[1]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg7|OUT[1]~feeder_combout\ : std_logic;
SIGNAL \reg_file|reg3|OUT[1]~feeder_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux14~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux14~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|Add0~5_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s1|SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s3|SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s6|SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s6|SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s8|SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s11|SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s13|SH1~combout\ : std_logic;
SIGNAL \m1|OUT[15]~48_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux0~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux0~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux0~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux0~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux0~4_combout\ : std_logic;
SIGNAL \m0|OUT[15]~15_combout\ : std_logic;
SIGNAL \m1|OUT[14]~42_combout\ : std_logic;
SIGNAL \m1|OUT[14]~41_combout\ : std_logic;
SIGNAL \m1|OUT[14]~43_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s10|SH1~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s10|SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s5|SH1~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s5|SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s2|SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s5|SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s7|SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s10|SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s12|SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s14|SH1~0_combout\ : std_logic;
SIGNAL \m1|OUT[14]~44_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux1~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux1~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux1~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux1~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux1~4_combout\ : std_logic;
SIGNAL \m0|OUT[14]~14_combout\ : std_logic;
SIGNAL \DATA_IN[13]~input_o\ : std_logic;
SIGNAL \m1|OUT[13]~38_combout\ : std_logic;
SIGNAL \m1|OUT[13]~39_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s7|SH1~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s4|SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s7|SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s7|SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s9|SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s11|SH1~combout\ : std_logic;
SIGNAL \m1|OUT[13]~40_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux2~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux2~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux2~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux2~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux2~4_combout\ : std_logic;
SIGNAL \m0|OUT[13]~13_combout\ : std_logic;
SIGNAL \m1|OUT[12]~34_combout\ : std_logic;
SIGNAL \m1|OUT[12]~35_combout\ : std_logic;
SIGNAL \m1|OUT[12]~36_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux3~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux3~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux3~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux3~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux3~4_combout\ : std_logic;
SIGNAL \m0|OUT[12]~12_combout\ : std_logic;
SIGNAL \m1|OUT[11]~30_combout\ : std_logic;
SIGNAL \m1|OUT[11]~31_combout\ : std_logic;
SIGNAL \m1|OUT[11]~49_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux4~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux4~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux4~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux4~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux4~4_combout\ : std_logic;
SIGNAL \m0|OUT[11]~11_combout\ : std_logic;
SIGNAL \m1|OUT[10]~28_combout\ : std_logic;
SIGNAL \m1|OUT[10]~29_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux5~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux5~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux5~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux5~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux5~4_combout\ : std_logic;
SIGNAL \m0|OUT[10]~10_combout\ : std_logic;
SIGNAL \m1|OUT[9]~25_combout\ : std_logic;
SIGNAL \m1|OUT[9]~26_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux6~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux6~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux6~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux6~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux6~4_combout\ : std_logic;
SIGNAL \m0|OUT[9]~9_combout\ : std_logic;
SIGNAL \m1|OUT[8]~22_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s8|SH1~0_combout\ : std_logic;
SIGNAL \m1|OUT[8]~23_combout\ : std_logic;
SIGNAL \m1|OUT[8]~53_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux7~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux7~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux7~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux7~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux7~4_combout\ : std_logic;
SIGNAL \m0|OUT[8]~8_combout\ : std_logic;
SIGNAL \DATA_IN[7]~input_o\ : std_logic;
SIGNAL \m1|OUT[7]~20_combout\ : std_logic;
SIGNAL \m1|OUT[7]~21_combout\ : std_logic;
SIGNAL \m1|OUT[7]~57_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux8~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux8~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux8~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux8~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux8~4_combout\ : std_logic;
SIGNAL \m0|OUT[7]~7_combout\ : std_logic;
SIGNAL \m1|OUT[6]~18_combout\ : std_logic;
SIGNAL \m1|OUT[6]~19_combout\ : std_logic;
SIGNAL \m1|OUT[6]~61_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux9~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux9~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux9~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux9~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux9~4_combout\ : std_logic;
SIGNAL \m0|OUT[6]~6_combout\ : std_logic;
SIGNAL \m1|OUT[5]~16_combout\ : std_logic;
SIGNAL \m1|OUT[5]~17_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux10~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux10~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux10~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux10~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux10~4_combout\ : std_logic;
SIGNAL \m0|OUT[5]~5_combout\ : std_logic;
SIGNAL \m1|OUT[4]~12_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s4|REG~combout\ : std_logic;
SIGNAL \m1|OUT[4]~13_combout\ : std_logic;
SIGNAL \m1|OUT[4]~14_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux11~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux11~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux11~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux11~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux11~4_combout\ : std_logic;
SIGNAL \m0|OUT[4]~4_combout\ : std_logic;
SIGNAL \m1|OUT[3]~10_combout\ : std_logic;
SIGNAL \m1|OUT[3]~11_combout\ : std_logic;
SIGNAL \m1|OUT[3]~65_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux12~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux12~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux12~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux12~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux12~4_combout\ : std_logic;
SIGNAL \m0|OUT[3]~3_combout\ : std_logic;
SIGNAL \m1|OUT[2]~8_combout\ : std_logic;
SIGNAL \m1|OUT[2]~9_combout\ : std_logic;
SIGNAL \m1|OUT[2]~69_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux13~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux13~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux13~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux13~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux13~4_combout\ : std_logic;
SIGNAL \m0|OUT[2]~2_combout\ : std_logic;
SIGNAL \m1|OUT[1]~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s1|REG~combout\ : std_logic;
SIGNAL \m1|OUT[1]~6_combout\ : std_logic;
SIGNAL \m1|OUT[1]~7_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux14~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux14~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux14~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux14~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|Mux14~4_combout\ : std_logic;
SIGNAL \m0|OUT[1]~1_combout\ : std_logic;
SIGNAL \m1|OUT[0]~0_combout\ : std_logic;
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \func_unit|_alu|lv|Mux15~0_combout\ : std_logic;
SIGNAL \m1|OUT[0]~1_combout\ : std_logic;
SIGNAL \m1|OUT[0]~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux15~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux15~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux15~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux15~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|Mux15~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|WideOr0~5_combout\ : std_logic;
SIGNAL \func_unit|_alu|WideOr0~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|WideOr0~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|WideOr0~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|WideOr0~3_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s9|REG~combout\ : std_logic;
SIGNAL \func_unit|_alu|WideOr0~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|WideOr0~combout\ : std_logic;
SIGNAL \reg_file|reg0|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg5|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg1|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg2|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg3|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg4|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg6|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg7|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg8|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg9|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg10|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg11|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg12|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg13|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg14|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg15|OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_DATA_IN[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_LOAD_EN~input_o\ : std_logic;
SIGNAL \ALT_INV_DEST_SEL[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DEST_SEL[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DEST_SEL[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DEST_SEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP_SEL[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP_SEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP_SEL[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP_SEL[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_SEL~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_IN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONST_SEL~input_o\ : std_logic;
SIGNAL \ALT_INV_B_SEL[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_SEL[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_SEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_SEL[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_SEL[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_SEL[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_SEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_SEL[0]~input_o\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[15]~48_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[15]~47_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[15]~46_combout\ : std_logic;
SIGNAL \func_unit|_alu|lv|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[15]~45_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[14]~44_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[14]~43_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[14]~42_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[14]~41_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s14|ALT_INV_SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s12|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s10|ALT_INV_SH1~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s10|ALT_INV_SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s7|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[13]~40_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[13]~39_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[13]~38_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[13]~37_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s11|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[12]~36_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[12]~35_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[12]~34_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[12]~33_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[12]~32_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[11]~31_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[11]~30_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[10]~29_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[10]~28_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[10]~27_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s10|ALT_INV_SH1~0_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[9]~26_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[9]~25_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[9]~24_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[8]~23_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[8]~22_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[7]~21_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[7]~20_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[6]~19_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[6]~18_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s5|ALT_INV_SH1~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s5|ALT_INV_SH1~1_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[5]~17_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[5]~16_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[5]~15_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s5|ALT_INV_SH1~0_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[4]~14_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[4]~13_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[4]~12_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[3]~11_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[3]~10_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[2]~9_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[2]~8_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[1]~7_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[1]~6_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[13]~5_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[1]~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s1|ALT_INV_REG~combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[13]~3_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[0]~2_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[0]~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|lv|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[0]~0_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[15]~15_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[14]~14_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[13]~13_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[12]~12_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[11]~11_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[10]~10_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[9]~9_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[8]~8_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[7]~7_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[6]~6_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[5]~5_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[4]~4_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[3]~3_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[2]~2_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[1]~1_combout\ : std_logic;
SIGNAL \m0|ALT_INV_OUT[0]~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \func_unit|_alu|ALT_INV_WideOr0~5_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s13|ALT_INV_SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|ALT_INV_WideOr0~4_combout\ : std_logic;
SIGNAL \func_unit|_alu|ALT_INV_WideOr0~3_combout\ : std_logic;
SIGNAL \func_unit|_alu|ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s4|ALT_INV_REG~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s8|ALT_INV_SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s9|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s9|ALT_INV_REG~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s7|ALT_INV_SH1~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s7|ALT_INV_SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s7|ALT_INV_SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s4|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s2|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s15|ALT_INV_REG~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s13|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s11|ALT_INV_SH1~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s11|ALT_INV_SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s11|ALT_INV_SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s9|ALT_INV_SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s9|ALT_INV_SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s8|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s6|ALT_INV_SH1~2_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s6|ALT_INV_SH1~1_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s6|ALT_INV_SH1~0_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s3|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \func_unit|_alu|au|s|s1|ALT_INV_SH1~combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \reg_file|B_mul|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \reg_file|reg15|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg11|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg7|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg3|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|A_mul|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \reg_file|reg14|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg10|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg6|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg2|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|A_mul|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \reg_file|reg13|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg9|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg5|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg1|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|A_mul|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \reg_file|reg12|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg8|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg4|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|reg0|ALT_INV_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file|A_mul|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \reg_file|A_mul|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[2]~69_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[3]~65_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[6]~61_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[7]~57_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[8]~53_combout\ : std_logic;
SIGNAL \m1|ALT_INV_OUT[11]~49_combout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \func_unit|_alu|au|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

A_OUT <= ww_A_OUT;
B_OUT <= ww_B_OUT;
Z <= ww_Z;
AROUND <= ww_AROUND;
ww_A_SEL <= A_SEL;
ww_B_SEL <= B_SEL;
ww_CONST_IN <= CONST_IN;
ww_DATA_IN <= DATA_IN;
ww_DEST_SEL <= DEST_SEL;
ww_OP_SEL <= OP_SEL;
ww_LOAD_EN <= LOAD_EN;
ww_CONST_SEL <= CONST_SEL;
ww_DATA_SEL <= DATA_SEL;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_DATA_IN[15]~input_o\ <= NOT \DATA_IN[15]~input_o\;
\ALT_INV_DATA_IN[14]~input_o\ <= NOT \DATA_IN[14]~input_o\;
\ALT_INV_DATA_IN[13]~input_o\ <= NOT \DATA_IN[13]~input_o\;
\ALT_INV_DATA_IN[12]~input_o\ <= NOT \DATA_IN[12]~input_o\;
\ALT_INV_DATA_IN[11]~input_o\ <= NOT \DATA_IN[11]~input_o\;
\ALT_INV_DATA_IN[10]~input_o\ <= NOT \DATA_IN[10]~input_o\;
\ALT_INV_DATA_IN[9]~input_o\ <= NOT \DATA_IN[9]~input_o\;
\ALT_INV_DATA_IN[8]~input_o\ <= NOT \DATA_IN[8]~input_o\;
\ALT_INV_DATA_IN[7]~input_o\ <= NOT \DATA_IN[7]~input_o\;
\ALT_INV_DATA_IN[6]~input_o\ <= NOT \DATA_IN[6]~input_o\;
\ALT_INV_DATA_IN[5]~input_o\ <= NOT \DATA_IN[5]~input_o\;
\ALT_INV_DATA_IN[4]~input_o\ <= NOT \DATA_IN[4]~input_o\;
\ALT_INV_DATA_IN[3]~input_o\ <= NOT \DATA_IN[3]~input_o\;
\ALT_INV_DATA_IN[2]~input_o\ <= NOT \DATA_IN[2]~input_o\;
\ALT_INV_DATA_IN[1]~input_o\ <= NOT \DATA_IN[1]~input_o\;
\ALT_INV_LOAD_EN~input_o\ <= NOT \LOAD_EN~input_o\;
\ALT_INV_DEST_SEL[0]~input_o\ <= NOT \DEST_SEL[0]~input_o\;
\ALT_INV_DEST_SEL[3]~input_o\ <= NOT \DEST_SEL[3]~input_o\;
\ALT_INV_DEST_SEL[2]~input_o\ <= NOT \DEST_SEL[2]~input_o\;
\ALT_INV_DEST_SEL[1]~input_o\ <= NOT \DEST_SEL[1]~input_o\;
\ALT_INV_OP_SEL[2]~input_o\ <= NOT \OP_SEL[2]~input_o\;
\ALT_INV_OP_SEL[1]~input_o\ <= NOT \OP_SEL[1]~input_o\;
\ALT_INV_OP_SEL[0]~input_o\ <= NOT \OP_SEL[0]~input_o\;
\ALT_INV_OP_SEL[3]~input_o\ <= NOT \OP_SEL[3]~input_o\;
\ALT_INV_DATA_SEL~input_o\ <= NOT \DATA_SEL~input_o\;
\ALT_INV_DATA_IN[0]~input_o\ <= NOT \DATA_IN[0]~input_o\;
\ALT_INV_CONST_IN[15]~input_o\ <= NOT \CONST_IN[15]~input_o\;
\ALT_INV_CONST_IN[14]~input_o\ <= NOT \CONST_IN[14]~input_o\;
\ALT_INV_CONST_IN[13]~input_o\ <= NOT \CONST_IN[13]~input_o\;
\ALT_INV_CONST_IN[12]~input_o\ <= NOT \CONST_IN[12]~input_o\;
\ALT_INV_CONST_IN[11]~input_o\ <= NOT \CONST_IN[11]~input_o\;
\ALT_INV_CONST_IN[10]~input_o\ <= NOT \CONST_IN[10]~input_o\;
\ALT_INV_CONST_IN[9]~input_o\ <= NOT \CONST_IN[9]~input_o\;
\ALT_INV_CONST_IN[8]~input_o\ <= NOT \CONST_IN[8]~input_o\;
\ALT_INV_CONST_IN[7]~input_o\ <= NOT \CONST_IN[7]~input_o\;
\ALT_INV_CONST_IN[6]~input_o\ <= NOT \CONST_IN[6]~input_o\;
\ALT_INV_CONST_IN[5]~input_o\ <= NOT \CONST_IN[5]~input_o\;
\ALT_INV_CONST_IN[4]~input_o\ <= NOT \CONST_IN[4]~input_o\;
\ALT_INV_CONST_IN[3]~input_o\ <= NOT \CONST_IN[3]~input_o\;
\ALT_INV_CONST_IN[2]~input_o\ <= NOT \CONST_IN[2]~input_o\;
\ALT_INV_CONST_IN[1]~input_o\ <= NOT \CONST_IN[1]~input_o\;
\ALT_INV_CONST_IN[0]~input_o\ <= NOT \CONST_IN[0]~input_o\;
\ALT_INV_CONST_SEL~input_o\ <= NOT \CONST_SEL~input_o\;
\ALT_INV_B_SEL[3]~input_o\ <= NOT \B_SEL[3]~input_o\;
\ALT_INV_B_SEL[2]~input_o\ <= NOT \B_SEL[2]~input_o\;
\ALT_INV_B_SEL[1]~input_o\ <= NOT \B_SEL[1]~input_o\;
\ALT_INV_B_SEL[0]~input_o\ <= NOT \B_SEL[0]~input_o\;
\ALT_INV_A_SEL[3]~input_o\ <= NOT \A_SEL[3]~input_o\;
\ALT_INV_A_SEL[2]~input_o\ <= NOT \A_SEL[2]~input_o\;
\ALT_INV_A_SEL[1]~input_o\ <= NOT \A_SEL[1]~input_o\;
\ALT_INV_A_SEL[0]~input_o\ <= NOT \A_SEL[0]~input_o\;
\m1|ALT_INV_OUT[15]~48_combout\ <= NOT \m1|OUT[15]~48_combout\;
\m1|ALT_INV_OUT[15]~47_combout\ <= NOT \m1|OUT[15]~47_combout\;
\m1|ALT_INV_OUT[15]~46_combout\ <= NOT \m1|OUT[15]~46_combout\;
\func_unit|_alu|lv|ALT_INV_Mux0~0_combout\ <= NOT \func_unit|_alu|lv|Mux0~0_combout\;
\m1|ALT_INV_OUT[15]~45_combout\ <= NOT \m1|OUT[15]~45_combout\;
\m1|ALT_INV_OUT[14]~44_combout\ <= NOT \m1|OUT[14]~44_combout\;
\m1|ALT_INV_OUT[14]~43_combout\ <= NOT \m1|OUT[14]~43_combout\;
\m1|ALT_INV_OUT[14]~42_combout\ <= NOT \m1|OUT[14]~42_combout\;
\m1|ALT_INV_OUT[14]~41_combout\ <= NOT \m1|OUT[14]~41_combout\;
\func_unit|_alu|au|s|s14|ALT_INV_SH1~0_combout\ <= NOT \func_unit|_alu|au|s|s14|SH1~0_combout\;
\func_unit|_alu|au|s|s12|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s12|SH1~combout\;
\func_unit|_alu|au|s|s10|ALT_INV_SH1~2_combout\ <= NOT \func_unit|_alu|au|s|s10|SH1~2_combout\;
\func_unit|_alu|au|s|s10|ALT_INV_SH1~1_combout\ <= NOT \func_unit|_alu|au|s|s10|SH1~1_combout\;
\func_unit|_alu|au|s|s7|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s7|SH1~combout\;
\m1|ALT_INV_OUT[13]~40_combout\ <= NOT \m1|OUT[13]~40_combout\;
\m1|ALT_INV_OUT[13]~39_combout\ <= NOT \m1|OUT[13]~39_combout\;
\m1|ALT_INV_OUT[13]~38_combout\ <= NOT \m1|OUT[13]~38_combout\;
\m1|ALT_INV_OUT[13]~37_combout\ <= NOT \m1|OUT[13]~37_combout\;
\func_unit|_alu|au|s|s11|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s11|SH1~combout\;
\m1|ALT_INV_OUT[12]~36_combout\ <= NOT \m1|OUT[12]~36_combout\;
\m1|ALT_INV_OUT[12]~35_combout\ <= NOT \m1|OUT[12]~35_combout\;
\m1|ALT_INV_OUT[12]~34_combout\ <= NOT \m1|OUT[12]~34_combout\;
\m1|ALT_INV_OUT[12]~33_combout\ <= NOT \m1|OUT[12]~33_combout\;
\m1|ALT_INV_OUT[12]~32_combout\ <= NOT \m1|OUT[12]~32_combout\;
\m1|ALT_INV_OUT[11]~31_combout\ <= NOT \m1|OUT[11]~31_combout\;
\m1|ALT_INV_OUT[11]~30_combout\ <= NOT \m1|OUT[11]~30_combout\;
\m1|ALT_INV_OUT[10]~29_combout\ <= NOT \m1|OUT[10]~29_combout\;
\m1|ALT_INV_OUT[10]~28_combout\ <= NOT \m1|OUT[10]~28_combout\;
\m1|ALT_INV_OUT[10]~27_combout\ <= NOT \m1|OUT[10]~27_combout\;
\func_unit|_alu|au|s|s10|ALT_INV_SH1~0_combout\ <= NOT \func_unit|_alu|au|s|s10|SH1~0_combout\;
\m1|ALT_INV_OUT[9]~26_combout\ <= NOT \m1|OUT[9]~26_combout\;
\m1|ALT_INV_OUT[9]~25_combout\ <= NOT \m1|OUT[9]~25_combout\;
\m1|ALT_INV_OUT[9]~24_combout\ <= NOT \m1|OUT[9]~24_combout\;
\m1|ALT_INV_OUT[8]~23_combout\ <= NOT \m1|OUT[8]~23_combout\;
\m1|ALT_INV_OUT[8]~22_combout\ <= NOT \m1|OUT[8]~22_combout\;
\m1|ALT_INV_OUT[7]~21_combout\ <= NOT \m1|OUT[7]~21_combout\;
\m1|ALT_INV_OUT[7]~20_combout\ <= NOT \m1|OUT[7]~20_combout\;
\m1|ALT_INV_OUT[6]~19_combout\ <= NOT \m1|OUT[6]~19_combout\;
\m1|ALT_INV_OUT[6]~18_combout\ <= NOT \m1|OUT[6]~18_combout\;
\func_unit|_alu|au|s|s5|ALT_INV_SH1~2_combout\ <= NOT \func_unit|_alu|au|s|s5|SH1~2_combout\;
\func_unit|_alu|au|s|s5|ALT_INV_SH1~1_combout\ <= NOT \func_unit|_alu|au|s|s5|SH1~1_combout\;
\m1|ALT_INV_OUT[5]~17_combout\ <= NOT \m1|OUT[5]~17_combout\;
\m1|ALT_INV_OUT[5]~16_combout\ <= NOT \m1|OUT[5]~16_combout\;
\m1|ALT_INV_OUT[5]~15_combout\ <= NOT \m1|OUT[5]~15_combout\;
\func_unit|_alu|au|s|s5|ALT_INV_SH1~0_combout\ <= NOT \func_unit|_alu|au|s|s5|SH1~0_combout\;
\m1|ALT_INV_OUT[4]~14_combout\ <= NOT \m1|OUT[4]~14_combout\;
\m1|ALT_INV_OUT[4]~13_combout\ <= NOT \m1|OUT[4]~13_combout\;
\m1|ALT_INV_OUT[4]~12_combout\ <= NOT \m1|OUT[4]~12_combout\;
\m1|ALT_INV_OUT[3]~11_combout\ <= NOT \m1|OUT[3]~11_combout\;
\m1|ALT_INV_OUT[3]~10_combout\ <= NOT \m1|OUT[3]~10_combout\;
\m1|ALT_INV_OUT[2]~9_combout\ <= NOT \m1|OUT[2]~9_combout\;
\m1|ALT_INV_OUT[2]~8_combout\ <= NOT \m1|OUT[2]~8_combout\;
\m1|ALT_INV_OUT[1]~7_combout\ <= NOT \m1|OUT[1]~7_combout\;
\m1|ALT_INV_OUT[1]~6_combout\ <= NOT \m1|OUT[1]~6_combout\;
\m1|ALT_INV_OUT[13]~5_combout\ <= NOT \m1|OUT[13]~5_combout\;
\m1|ALT_INV_OUT[1]~4_combout\ <= NOT \m1|OUT[1]~4_combout\;
\func_unit|_alu|au|s|s1|ALT_INV_REG~combout\ <= NOT \func_unit|_alu|au|s|s1|REG~combout\;
\m1|ALT_INV_OUT[13]~3_combout\ <= NOT \m1|OUT[13]~3_combout\;
\m1|ALT_INV_OUT[0]~2_combout\ <= NOT \m1|OUT[0]~2_combout\;
\m1|ALT_INV_OUT[0]~1_combout\ <= NOT \m1|OUT[0]~1_combout\;
\func_unit|_alu|lv|ALT_INV_Mux15~0_combout\ <= NOT \func_unit|_alu|lv|Mux15~0_combout\;
\m1|ALT_INV_OUT[0]~0_combout\ <= NOT \m1|OUT[0]~0_combout\;
\m0|ALT_INV_OUT[15]~15_combout\ <= NOT \m0|OUT[15]~15_combout\;
\m0|ALT_INV_OUT[14]~14_combout\ <= NOT \m0|OUT[14]~14_combout\;
\m0|ALT_INV_OUT[13]~13_combout\ <= NOT \m0|OUT[13]~13_combout\;
\m0|ALT_INV_OUT[12]~12_combout\ <= NOT \m0|OUT[12]~12_combout\;
\m0|ALT_INV_OUT[11]~11_combout\ <= NOT \m0|OUT[11]~11_combout\;
\m0|ALT_INV_OUT[10]~10_combout\ <= NOT \m0|OUT[10]~10_combout\;
\m0|ALT_INV_OUT[9]~9_combout\ <= NOT \m0|OUT[9]~9_combout\;
\m0|ALT_INV_OUT[8]~8_combout\ <= NOT \m0|OUT[8]~8_combout\;
\m0|ALT_INV_OUT[7]~7_combout\ <= NOT \m0|OUT[7]~7_combout\;
\m0|ALT_INV_OUT[6]~6_combout\ <= NOT \m0|OUT[6]~6_combout\;
\m0|ALT_INV_OUT[5]~5_combout\ <= NOT \m0|OUT[5]~5_combout\;
\m0|ALT_INV_OUT[4]~4_combout\ <= NOT \m0|OUT[4]~4_combout\;
\m0|ALT_INV_OUT[3]~3_combout\ <= NOT \m0|OUT[3]~3_combout\;
\m0|ALT_INV_OUT[2]~2_combout\ <= NOT \m0|OUT[2]~2_combout\;
\m0|ALT_INV_OUT[1]~1_combout\ <= NOT \m0|OUT[1]~1_combout\;
\m0|ALT_INV_OUT[0]~0_combout\ <= NOT \m0|OUT[0]~0_combout\;
\func_unit|_alu|ALT_INV_WideOr0~combout\ <= NOT \func_unit|_alu|WideOr0~combout\;
\func_unit|_alu|ALT_INV_WideOr0~5_combout\ <= NOT \func_unit|_alu|WideOr0~5_combout\;
\func_unit|_alu|au|s|s13|ALT_INV_SH1~0_combout\ <= NOT \func_unit|_alu|au|s|s13|SH1~0_combout\;
\func_unit|_alu|ALT_INV_WideOr0~4_combout\ <= NOT \func_unit|_alu|WideOr0~4_combout\;
\func_unit|_alu|ALT_INV_WideOr0~3_combout\ <= NOT \func_unit|_alu|WideOr0~3_combout\;
\func_unit|_alu|ALT_INV_WideOr0~2_combout\ <= NOT \func_unit|_alu|WideOr0~2_combout\;
\func_unit|_alu|ALT_INV_WideOr0~1_combout\ <= NOT \func_unit|_alu|WideOr0~1_combout\;
\func_unit|_alu|ALT_INV_WideOr0~0_combout\ <= NOT \func_unit|_alu|WideOr0~0_combout\;
\func_unit|_alu|au|s|s4|ALT_INV_REG~combout\ <= NOT \func_unit|_alu|au|s|s4|REG~combout\;
\func_unit|_alu|au|s|s8|ALT_INV_SH1~0_combout\ <= NOT \func_unit|_alu|au|s|s8|SH1~0_combout\;
\func_unit|_alu|au|s|s9|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s9|SH1~combout\;
\func_unit|_alu|au|s|s9|ALT_INV_REG~combout\ <= NOT \func_unit|_alu|au|s|s9|REG~combout\;
\func_unit|_alu|au|s|s7|ALT_INV_SH1~2_combout\ <= NOT \func_unit|_alu|au|s|s7|SH1~2_combout\;
\func_unit|_alu|au|s|s7|ALT_INV_SH1~1_combout\ <= NOT \func_unit|_alu|au|s|s7|SH1~1_combout\;
\func_unit|_alu|au|s|s7|ALT_INV_SH1~0_combout\ <= NOT \func_unit|_alu|au|s|s7|SH1~0_combout\;
\func_unit|_alu|au|s|s4|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s4|SH1~combout\;
\func_unit|_alu|au|s|s2|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s2|SH1~combout\;
\func_unit|_alu|au|s|s15|ALT_INV_REG~0_combout\ <= NOT \func_unit|_alu|au|s|s15|REG~0_combout\;
\func_unit|_alu|au|s|s13|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s13|SH1~combout\;
\func_unit|_alu|au|s|s11|ALT_INV_SH1~2_combout\ <= NOT \func_unit|_alu|au|s|s11|SH1~2_combout\;
\func_unit|_alu|au|s|s11|ALT_INV_SH1~1_combout\ <= NOT \func_unit|_alu|au|s|s11|SH1~1_combout\;
\func_unit|_alu|au|s|s11|ALT_INV_SH1~0_combout\ <= NOT \func_unit|_alu|au|s|s11|SH1~0_combout\;
\func_unit|_alu|au|s|s9|ALT_INV_SH1~1_combout\ <= NOT \func_unit|_alu|au|s|s9|SH1~1_combout\;
\func_unit|_alu|au|s|s9|ALT_INV_SH1~0_combout\ <= NOT \func_unit|_alu|au|s|s9|SH1~0_combout\;
\func_unit|_alu|au|s|s8|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s8|SH1~combout\;
\func_unit|_alu|au|s|s6|ALT_INV_SH1~2_combout\ <= NOT \func_unit|_alu|au|s|s6|SH1~2_combout\;
\func_unit|_alu|au|s|s6|ALT_INV_SH1~1_combout\ <= NOT \func_unit|_alu|au|s|s6|SH1~1_combout\;
\func_unit|_alu|au|s|s6|ALT_INV_SH1~0_combout\ <= NOT \func_unit|_alu|au|s|s6|SH1~0_combout\;
\func_unit|_alu|au|s|s3|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s3|SH1~combout\;
\func_unit|_alu|au|s|s1|ALT_INV_SH1~combout\ <= NOT \func_unit|_alu|au|s|s1|SH1~combout\;
\reg_file|B_mul|ALT_INV_Mux0~4_combout\ <= NOT \reg_file|B_mul|Mux0~4_combout\;
\reg_file|B_mul|ALT_INV_Mux0~3_combout\ <= NOT \reg_file|B_mul|Mux0~3_combout\;
\reg_file|B_mul|ALT_INV_Mux0~2_combout\ <= NOT \reg_file|B_mul|Mux0~2_combout\;
\reg_file|B_mul|ALT_INV_Mux0~1_combout\ <= NOT \reg_file|B_mul|Mux0~1_combout\;
\reg_file|B_mul|ALT_INV_Mux0~0_combout\ <= NOT \reg_file|B_mul|Mux0~0_combout\;
\reg_file|B_mul|ALT_INV_Mux1~4_combout\ <= NOT \reg_file|B_mul|Mux1~4_combout\;
\reg_file|B_mul|ALT_INV_Mux1~3_combout\ <= NOT \reg_file|B_mul|Mux1~3_combout\;
\reg_file|B_mul|ALT_INV_Mux1~2_combout\ <= NOT \reg_file|B_mul|Mux1~2_combout\;
\reg_file|B_mul|ALT_INV_Mux1~1_combout\ <= NOT \reg_file|B_mul|Mux1~1_combout\;
\reg_file|B_mul|ALT_INV_Mux1~0_combout\ <= NOT \reg_file|B_mul|Mux1~0_combout\;
\reg_file|B_mul|ALT_INV_Mux2~4_combout\ <= NOT \reg_file|B_mul|Mux2~4_combout\;
\reg_file|B_mul|ALT_INV_Mux2~3_combout\ <= NOT \reg_file|B_mul|Mux2~3_combout\;
\reg_file|B_mul|ALT_INV_Mux2~2_combout\ <= NOT \reg_file|B_mul|Mux2~2_combout\;
\reg_file|B_mul|ALT_INV_Mux2~1_combout\ <= NOT \reg_file|B_mul|Mux2~1_combout\;
\reg_file|B_mul|ALT_INV_Mux2~0_combout\ <= NOT \reg_file|B_mul|Mux2~0_combout\;
\reg_file|B_mul|ALT_INV_Mux3~4_combout\ <= NOT \reg_file|B_mul|Mux3~4_combout\;
\reg_file|B_mul|ALT_INV_Mux3~3_combout\ <= NOT \reg_file|B_mul|Mux3~3_combout\;
\reg_file|B_mul|ALT_INV_Mux3~2_combout\ <= NOT \reg_file|B_mul|Mux3~2_combout\;
\reg_file|B_mul|ALT_INV_Mux3~1_combout\ <= NOT \reg_file|B_mul|Mux3~1_combout\;
\reg_file|B_mul|ALT_INV_Mux3~0_combout\ <= NOT \reg_file|B_mul|Mux3~0_combout\;
\reg_file|B_mul|ALT_INV_Mux4~4_combout\ <= NOT \reg_file|B_mul|Mux4~4_combout\;
\reg_file|B_mul|ALT_INV_Mux4~3_combout\ <= NOT \reg_file|B_mul|Mux4~3_combout\;
\reg_file|B_mul|ALT_INV_Mux4~2_combout\ <= NOT \reg_file|B_mul|Mux4~2_combout\;
\reg_file|B_mul|ALT_INV_Mux4~1_combout\ <= NOT \reg_file|B_mul|Mux4~1_combout\;
\reg_file|B_mul|ALT_INV_Mux4~0_combout\ <= NOT \reg_file|B_mul|Mux4~0_combout\;
\reg_file|B_mul|ALT_INV_Mux5~4_combout\ <= NOT \reg_file|B_mul|Mux5~4_combout\;
\reg_file|B_mul|ALT_INV_Mux5~3_combout\ <= NOT \reg_file|B_mul|Mux5~3_combout\;
\reg_file|B_mul|ALT_INV_Mux5~2_combout\ <= NOT \reg_file|B_mul|Mux5~2_combout\;
\reg_file|B_mul|ALT_INV_Mux5~1_combout\ <= NOT \reg_file|B_mul|Mux5~1_combout\;
\reg_file|B_mul|ALT_INV_Mux5~0_combout\ <= NOT \reg_file|B_mul|Mux5~0_combout\;
\reg_file|B_mul|ALT_INV_Mux6~4_combout\ <= NOT \reg_file|B_mul|Mux6~4_combout\;
\reg_file|B_mul|ALT_INV_Mux6~3_combout\ <= NOT \reg_file|B_mul|Mux6~3_combout\;
\reg_file|B_mul|ALT_INV_Mux6~2_combout\ <= NOT \reg_file|B_mul|Mux6~2_combout\;
\reg_file|B_mul|ALT_INV_Mux6~1_combout\ <= NOT \reg_file|B_mul|Mux6~1_combout\;
\reg_file|B_mul|ALT_INV_Mux6~0_combout\ <= NOT \reg_file|B_mul|Mux6~0_combout\;
\reg_file|B_mul|ALT_INV_Mux7~4_combout\ <= NOT \reg_file|B_mul|Mux7~4_combout\;
\reg_file|B_mul|ALT_INV_Mux7~3_combout\ <= NOT \reg_file|B_mul|Mux7~3_combout\;
\reg_file|B_mul|ALT_INV_Mux7~2_combout\ <= NOT \reg_file|B_mul|Mux7~2_combout\;
\reg_file|B_mul|ALT_INV_Mux7~1_combout\ <= NOT \reg_file|B_mul|Mux7~1_combout\;
\reg_file|B_mul|ALT_INV_Mux7~0_combout\ <= NOT \reg_file|B_mul|Mux7~0_combout\;
\reg_file|B_mul|ALT_INV_Mux8~4_combout\ <= NOT \reg_file|B_mul|Mux8~4_combout\;
\reg_file|B_mul|ALT_INV_Mux8~3_combout\ <= NOT \reg_file|B_mul|Mux8~3_combout\;
\reg_file|B_mul|ALT_INV_Mux8~2_combout\ <= NOT \reg_file|B_mul|Mux8~2_combout\;
\reg_file|B_mul|ALT_INV_Mux8~1_combout\ <= NOT \reg_file|B_mul|Mux8~1_combout\;
\reg_file|B_mul|ALT_INV_Mux8~0_combout\ <= NOT \reg_file|B_mul|Mux8~0_combout\;
\reg_file|B_mul|ALT_INV_Mux9~4_combout\ <= NOT \reg_file|B_mul|Mux9~4_combout\;
\reg_file|B_mul|ALT_INV_Mux9~3_combout\ <= NOT \reg_file|B_mul|Mux9~3_combout\;
\reg_file|B_mul|ALT_INV_Mux9~2_combout\ <= NOT \reg_file|B_mul|Mux9~2_combout\;
\reg_file|B_mul|ALT_INV_Mux9~1_combout\ <= NOT \reg_file|B_mul|Mux9~1_combout\;
\reg_file|B_mul|ALT_INV_Mux9~0_combout\ <= NOT \reg_file|B_mul|Mux9~0_combout\;
\reg_file|B_mul|ALT_INV_Mux10~4_combout\ <= NOT \reg_file|B_mul|Mux10~4_combout\;
\reg_file|B_mul|ALT_INV_Mux10~3_combout\ <= NOT \reg_file|B_mul|Mux10~3_combout\;
\reg_file|B_mul|ALT_INV_Mux10~2_combout\ <= NOT \reg_file|B_mul|Mux10~2_combout\;
\reg_file|B_mul|ALT_INV_Mux10~1_combout\ <= NOT \reg_file|B_mul|Mux10~1_combout\;
\reg_file|B_mul|ALT_INV_Mux10~0_combout\ <= NOT \reg_file|B_mul|Mux10~0_combout\;
\reg_file|B_mul|ALT_INV_Mux11~4_combout\ <= NOT \reg_file|B_mul|Mux11~4_combout\;
\reg_file|B_mul|ALT_INV_Mux11~3_combout\ <= NOT \reg_file|B_mul|Mux11~3_combout\;
\reg_file|B_mul|ALT_INV_Mux11~2_combout\ <= NOT \reg_file|B_mul|Mux11~2_combout\;
\reg_file|B_mul|ALT_INV_Mux11~1_combout\ <= NOT \reg_file|B_mul|Mux11~1_combout\;
\reg_file|B_mul|ALT_INV_Mux11~0_combout\ <= NOT \reg_file|B_mul|Mux11~0_combout\;
\reg_file|B_mul|ALT_INV_Mux12~4_combout\ <= NOT \reg_file|B_mul|Mux12~4_combout\;
\reg_file|B_mul|ALT_INV_Mux12~3_combout\ <= NOT \reg_file|B_mul|Mux12~3_combout\;
\reg_file|B_mul|ALT_INV_Mux12~2_combout\ <= NOT \reg_file|B_mul|Mux12~2_combout\;
\reg_file|B_mul|ALT_INV_Mux12~1_combout\ <= NOT \reg_file|B_mul|Mux12~1_combout\;
\reg_file|B_mul|ALT_INV_Mux12~0_combout\ <= NOT \reg_file|B_mul|Mux12~0_combout\;
\reg_file|B_mul|ALT_INV_Mux13~4_combout\ <= NOT \reg_file|B_mul|Mux13~4_combout\;
\reg_file|B_mul|ALT_INV_Mux13~3_combout\ <= NOT \reg_file|B_mul|Mux13~3_combout\;
\reg_file|B_mul|ALT_INV_Mux13~2_combout\ <= NOT \reg_file|B_mul|Mux13~2_combout\;
\reg_file|B_mul|ALT_INV_Mux13~1_combout\ <= NOT \reg_file|B_mul|Mux13~1_combout\;
\reg_file|B_mul|ALT_INV_Mux13~0_combout\ <= NOT \reg_file|B_mul|Mux13~0_combout\;
\reg_file|B_mul|ALT_INV_Mux14~4_combout\ <= NOT \reg_file|B_mul|Mux14~4_combout\;
\reg_file|B_mul|ALT_INV_Mux14~3_combout\ <= NOT \reg_file|B_mul|Mux14~3_combout\;
\reg_file|B_mul|ALT_INV_Mux14~2_combout\ <= NOT \reg_file|B_mul|Mux14~2_combout\;
\reg_file|B_mul|ALT_INV_Mux14~1_combout\ <= NOT \reg_file|B_mul|Mux14~1_combout\;
\reg_file|B_mul|ALT_INV_Mux14~0_combout\ <= NOT \reg_file|B_mul|Mux14~0_combout\;
\reg_file|B_mul|ALT_INV_Mux15~4_combout\ <= NOT \reg_file|B_mul|Mux15~4_combout\;
\reg_file|B_mul|ALT_INV_Mux15~3_combout\ <= NOT \reg_file|B_mul|Mux15~3_combout\;
\reg_file|B_mul|ALT_INV_Mux15~2_combout\ <= NOT \reg_file|B_mul|Mux15~2_combout\;
\reg_file|B_mul|ALT_INV_Mux15~1_combout\ <= NOT \reg_file|B_mul|Mux15~1_combout\;
\reg_file|B_mul|ALT_INV_Mux15~0_combout\ <= NOT \reg_file|B_mul|Mux15~0_combout\;
\reg_file|A_mul|ALT_INV_Mux0~4_combout\ <= NOT \reg_file|A_mul|Mux0~4_combout\;
\reg_file|A_mul|ALT_INV_Mux0~3_combout\ <= NOT \reg_file|A_mul|Mux0~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(15) <= NOT \reg_file|reg15|OUT\(15);
\reg_file|reg11|ALT_INV_OUT\(15) <= NOT \reg_file|reg11|OUT\(15);
\reg_file|reg7|ALT_INV_OUT\(15) <= NOT \reg_file|reg7|OUT\(15);
\reg_file|reg3|ALT_INV_OUT\(15) <= NOT \reg_file|reg3|OUT\(15);
\reg_file|A_mul|ALT_INV_Mux0~2_combout\ <= NOT \reg_file|A_mul|Mux0~2_combout\;
\reg_file|reg14|ALT_INV_OUT\(15) <= NOT \reg_file|reg14|OUT\(15);
\reg_file|reg10|ALT_INV_OUT\(15) <= NOT \reg_file|reg10|OUT\(15);
\reg_file|reg6|ALT_INV_OUT\(15) <= NOT \reg_file|reg6|OUT\(15);
\reg_file|reg2|ALT_INV_OUT\(15) <= NOT \reg_file|reg2|OUT\(15);
\reg_file|A_mul|ALT_INV_Mux0~1_combout\ <= NOT \reg_file|A_mul|Mux0~1_combout\;
\reg_file|reg13|ALT_INV_OUT\(15) <= NOT \reg_file|reg13|OUT\(15);
\reg_file|reg9|ALT_INV_OUT\(15) <= NOT \reg_file|reg9|OUT\(15);
\reg_file|reg5|ALT_INV_OUT\(15) <= NOT \reg_file|reg5|OUT\(15);
\reg_file|reg1|ALT_INV_OUT\(15) <= NOT \reg_file|reg1|OUT\(15);
\reg_file|A_mul|ALT_INV_Mux0~0_combout\ <= NOT \reg_file|A_mul|Mux0~0_combout\;
\reg_file|reg12|ALT_INV_OUT\(15) <= NOT \reg_file|reg12|OUT\(15);
\reg_file|reg8|ALT_INV_OUT\(15) <= NOT \reg_file|reg8|OUT\(15);
\reg_file|reg4|ALT_INV_OUT\(15) <= NOT \reg_file|reg4|OUT\(15);
\reg_file|reg0|ALT_INV_OUT\(15) <= NOT \reg_file|reg0|OUT\(15);
\reg_file|A_mul|ALT_INV_Mux1~4_combout\ <= NOT \reg_file|A_mul|Mux1~4_combout\;
\reg_file|A_mul|ALT_INV_Mux1~3_combout\ <= NOT \reg_file|A_mul|Mux1~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(14) <= NOT \reg_file|reg15|OUT\(14);
\reg_file|reg14|ALT_INV_OUT\(14) <= NOT \reg_file|reg14|OUT\(14);
\reg_file|reg13|ALT_INV_OUT\(14) <= NOT \reg_file|reg13|OUT\(14);
\reg_file|reg12|ALT_INV_OUT\(14) <= NOT \reg_file|reg12|OUT\(14);
\reg_file|A_mul|ALT_INV_Mux1~2_combout\ <= NOT \reg_file|A_mul|Mux1~2_combout\;
\reg_file|reg11|ALT_INV_OUT\(14) <= NOT \reg_file|reg11|OUT\(14);
\reg_file|reg10|ALT_INV_OUT\(14) <= NOT \reg_file|reg10|OUT\(14);
\reg_file|reg9|ALT_INV_OUT\(14) <= NOT \reg_file|reg9|OUT\(14);
\reg_file|reg8|ALT_INV_OUT\(14) <= NOT \reg_file|reg8|OUT\(14);
\reg_file|A_mul|ALT_INV_Mux1~1_combout\ <= NOT \reg_file|A_mul|Mux1~1_combout\;
\reg_file|reg7|ALT_INV_OUT\(14) <= NOT \reg_file|reg7|OUT\(14);
\reg_file|reg6|ALT_INV_OUT\(14) <= NOT \reg_file|reg6|OUT\(14);
\reg_file|reg5|ALT_INV_OUT\(14) <= NOT \reg_file|reg5|OUT\(14);
\reg_file|reg4|ALT_INV_OUT\(14) <= NOT \reg_file|reg4|OUT\(14);
\reg_file|A_mul|ALT_INV_Mux1~0_combout\ <= NOT \reg_file|A_mul|Mux1~0_combout\;
\reg_file|reg3|ALT_INV_OUT\(14) <= NOT \reg_file|reg3|OUT\(14);
\reg_file|reg2|ALT_INV_OUT\(14) <= NOT \reg_file|reg2|OUT\(14);
\reg_file|reg1|ALT_INV_OUT\(14) <= NOT \reg_file|reg1|OUT\(14);
\reg_file|reg0|ALT_INV_OUT\(14) <= NOT \reg_file|reg0|OUT\(14);
\reg_file|A_mul|ALT_INV_Mux2~4_combout\ <= NOT \reg_file|A_mul|Mux2~4_combout\;
\reg_file|A_mul|ALT_INV_Mux2~3_combout\ <= NOT \reg_file|A_mul|Mux2~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(13) <= NOT \reg_file|reg15|OUT\(13);
\reg_file|reg11|ALT_INV_OUT\(13) <= NOT \reg_file|reg11|OUT\(13);
\reg_file|reg7|ALT_INV_OUT\(13) <= NOT \reg_file|reg7|OUT\(13);
\reg_file|reg3|ALT_INV_OUT\(13) <= NOT \reg_file|reg3|OUT\(13);
\reg_file|A_mul|ALT_INV_Mux2~2_combout\ <= NOT \reg_file|A_mul|Mux2~2_combout\;
\reg_file|reg14|ALT_INV_OUT\(13) <= NOT \reg_file|reg14|OUT\(13);
\reg_file|reg10|ALT_INV_OUT\(13) <= NOT \reg_file|reg10|OUT\(13);
\reg_file|reg6|ALT_INV_OUT\(13) <= NOT \reg_file|reg6|OUT\(13);
\reg_file|reg2|ALT_INV_OUT\(13) <= NOT \reg_file|reg2|OUT\(13);
\reg_file|A_mul|ALT_INV_Mux2~1_combout\ <= NOT \reg_file|A_mul|Mux2~1_combout\;
\reg_file|reg13|ALT_INV_OUT\(13) <= NOT \reg_file|reg13|OUT\(13);
\reg_file|reg9|ALT_INV_OUT\(13) <= NOT \reg_file|reg9|OUT\(13);
\reg_file|reg5|ALT_INV_OUT\(13) <= NOT \reg_file|reg5|OUT\(13);
\reg_file|reg1|ALT_INV_OUT\(13) <= NOT \reg_file|reg1|OUT\(13);
\reg_file|A_mul|ALT_INV_Mux2~0_combout\ <= NOT \reg_file|A_mul|Mux2~0_combout\;
\reg_file|reg12|ALT_INV_OUT\(13) <= NOT \reg_file|reg12|OUT\(13);
\reg_file|reg8|ALT_INV_OUT\(13) <= NOT \reg_file|reg8|OUT\(13);
\reg_file|reg4|ALT_INV_OUT\(13) <= NOT \reg_file|reg4|OUT\(13);
\reg_file|reg0|ALT_INV_OUT\(13) <= NOT \reg_file|reg0|OUT\(13);
\reg_file|A_mul|ALT_INV_Mux3~4_combout\ <= NOT \reg_file|A_mul|Mux3~4_combout\;
\reg_file|A_mul|ALT_INV_Mux3~3_combout\ <= NOT \reg_file|A_mul|Mux3~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(12) <= NOT \reg_file|reg15|OUT\(12);
\reg_file|reg14|ALT_INV_OUT\(12) <= NOT \reg_file|reg14|OUT\(12);
\reg_file|reg13|ALT_INV_OUT\(12) <= NOT \reg_file|reg13|OUT\(12);
\reg_file|reg12|ALT_INV_OUT\(12) <= NOT \reg_file|reg12|OUT\(12);
\reg_file|A_mul|ALT_INV_Mux3~2_combout\ <= NOT \reg_file|A_mul|Mux3~2_combout\;
\reg_file|reg11|ALT_INV_OUT\(12) <= NOT \reg_file|reg11|OUT\(12);
\reg_file|reg10|ALT_INV_OUT\(12) <= NOT \reg_file|reg10|OUT\(12);
\reg_file|reg9|ALT_INV_OUT\(12) <= NOT \reg_file|reg9|OUT\(12);
\reg_file|reg8|ALT_INV_OUT\(12) <= NOT \reg_file|reg8|OUT\(12);
\reg_file|A_mul|ALT_INV_Mux3~1_combout\ <= NOT \reg_file|A_mul|Mux3~1_combout\;
\reg_file|reg7|ALT_INV_OUT\(12) <= NOT \reg_file|reg7|OUT\(12);
\reg_file|reg6|ALT_INV_OUT\(12) <= NOT \reg_file|reg6|OUT\(12);
\reg_file|reg5|ALT_INV_OUT\(12) <= NOT \reg_file|reg5|OUT\(12);
\reg_file|reg4|ALT_INV_OUT\(12) <= NOT \reg_file|reg4|OUT\(12);
\reg_file|A_mul|ALT_INV_Mux3~0_combout\ <= NOT \reg_file|A_mul|Mux3~0_combout\;
\reg_file|reg3|ALT_INV_OUT\(12) <= NOT \reg_file|reg3|OUT\(12);
\reg_file|reg2|ALT_INV_OUT\(12) <= NOT \reg_file|reg2|OUT\(12);
\reg_file|reg1|ALT_INV_OUT\(12) <= NOT \reg_file|reg1|OUT\(12);
\reg_file|reg0|ALT_INV_OUT\(12) <= NOT \reg_file|reg0|OUT\(12);
\reg_file|A_mul|ALT_INV_Mux4~4_combout\ <= NOT \reg_file|A_mul|Mux4~4_combout\;
\reg_file|A_mul|ALT_INV_Mux4~3_combout\ <= NOT \reg_file|A_mul|Mux4~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(11) <= NOT \reg_file|reg15|OUT\(11);
\reg_file|reg11|ALT_INV_OUT\(11) <= NOT \reg_file|reg11|OUT\(11);
\reg_file|reg7|ALT_INV_OUT\(11) <= NOT \reg_file|reg7|OUT\(11);
\reg_file|reg3|ALT_INV_OUT\(11) <= NOT \reg_file|reg3|OUT\(11);
\reg_file|A_mul|ALT_INV_Mux4~2_combout\ <= NOT \reg_file|A_mul|Mux4~2_combout\;
\reg_file|reg14|ALT_INV_OUT\(11) <= NOT \reg_file|reg14|OUT\(11);
\reg_file|reg10|ALT_INV_OUT\(11) <= NOT \reg_file|reg10|OUT\(11);
\reg_file|reg6|ALT_INV_OUT\(11) <= NOT \reg_file|reg6|OUT\(11);
\reg_file|reg2|ALT_INV_OUT\(11) <= NOT \reg_file|reg2|OUT\(11);
\reg_file|A_mul|ALT_INV_Mux4~1_combout\ <= NOT \reg_file|A_mul|Mux4~1_combout\;
\reg_file|reg13|ALT_INV_OUT\(11) <= NOT \reg_file|reg13|OUT\(11);
\reg_file|reg9|ALT_INV_OUT\(11) <= NOT \reg_file|reg9|OUT\(11);
\reg_file|reg5|ALT_INV_OUT\(11) <= NOT \reg_file|reg5|OUT\(11);
\reg_file|reg1|ALT_INV_OUT\(11) <= NOT \reg_file|reg1|OUT\(11);
\reg_file|A_mul|ALT_INV_Mux4~0_combout\ <= NOT \reg_file|A_mul|Mux4~0_combout\;
\reg_file|reg12|ALT_INV_OUT\(11) <= NOT \reg_file|reg12|OUT\(11);
\reg_file|reg8|ALT_INV_OUT\(11) <= NOT \reg_file|reg8|OUT\(11);
\reg_file|reg4|ALT_INV_OUT\(11) <= NOT \reg_file|reg4|OUT\(11);
\reg_file|reg0|ALT_INV_OUT\(11) <= NOT \reg_file|reg0|OUT\(11);
\reg_file|A_mul|ALT_INV_Mux5~4_combout\ <= NOT \reg_file|A_mul|Mux5~4_combout\;
\reg_file|A_mul|ALT_INV_Mux5~3_combout\ <= NOT \reg_file|A_mul|Mux5~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(10) <= NOT \reg_file|reg15|OUT\(10);
\reg_file|reg14|ALT_INV_OUT\(10) <= NOT \reg_file|reg14|OUT\(10);
\reg_file|reg13|ALT_INV_OUT\(10) <= NOT \reg_file|reg13|OUT\(10);
\reg_file|reg12|ALT_INV_OUT\(10) <= NOT \reg_file|reg12|OUT\(10);
\reg_file|A_mul|ALT_INV_Mux5~2_combout\ <= NOT \reg_file|A_mul|Mux5~2_combout\;
\reg_file|reg11|ALT_INV_OUT\(10) <= NOT \reg_file|reg11|OUT\(10);
\reg_file|reg10|ALT_INV_OUT\(10) <= NOT \reg_file|reg10|OUT\(10);
\reg_file|reg9|ALT_INV_OUT\(10) <= NOT \reg_file|reg9|OUT\(10);
\reg_file|reg8|ALT_INV_OUT\(10) <= NOT \reg_file|reg8|OUT\(10);
\reg_file|A_mul|ALT_INV_Mux5~1_combout\ <= NOT \reg_file|A_mul|Mux5~1_combout\;
\reg_file|reg7|ALT_INV_OUT\(10) <= NOT \reg_file|reg7|OUT\(10);
\reg_file|reg6|ALT_INV_OUT\(10) <= NOT \reg_file|reg6|OUT\(10);
\reg_file|reg5|ALT_INV_OUT\(10) <= NOT \reg_file|reg5|OUT\(10);
\reg_file|reg4|ALT_INV_OUT\(10) <= NOT \reg_file|reg4|OUT\(10);
\reg_file|A_mul|ALT_INV_Mux5~0_combout\ <= NOT \reg_file|A_mul|Mux5~0_combout\;
\reg_file|reg3|ALT_INV_OUT\(10) <= NOT \reg_file|reg3|OUT\(10);
\reg_file|reg2|ALT_INV_OUT\(10) <= NOT \reg_file|reg2|OUT\(10);
\reg_file|reg1|ALT_INV_OUT\(10) <= NOT \reg_file|reg1|OUT\(10);
\reg_file|reg0|ALT_INV_OUT\(10) <= NOT \reg_file|reg0|OUT\(10);
\reg_file|A_mul|ALT_INV_Mux6~4_combout\ <= NOT \reg_file|A_mul|Mux6~4_combout\;
\reg_file|A_mul|ALT_INV_Mux6~3_combout\ <= NOT \reg_file|A_mul|Mux6~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(9) <= NOT \reg_file|reg15|OUT\(9);
\reg_file|reg11|ALT_INV_OUT\(9) <= NOT \reg_file|reg11|OUT\(9);
\reg_file|reg7|ALT_INV_OUT\(9) <= NOT \reg_file|reg7|OUT\(9);
\reg_file|reg3|ALT_INV_OUT\(9) <= NOT \reg_file|reg3|OUT\(9);
\reg_file|A_mul|ALT_INV_Mux6~2_combout\ <= NOT \reg_file|A_mul|Mux6~2_combout\;
\reg_file|reg14|ALT_INV_OUT\(9) <= NOT \reg_file|reg14|OUT\(9);
\reg_file|reg10|ALT_INV_OUT\(9) <= NOT \reg_file|reg10|OUT\(9);
\reg_file|reg6|ALT_INV_OUT\(9) <= NOT \reg_file|reg6|OUT\(9);
\reg_file|reg2|ALT_INV_OUT\(9) <= NOT \reg_file|reg2|OUT\(9);
\reg_file|A_mul|ALT_INV_Mux6~1_combout\ <= NOT \reg_file|A_mul|Mux6~1_combout\;
\reg_file|reg13|ALT_INV_OUT\(9) <= NOT \reg_file|reg13|OUT\(9);
\reg_file|reg9|ALT_INV_OUT\(9) <= NOT \reg_file|reg9|OUT\(9);
\reg_file|reg5|ALT_INV_OUT\(9) <= NOT \reg_file|reg5|OUT\(9);
\reg_file|reg1|ALT_INV_OUT\(9) <= NOT \reg_file|reg1|OUT\(9);
\reg_file|A_mul|ALT_INV_Mux6~0_combout\ <= NOT \reg_file|A_mul|Mux6~0_combout\;
\reg_file|reg12|ALT_INV_OUT\(9) <= NOT \reg_file|reg12|OUT\(9);
\reg_file|reg8|ALT_INV_OUT\(9) <= NOT \reg_file|reg8|OUT\(9);
\reg_file|reg4|ALT_INV_OUT\(9) <= NOT \reg_file|reg4|OUT\(9);
\reg_file|reg0|ALT_INV_OUT\(9) <= NOT \reg_file|reg0|OUT\(9);
\reg_file|A_mul|ALT_INV_Mux7~4_combout\ <= NOT \reg_file|A_mul|Mux7~4_combout\;
\reg_file|A_mul|ALT_INV_Mux7~3_combout\ <= NOT \reg_file|A_mul|Mux7~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(8) <= NOT \reg_file|reg15|OUT\(8);
\reg_file|reg14|ALT_INV_OUT\(8) <= NOT \reg_file|reg14|OUT\(8);
\reg_file|reg13|ALT_INV_OUT\(8) <= NOT \reg_file|reg13|OUT\(8);
\reg_file|reg12|ALT_INV_OUT\(8) <= NOT \reg_file|reg12|OUT\(8);
\reg_file|A_mul|ALT_INV_Mux7~2_combout\ <= NOT \reg_file|A_mul|Mux7~2_combout\;
\reg_file|reg11|ALT_INV_OUT\(8) <= NOT \reg_file|reg11|OUT\(8);
\reg_file|reg10|ALT_INV_OUT\(8) <= NOT \reg_file|reg10|OUT\(8);
\reg_file|reg9|ALT_INV_OUT\(8) <= NOT \reg_file|reg9|OUT\(8);
\reg_file|reg8|ALT_INV_OUT\(8) <= NOT \reg_file|reg8|OUT\(8);
\reg_file|A_mul|ALT_INV_Mux7~1_combout\ <= NOT \reg_file|A_mul|Mux7~1_combout\;
\reg_file|reg7|ALT_INV_OUT\(8) <= NOT \reg_file|reg7|OUT\(8);
\reg_file|reg6|ALT_INV_OUT\(8) <= NOT \reg_file|reg6|OUT\(8);
\reg_file|reg5|ALT_INV_OUT\(8) <= NOT \reg_file|reg5|OUT\(8);
\reg_file|reg4|ALT_INV_OUT\(8) <= NOT \reg_file|reg4|OUT\(8);
\reg_file|A_mul|ALT_INV_Mux7~0_combout\ <= NOT \reg_file|A_mul|Mux7~0_combout\;
\reg_file|reg3|ALT_INV_OUT\(8) <= NOT \reg_file|reg3|OUT\(8);
\reg_file|reg2|ALT_INV_OUT\(8) <= NOT \reg_file|reg2|OUT\(8);
\reg_file|reg1|ALT_INV_OUT\(8) <= NOT \reg_file|reg1|OUT\(8);
\reg_file|reg0|ALT_INV_OUT\(8) <= NOT \reg_file|reg0|OUT\(8);
\reg_file|A_mul|ALT_INV_Mux8~4_combout\ <= NOT \reg_file|A_mul|Mux8~4_combout\;
\reg_file|A_mul|ALT_INV_Mux8~3_combout\ <= NOT \reg_file|A_mul|Mux8~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(7) <= NOT \reg_file|reg15|OUT\(7);
\reg_file|reg11|ALT_INV_OUT\(7) <= NOT \reg_file|reg11|OUT\(7);
\reg_file|reg7|ALT_INV_OUT\(7) <= NOT \reg_file|reg7|OUT\(7);
\reg_file|reg3|ALT_INV_OUT\(7) <= NOT \reg_file|reg3|OUT\(7);
\reg_file|A_mul|ALT_INV_Mux8~2_combout\ <= NOT \reg_file|A_mul|Mux8~2_combout\;
\reg_file|reg14|ALT_INV_OUT\(7) <= NOT \reg_file|reg14|OUT\(7);
\reg_file|reg10|ALT_INV_OUT\(7) <= NOT \reg_file|reg10|OUT\(7);
\reg_file|reg6|ALT_INV_OUT\(7) <= NOT \reg_file|reg6|OUT\(7);
\reg_file|reg2|ALT_INV_OUT\(7) <= NOT \reg_file|reg2|OUT\(7);
\reg_file|A_mul|ALT_INV_Mux8~1_combout\ <= NOT \reg_file|A_mul|Mux8~1_combout\;
\reg_file|reg13|ALT_INV_OUT\(7) <= NOT \reg_file|reg13|OUT\(7);
\reg_file|reg9|ALT_INV_OUT\(7) <= NOT \reg_file|reg9|OUT\(7);
\reg_file|reg5|ALT_INV_OUT\(7) <= NOT \reg_file|reg5|OUT\(7);
\reg_file|reg1|ALT_INV_OUT\(7) <= NOT \reg_file|reg1|OUT\(7);
\reg_file|A_mul|ALT_INV_Mux8~0_combout\ <= NOT \reg_file|A_mul|Mux8~0_combout\;
\reg_file|reg12|ALT_INV_OUT\(7) <= NOT \reg_file|reg12|OUT\(7);
\reg_file|reg8|ALT_INV_OUT\(7) <= NOT \reg_file|reg8|OUT\(7);
\reg_file|reg4|ALT_INV_OUT\(7) <= NOT \reg_file|reg4|OUT\(7);
\reg_file|reg0|ALT_INV_OUT\(7) <= NOT \reg_file|reg0|OUT\(7);
\reg_file|A_mul|ALT_INV_Mux9~4_combout\ <= NOT \reg_file|A_mul|Mux9~4_combout\;
\reg_file|A_mul|ALT_INV_Mux9~3_combout\ <= NOT \reg_file|A_mul|Mux9~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(6) <= NOT \reg_file|reg15|OUT\(6);
\reg_file|reg14|ALT_INV_OUT\(6) <= NOT \reg_file|reg14|OUT\(6);
\reg_file|reg13|ALT_INV_OUT\(6) <= NOT \reg_file|reg13|OUT\(6);
\reg_file|reg12|ALT_INV_OUT\(6) <= NOT \reg_file|reg12|OUT\(6);
\reg_file|A_mul|ALT_INV_Mux9~2_combout\ <= NOT \reg_file|A_mul|Mux9~2_combout\;
\reg_file|reg11|ALT_INV_OUT\(6) <= NOT \reg_file|reg11|OUT\(6);
\reg_file|reg10|ALT_INV_OUT\(6) <= NOT \reg_file|reg10|OUT\(6);
\reg_file|reg9|ALT_INV_OUT\(6) <= NOT \reg_file|reg9|OUT\(6);
\reg_file|reg8|ALT_INV_OUT\(6) <= NOT \reg_file|reg8|OUT\(6);
\reg_file|A_mul|ALT_INV_Mux9~1_combout\ <= NOT \reg_file|A_mul|Mux9~1_combout\;
\reg_file|reg7|ALT_INV_OUT\(6) <= NOT \reg_file|reg7|OUT\(6);
\reg_file|reg6|ALT_INV_OUT\(6) <= NOT \reg_file|reg6|OUT\(6);
\reg_file|reg5|ALT_INV_OUT\(6) <= NOT \reg_file|reg5|OUT\(6);
\reg_file|reg4|ALT_INV_OUT\(6) <= NOT \reg_file|reg4|OUT\(6);
\reg_file|A_mul|ALT_INV_Mux9~0_combout\ <= NOT \reg_file|A_mul|Mux9~0_combout\;
\reg_file|reg3|ALT_INV_OUT\(6) <= NOT \reg_file|reg3|OUT\(6);
\reg_file|reg2|ALT_INV_OUT\(6) <= NOT \reg_file|reg2|OUT\(6);
\reg_file|reg1|ALT_INV_OUT\(6) <= NOT \reg_file|reg1|OUT\(6);
\reg_file|reg0|ALT_INV_OUT\(6) <= NOT \reg_file|reg0|OUT\(6);
\reg_file|A_mul|ALT_INV_Mux10~4_combout\ <= NOT \reg_file|A_mul|Mux10~4_combout\;
\reg_file|A_mul|ALT_INV_Mux10~3_combout\ <= NOT \reg_file|A_mul|Mux10~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(5) <= NOT \reg_file|reg15|OUT\(5);
\reg_file|reg11|ALT_INV_OUT\(5) <= NOT \reg_file|reg11|OUT\(5);
\reg_file|reg7|ALT_INV_OUT\(5) <= NOT \reg_file|reg7|OUT\(5);
\reg_file|reg3|ALT_INV_OUT\(5) <= NOT \reg_file|reg3|OUT\(5);
\reg_file|A_mul|ALT_INV_Mux10~2_combout\ <= NOT \reg_file|A_mul|Mux10~2_combout\;
\reg_file|reg14|ALT_INV_OUT\(5) <= NOT \reg_file|reg14|OUT\(5);
\reg_file|reg10|ALT_INV_OUT\(5) <= NOT \reg_file|reg10|OUT\(5);
\reg_file|reg6|ALT_INV_OUT\(5) <= NOT \reg_file|reg6|OUT\(5);
\reg_file|reg2|ALT_INV_OUT\(5) <= NOT \reg_file|reg2|OUT\(5);
\reg_file|A_mul|ALT_INV_Mux10~1_combout\ <= NOT \reg_file|A_mul|Mux10~1_combout\;
\reg_file|reg13|ALT_INV_OUT\(5) <= NOT \reg_file|reg13|OUT\(5);
\reg_file|reg9|ALT_INV_OUT\(5) <= NOT \reg_file|reg9|OUT\(5);
\reg_file|reg5|ALT_INV_OUT\(5) <= NOT \reg_file|reg5|OUT\(5);
\reg_file|reg1|ALT_INV_OUT\(5) <= NOT \reg_file|reg1|OUT\(5);
\reg_file|A_mul|ALT_INV_Mux10~0_combout\ <= NOT \reg_file|A_mul|Mux10~0_combout\;
\reg_file|reg12|ALT_INV_OUT\(5) <= NOT \reg_file|reg12|OUT\(5);
\reg_file|reg8|ALT_INV_OUT\(5) <= NOT \reg_file|reg8|OUT\(5);
\reg_file|reg4|ALT_INV_OUT\(5) <= NOT \reg_file|reg4|OUT\(5);
\reg_file|reg0|ALT_INV_OUT\(5) <= NOT \reg_file|reg0|OUT\(5);
\reg_file|A_mul|ALT_INV_Mux11~4_combout\ <= NOT \reg_file|A_mul|Mux11~4_combout\;
\reg_file|A_mul|ALT_INV_Mux11~3_combout\ <= NOT \reg_file|A_mul|Mux11~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(4) <= NOT \reg_file|reg15|OUT\(4);
\reg_file|reg14|ALT_INV_OUT\(4) <= NOT \reg_file|reg14|OUT\(4);
\reg_file|reg13|ALT_INV_OUT\(4) <= NOT \reg_file|reg13|OUT\(4);
\reg_file|reg12|ALT_INV_OUT\(4) <= NOT \reg_file|reg12|OUT\(4);
\reg_file|A_mul|ALT_INV_Mux11~2_combout\ <= NOT \reg_file|A_mul|Mux11~2_combout\;
\reg_file|reg11|ALT_INV_OUT\(4) <= NOT \reg_file|reg11|OUT\(4);
\reg_file|reg10|ALT_INV_OUT\(4) <= NOT \reg_file|reg10|OUT\(4);
\reg_file|reg9|ALT_INV_OUT\(4) <= NOT \reg_file|reg9|OUT\(4);
\reg_file|reg8|ALT_INV_OUT\(4) <= NOT \reg_file|reg8|OUT\(4);
\reg_file|A_mul|ALT_INV_Mux11~1_combout\ <= NOT \reg_file|A_mul|Mux11~1_combout\;
\reg_file|reg7|ALT_INV_OUT\(4) <= NOT \reg_file|reg7|OUT\(4);
\reg_file|reg6|ALT_INV_OUT\(4) <= NOT \reg_file|reg6|OUT\(4);
\reg_file|reg5|ALT_INV_OUT\(4) <= NOT \reg_file|reg5|OUT\(4);
\reg_file|reg4|ALT_INV_OUT\(4) <= NOT \reg_file|reg4|OUT\(4);
\reg_file|A_mul|ALT_INV_Mux11~0_combout\ <= NOT \reg_file|A_mul|Mux11~0_combout\;
\reg_file|reg3|ALT_INV_OUT\(4) <= NOT \reg_file|reg3|OUT\(4);
\reg_file|reg2|ALT_INV_OUT\(4) <= NOT \reg_file|reg2|OUT\(4);
\reg_file|reg1|ALT_INV_OUT\(4) <= NOT \reg_file|reg1|OUT\(4);
\reg_file|reg0|ALT_INV_OUT\(4) <= NOT \reg_file|reg0|OUT\(4);
\reg_file|A_mul|ALT_INV_Mux12~4_combout\ <= NOT \reg_file|A_mul|Mux12~4_combout\;
\reg_file|A_mul|ALT_INV_Mux12~3_combout\ <= NOT \reg_file|A_mul|Mux12~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(3) <= NOT \reg_file|reg15|OUT\(3);
\reg_file|reg11|ALT_INV_OUT\(3) <= NOT \reg_file|reg11|OUT\(3);
\reg_file|reg7|ALT_INV_OUT\(3) <= NOT \reg_file|reg7|OUT\(3);
\reg_file|reg3|ALT_INV_OUT\(3) <= NOT \reg_file|reg3|OUT\(3);
\reg_file|A_mul|ALT_INV_Mux12~2_combout\ <= NOT \reg_file|A_mul|Mux12~2_combout\;
\reg_file|reg14|ALT_INV_OUT\(3) <= NOT \reg_file|reg14|OUT\(3);
\reg_file|reg10|ALT_INV_OUT\(3) <= NOT \reg_file|reg10|OUT\(3);
\reg_file|reg6|ALT_INV_OUT\(3) <= NOT \reg_file|reg6|OUT\(3);
\reg_file|reg2|ALT_INV_OUT\(3) <= NOT \reg_file|reg2|OUT\(3);
\reg_file|A_mul|ALT_INV_Mux12~1_combout\ <= NOT \reg_file|A_mul|Mux12~1_combout\;
\reg_file|reg13|ALT_INV_OUT\(3) <= NOT \reg_file|reg13|OUT\(3);
\reg_file|reg9|ALT_INV_OUT\(3) <= NOT \reg_file|reg9|OUT\(3);
\reg_file|reg5|ALT_INV_OUT\(3) <= NOT \reg_file|reg5|OUT\(3);
\reg_file|reg1|ALT_INV_OUT\(3) <= NOT \reg_file|reg1|OUT\(3);
\reg_file|A_mul|ALT_INV_Mux12~0_combout\ <= NOT \reg_file|A_mul|Mux12~0_combout\;
\reg_file|reg12|ALT_INV_OUT\(3) <= NOT \reg_file|reg12|OUT\(3);
\reg_file|reg8|ALT_INV_OUT\(3) <= NOT \reg_file|reg8|OUT\(3);
\reg_file|reg4|ALT_INV_OUT\(3) <= NOT \reg_file|reg4|OUT\(3);
\reg_file|reg0|ALT_INV_OUT\(3) <= NOT \reg_file|reg0|OUT\(3);
\reg_file|A_mul|ALT_INV_Mux13~4_combout\ <= NOT \reg_file|A_mul|Mux13~4_combout\;
\reg_file|A_mul|ALT_INV_Mux13~3_combout\ <= NOT \reg_file|A_mul|Mux13~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(2) <= NOT \reg_file|reg15|OUT\(2);
\reg_file|reg14|ALT_INV_OUT\(2) <= NOT \reg_file|reg14|OUT\(2);
\reg_file|reg13|ALT_INV_OUT\(2) <= NOT \reg_file|reg13|OUT\(2);
\reg_file|reg12|ALT_INV_OUT\(2) <= NOT \reg_file|reg12|OUT\(2);
\reg_file|A_mul|ALT_INV_Mux13~2_combout\ <= NOT \reg_file|A_mul|Mux13~2_combout\;
\reg_file|reg11|ALT_INV_OUT\(2) <= NOT \reg_file|reg11|OUT\(2);
\reg_file|reg10|ALT_INV_OUT\(2) <= NOT \reg_file|reg10|OUT\(2);
\reg_file|reg9|ALT_INV_OUT\(2) <= NOT \reg_file|reg9|OUT\(2);
\reg_file|reg8|ALT_INV_OUT\(2) <= NOT \reg_file|reg8|OUT\(2);
\reg_file|A_mul|ALT_INV_Mux13~1_combout\ <= NOT \reg_file|A_mul|Mux13~1_combout\;
\reg_file|reg7|ALT_INV_OUT\(2) <= NOT \reg_file|reg7|OUT\(2);
\reg_file|reg6|ALT_INV_OUT\(2) <= NOT \reg_file|reg6|OUT\(2);
\reg_file|reg5|ALT_INV_OUT\(2) <= NOT \reg_file|reg5|OUT\(2);
\reg_file|reg4|ALT_INV_OUT\(2) <= NOT \reg_file|reg4|OUT\(2);
\reg_file|A_mul|ALT_INV_Mux13~0_combout\ <= NOT \reg_file|A_mul|Mux13~0_combout\;
\reg_file|reg3|ALT_INV_OUT\(2) <= NOT \reg_file|reg3|OUT\(2);
\reg_file|reg2|ALT_INV_OUT\(2) <= NOT \reg_file|reg2|OUT\(2);
\reg_file|reg1|ALT_INV_OUT\(2) <= NOT \reg_file|reg1|OUT\(2);
\reg_file|reg0|ALT_INV_OUT\(2) <= NOT \reg_file|reg0|OUT\(2);
\reg_file|A_mul|ALT_INV_Mux14~4_combout\ <= NOT \reg_file|A_mul|Mux14~4_combout\;
\reg_file|A_mul|ALT_INV_Mux14~3_combout\ <= NOT \reg_file|A_mul|Mux14~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(1) <= NOT \reg_file|reg15|OUT\(1);
\reg_file|reg11|ALT_INV_OUT\(1) <= NOT \reg_file|reg11|OUT\(1);
\reg_file|reg7|ALT_INV_OUT\(1) <= NOT \reg_file|reg7|OUT\(1);
\reg_file|reg3|ALT_INV_OUT\(1) <= NOT \reg_file|reg3|OUT\(1);
\reg_file|A_mul|ALT_INV_Mux14~2_combout\ <= NOT \reg_file|A_mul|Mux14~2_combout\;
\reg_file|reg14|ALT_INV_OUT\(1) <= NOT \reg_file|reg14|OUT\(1);
\reg_file|reg10|ALT_INV_OUT\(1) <= NOT \reg_file|reg10|OUT\(1);
\reg_file|reg6|ALT_INV_OUT\(1) <= NOT \reg_file|reg6|OUT\(1);
\reg_file|reg2|ALT_INV_OUT\(1) <= NOT \reg_file|reg2|OUT\(1);
\reg_file|A_mul|ALT_INV_Mux14~1_combout\ <= NOT \reg_file|A_mul|Mux14~1_combout\;
\reg_file|reg13|ALT_INV_OUT\(1) <= NOT \reg_file|reg13|OUT\(1);
\reg_file|reg9|ALT_INV_OUT\(1) <= NOT \reg_file|reg9|OUT\(1);
\reg_file|reg5|ALT_INV_OUT\(1) <= NOT \reg_file|reg5|OUT\(1);
\reg_file|reg1|ALT_INV_OUT\(1) <= NOT \reg_file|reg1|OUT\(1);
\reg_file|A_mul|ALT_INV_Mux14~0_combout\ <= NOT \reg_file|A_mul|Mux14~0_combout\;
\reg_file|reg12|ALT_INV_OUT\(1) <= NOT \reg_file|reg12|OUT\(1);
\reg_file|reg8|ALT_INV_OUT\(1) <= NOT \reg_file|reg8|OUT\(1);
\reg_file|reg4|ALT_INV_OUT\(1) <= NOT \reg_file|reg4|OUT\(1);
\reg_file|reg0|ALT_INV_OUT\(1) <= NOT \reg_file|reg0|OUT\(1);
\reg_file|A_mul|ALT_INV_Mux15~4_combout\ <= NOT \reg_file|A_mul|Mux15~4_combout\;
\reg_file|A_mul|ALT_INV_Mux15~3_combout\ <= NOT \reg_file|A_mul|Mux15~3_combout\;
\reg_file|reg15|ALT_INV_OUT\(0) <= NOT \reg_file|reg15|OUT\(0);
\reg_file|reg14|ALT_INV_OUT\(0) <= NOT \reg_file|reg14|OUT\(0);
\reg_file|reg13|ALT_INV_OUT\(0) <= NOT \reg_file|reg13|OUT\(0);
\reg_file|reg12|ALT_INV_OUT\(0) <= NOT \reg_file|reg12|OUT\(0);
\reg_file|A_mul|ALT_INV_Mux15~2_combout\ <= NOT \reg_file|A_mul|Mux15~2_combout\;
\reg_file|reg11|ALT_INV_OUT\(0) <= NOT \reg_file|reg11|OUT\(0);
\reg_file|reg10|ALT_INV_OUT\(0) <= NOT \reg_file|reg10|OUT\(0);
\reg_file|reg9|ALT_INV_OUT\(0) <= NOT \reg_file|reg9|OUT\(0);
\reg_file|reg8|ALT_INV_OUT\(0) <= NOT \reg_file|reg8|OUT\(0);
\reg_file|A_mul|ALT_INV_Mux15~1_combout\ <= NOT \reg_file|A_mul|Mux15~1_combout\;
\reg_file|reg7|ALT_INV_OUT\(0) <= NOT \reg_file|reg7|OUT\(0);
\reg_file|reg6|ALT_INV_OUT\(0) <= NOT \reg_file|reg6|OUT\(0);
\reg_file|reg5|ALT_INV_OUT\(0) <= NOT \reg_file|reg5|OUT\(0);
\reg_file|reg4|ALT_INV_OUT\(0) <= NOT \reg_file|reg4|OUT\(0);
\reg_file|A_mul|ALT_INV_Mux15~0_combout\ <= NOT \reg_file|A_mul|Mux15~0_combout\;
\reg_file|reg3|ALT_INV_OUT\(0) <= NOT \reg_file|reg3|OUT\(0);
\reg_file|reg2|ALT_INV_OUT\(0) <= NOT \reg_file|reg2|OUT\(0);
\reg_file|reg1|ALT_INV_OUT\(0) <= NOT \reg_file|reg1|OUT\(0);
\reg_file|reg0|ALT_INV_OUT\(0) <= NOT \reg_file|reg0|OUT\(0);
\m1|ALT_INV_OUT[2]~69_combout\ <= NOT \m1|OUT[2]~69_combout\;
\m1|ALT_INV_OUT[3]~65_combout\ <= NOT \m1|OUT[3]~65_combout\;
\m1|ALT_INV_OUT[6]~61_combout\ <= NOT \m1|OUT[6]~61_combout\;
\m1|ALT_INV_OUT[7]~57_combout\ <= NOT \m1|OUT[7]~57_combout\;
\m1|ALT_INV_OUT[8]~53_combout\ <= NOT \m1|OUT[8]~53_combout\;
\m1|ALT_INV_OUT[11]~49_combout\ <= NOT \m1|OUT[11]~49_combout\;
\func_unit|_alu|au|ALT_INV_Add0~61_sumout\ <= NOT \func_unit|_alu|au|Add0~61_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~57_sumout\ <= NOT \func_unit|_alu|au|Add0~57_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~53_sumout\ <= NOT \func_unit|_alu|au|Add0~53_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~49_sumout\ <= NOT \func_unit|_alu|au|Add0~49_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~45_sumout\ <= NOT \func_unit|_alu|au|Add0~45_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~41_sumout\ <= NOT \func_unit|_alu|au|Add0~41_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~37_sumout\ <= NOT \func_unit|_alu|au|Add0~37_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~33_sumout\ <= NOT \func_unit|_alu|au|Add0~33_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~29_sumout\ <= NOT \func_unit|_alu|au|Add0~29_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~25_sumout\ <= NOT \func_unit|_alu|au|Add0~25_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~21_sumout\ <= NOT \func_unit|_alu|au|Add0~21_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~17_sumout\ <= NOT \func_unit|_alu|au|Add0~17_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~13_sumout\ <= NOT \func_unit|_alu|au|Add0~13_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~9_sumout\ <= NOT \func_unit|_alu|au|Add0~9_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~5_sumout\ <= NOT \func_unit|_alu|au|Add0~5_sumout\;
\func_unit|_alu|au|ALT_INV_Add0~1_sumout\ <= NOT \func_unit|_alu|au|Add0~1_sumout\;

-- Location: IOOBUF_X15_Y0_N19
\A_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux15~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(0));

-- Location: IOOBUF_X4_Y0_N19
\A_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux14~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(1));

-- Location: IOOBUF_X44_Y0_N2
\A_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux13~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(2));

-- Location: IOOBUF_X19_Y0_N2
\A_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux12~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(3));

-- Location: IOOBUF_X32_Y0_N76
\A_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux11~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(4));

-- Location: IOOBUF_X18_Y0_N2
\A_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux10~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(5));

-- Location: IOOBUF_X36_Y0_N36
\A_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux9~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(6));

-- Location: IOOBUF_X21_Y0_N19
\A_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux8~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(7));

-- Location: IOOBUF_X21_Y0_N53
\A_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux7~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(8));

-- Location: IOOBUF_X36_Y0_N2
\A_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux6~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(9));

-- Location: IOOBUF_X32_Y0_N59
\A_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux5~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(10));

-- Location: IOOBUF_X48_Y0_N42
\A_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux4~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(11));

-- Location: IOOBUF_X17_Y0_N59
\A_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux3~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(12));

-- Location: IOOBUF_X10_Y0_N93
\A_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux2~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(13));

-- Location: IOOBUF_X17_Y0_N42
\A_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux1~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(14));

-- Location: IOOBUF_X21_Y61_N2
\A_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|A_mul|Mux0~4_combout\,
	devoe => ww_devoe,
	o => ww_A_OUT(15));

-- Location: IOOBUF_X62_Y0_N59
\B_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux15~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(0));

-- Location: IOOBUF_X68_Y10_N45
\B_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux14~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(1));

-- Location: IOOBUF_X59_Y0_N53
\B_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux13~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(2));

-- Location: IOOBUF_X57_Y0_N2
\B_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux12~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(3));

-- Location: IOOBUF_X18_Y0_N53
\B_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux11~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(4));

-- Location: IOOBUF_X14_Y0_N36
\B_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux10~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(5));

-- Location: IOOBUF_X4_Y0_N2
\B_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux9~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(6));

-- Location: IOOBUF_X12_Y0_N36
\B_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux8~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(7));

-- Location: IOOBUF_X38_Y0_N53
\B_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux7~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(8));

-- Location: IOOBUF_X48_Y0_N59
\B_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux6~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(9));

-- Location: IOOBUF_X12_Y0_N19
\B_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux5~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(10));

-- Location: IOOBUF_X51_Y0_N36
\B_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux4~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(11));

-- Location: IOOBUF_X21_Y0_N36
\B_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux3~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(12));

-- Location: IOOBUF_X65_Y0_N19
\B_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux2~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(13));

-- Location: IOOBUF_X66_Y0_N36
\B_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux1~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(14));

-- Location: IOOBUF_X44_Y0_N53
\B_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file|B_mul|Mux0~4_combout\,
	devoe => ww_devoe,
	o => ww_B_OUT(15));

-- Location: IOOBUF_X10_Y0_N42
\Z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \func_unit|_alu|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_Z);

-- Location: IOOBUF_X10_Y0_N76
\AROUND[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(0));

-- Location: IOOBUF_X51_Y0_N53
\AROUND[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(1));

-- Location: IOOBUF_X42_Y0_N2
\AROUND[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(2));

-- Location: IOOBUF_X66_Y0_N53
\AROUND[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(3));

-- Location: IOOBUF_X50_Y0_N36
\AROUND[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(4));

-- Location: IOOBUF_X46_Y0_N2
\AROUND[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(5));

-- Location: IOOBUF_X48_Y0_N76
\AROUND[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(6));

-- Location: IOOBUF_X50_Y0_N53
\AROUND[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(7));

-- Location: IOOBUF_X7_Y0_N53
\AROUND[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(8));

-- Location: IOOBUF_X17_Y0_N93
\AROUND[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(9));

-- Location: IOOBUF_X14_Y0_N53
\AROUND[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(10));

-- Location: IOOBUF_X53_Y0_N53
\AROUND[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(11));

-- Location: IOOBUF_X46_Y0_N36
\AROUND[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(12));

-- Location: IOOBUF_X65_Y0_N53
\AROUND[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(13));

-- Location: IOOBUF_X10_Y0_N59
\AROUND[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(14));

-- Location: IOOBUF_X38_Y0_N36
\AROUND[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|OUT[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_AROUND(15));

-- Location: IOIBUF_X46_Y0_N52
\A_SEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_SEL(2),
	o => \A_SEL[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\A_SEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_SEL(0),
	o => \A_SEL[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G7
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N52
\DATA_SEL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_SEL,
	o => \DATA_SEL~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\OP_SEL[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_SEL(3),
	o => \OP_SEL[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\OP_SEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_SEL(0),
	o => \OP_SEL[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\OP_SEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_SEL(1),
	o => \OP_SEL[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N58
\CONST_SEL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_SEL,
	o => \CONST_SEL~input_o\);

-- Location: IOIBUF_X15_Y0_N52
\CONST_IN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(1),
	o => \CONST_IN[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N75
\B_SEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_SEL(0),
	o => \B_SEL[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N92
\B_SEL[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_SEL(3),
	o => \B_SEL[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\B_SEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_SEL(2),
	o => \B_SEL[2]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\DATA_IN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N75
\CONST_IN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(0),
	o => \CONST_IN[0]~input_o\);

-- Location: IOIBUF_X42_Y0_N18
\DEST_SEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEST_SEL(0),
	o => \DEST_SEL[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N18
\DEST_SEL[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEST_SEL(3),
	o => \DEST_SEL[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\LOAD_EN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD_EN,
	o => \LOAD_EN~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\DEST_SEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEST_SEL(1),
	o => \DEST_SEL[1]~input_o\);

-- Location: IOIBUF_X57_Y0_N18
\DEST_SEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEST_SEL(2),
	o => \DEST_SEL[2]~input_o\);

-- Location: LABCELL_X36_Y3_N39
\reg_file|dec|Decoder0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~15_combout\ = ( \DEST_SEL[2]~input_o\ & ( (\DEST_SEL[0]~input_o\ & (\DEST_SEL[3]~input_o\ & (\LOAD_EN~input_o\ & \DEST_SEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_LOAD_EN~input_o\,
	datad => \ALT_INV_DEST_SEL[1]~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~15_combout\);

-- Location: FF_X35_Y4_N29
\reg_file|reg15|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(0));

-- Location: IOIBUF_X38_Y0_N1
\B_SEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_SEL(1),
	o => \B_SEL[1]~input_o\);

-- Location: LABCELL_X36_Y3_N57
\reg_file|dec|Decoder0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~12_combout\ = ( \DEST_SEL[2]~input_o\ & ( (!\DEST_SEL[0]~input_o\ & (\DEST_SEL[3]~input_o\ & (\LOAD_EN~input_o\ & !\DEST_SEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_LOAD_EN~input_o\,
	datad => \ALT_INV_DEST_SEL[1]~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~12_combout\);

-- Location: FF_X36_Y4_N47
\reg_file|reg12|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(0));

-- Location: MLABCELL_X32_Y6_N54
\reg_file|dec|Decoder0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~13_combout\ = ( !\DEST_SEL[1]~input_o\ & ( (\DEST_SEL[3]~input_o\ & (\LOAD_EN~input_o\ & (\DEST_SEL[2]~input_o\ & \DEST_SEL[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[3]~input_o\,
	datab => \ALT_INV_LOAD_EN~input_o\,
	datac => \ALT_INV_DEST_SEL[2]~input_o\,
	datad => \ALT_INV_DEST_SEL[0]~input_o\,
	datae => \ALT_INV_DEST_SEL[1]~input_o\,
	combout => \reg_file|dec|Decoder0~13_combout\);

-- Location: FF_X35_Y4_N38
\reg_file|reg13|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(0));

-- Location: LABCELL_X36_Y3_N36
\reg_file|dec|Decoder0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~14_combout\ = ( \DEST_SEL[2]~input_o\ & ( (!\DEST_SEL[0]~input_o\ & (\DEST_SEL[3]~input_o\ & (\DEST_SEL[1]~input_o\ & \LOAD_EN~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_DEST_SEL[1]~input_o\,
	datad => \ALT_INV_LOAD_EN~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~14_combout\);

-- Location: FF_X35_Y4_N50
\reg_file|reg14|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(0));

-- Location: LABCELL_X35_Y4_N9
\reg_file|B_mul|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux15~3_combout\ = ( \reg_file|reg13|OUT\(0) & ( \reg_file|reg14|OUT\(0) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg12|OUT\(0)) # (\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|reg15|OUT\(0)))) ) ) ) 
-- # ( !\reg_file|reg13|OUT\(0) & ( \reg_file|reg14|OUT\(0) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg12|OUT\(0)) # (\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(0) & (\B_SEL[1]~input_o\))) ) ) ) # ( \reg_file|reg13|OUT\(0) & ( 
-- !\reg_file|reg14|OUT\(0) & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & \reg_file|reg12|OUT\(0))))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|reg15|OUT\(0)))) ) ) ) # ( !\reg_file|reg13|OUT\(0) & ( !\reg_file|reg14|OUT\(0) & ( 
-- (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & \reg_file|reg12|OUT\(0))))) # (\B_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(0) & (\B_SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg15|ALT_INV_OUT\(0),
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|reg12|ALT_INV_OUT\(0),
	datae => \reg_file|reg13|ALT_INV_OUT\(0),
	dataf => \reg_file|reg14|ALT_INV_OUT\(0),
	combout => \reg_file|B_mul|Mux15~3_combout\);

-- Location: LABCELL_X36_Y3_N15
\reg_file|dec|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~6_combout\ = ( \DEST_SEL[2]~input_o\ & ( (!\DEST_SEL[0]~input_o\ & (!\DEST_SEL[3]~input_o\ & (\LOAD_EN~input_o\ & \DEST_SEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_LOAD_EN~input_o\,
	datad => \ALT_INV_DEST_SEL[1]~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~6_combout\);

-- Location: FF_X32_Y4_N41
\reg_file|reg6|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(0));

-- Location: LABCELL_X36_Y3_N33
\reg_file|dec|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~4_combout\ = ( \DEST_SEL[2]~input_o\ & ( (!\DEST_SEL[0]~input_o\ & (!\DEST_SEL[3]~input_o\ & (\LOAD_EN~input_o\ & !\DEST_SEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_LOAD_EN~input_o\,
	datad => \ALT_INV_DEST_SEL[1]~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~4_combout\);

-- Location: FF_X36_Y4_N17
\reg_file|reg4|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(0));

-- Location: LABCELL_X36_Y3_N6
\reg_file|dec|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~7_combout\ = ( \DEST_SEL[2]~input_o\ & ( (\DEST_SEL[0]~input_o\ & (!\DEST_SEL[3]~input_o\ & (\DEST_SEL[1]~input_o\ & \LOAD_EN~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_DEST_SEL[1]~input_o\,
	datad => \ALT_INV_LOAD_EN~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~7_combout\);

-- Location: FF_X32_Y4_N20
\reg_file|reg7|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(0));

-- Location: MLABCELL_X32_Y4_N21
\reg_file|B_mul|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux15~1_combout\ = ( \reg_file|reg4|OUT\(0) & ( \reg_file|reg7|OUT\(0) & ( (!\B_SEL[1]~input_o\ & (((!\B_SEL[0]~input_o\) # (\reg_file|reg5|OUT\(0))))) # (\B_SEL[1]~input_o\ & (((\B_SEL[0]~input_o\)) # (\reg_file|reg6|OUT\(0)))) ) ) ) # ( 
-- !\reg_file|reg4|OUT\(0) & ( \reg_file|reg7|OUT\(0) & ( (!\B_SEL[1]~input_o\ & (((\reg_file|reg5|OUT\(0) & \B_SEL[0]~input_o\)))) # (\B_SEL[1]~input_o\ & (((\B_SEL[0]~input_o\)) # (\reg_file|reg6|OUT\(0)))) ) ) ) # ( \reg_file|reg4|OUT\(0) & ( 
-- !\reg_file|reg7|OUT\(0) & ( (!\B_SEL[1]~input_o\ & (((!\B_SEL[0]~input_o\) # (\reg_file|reg5|OUT\(0))))) # (\B_SEL[1]~input_o\ & (\reg_file|reg6|OUT\(0) & ((!\B_SEL[0]~input_o\)))) ) ) ) # ( !\reg_file|reg4|OUT\(0) & ( !\reg_file|reg7|OUT\(0) & ( 
-- (!\B_SEL[1]~input_o\ & (((\reg_file|reg5|OUT\(0) & \B_SEL[0]~input_o\)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg6|OUT\(0) & ((!\B_SEL[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[1]~input_o\,
	datab => \reg_file|reg6|ALT_INV_OUT\(0),
	datac => \reg_file|reg5|ALT_INV_OUT\(0),
	datad => \ALT_INV_B_SEL[0]~input_o\,
	datae => \reg_file|reg4|ALT_INV_OUT\(0),
	dataf => \reg_file|reg7|ALT_INV_OUT\(0),
	combout => \reg_file|B_mul|Mux15~1_combout\);

-- Location: LABCELL_X36_Y3_N24
\reg_file|dec|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~1_combout\ = ( !\DEST_SEL[2]~input_o\ & ( (\DEST_SEL[0]~input_o\ & (!\DEST_SEL[3]~input_o\ & (!\DEST_SEL[1]~input_o\ & \LOAD_EN~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_DEST_SEL[1]~input_o\,
	datad => \ALT_INV_LOAD_EN~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~1_combout\);

-- Location: FF_X30_Y5_N2
\reg_file|reg1|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(0));

-- Location: LABCELL_X36_Y3_N30
\reg_file|dec|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~3_combout\ = ( !\DEST_SEL[2]~input_o\ & ( (\DEST_SEL[0]~input_o\ & (!\DEST_SEL[3]~input_o\ & (\DEST_SEL[1]~input_o\ & \LOAD_EN~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_DEST_SEL[1]~input_o\,
	datad => \ALT_INV_LOAD_EN~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~3_combout\);

-- Location: FF_X30_Y5_N41
\reg_file|reg3|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(0));

-- Location: LABCELL_X36_Y3_N27
\reg_file|dec|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~2_combout\ = ( !\DEST_SEL[2]~input_o\ & ( (!\DEST_SEL[0]~input_o\ & (!\DEST_SEL[3]~input_o\ & (\LOAD_EN~input_o\ & \DEST_SEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_LOAD_EN~input_o\,
	datad => \ALT_INV_DEST_SEL[1]~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~2_combout\);

-- Location: FF_X31_Y5_N56
\reg_file|reg2|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(0));

-- Location: LABCELL_X36_Y3_N45
\reg_file|dec|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~0_combout\ = ( \LOAD_EN~input_o\ & ( !\DEST_SEL[1]~input_o\ & ( (!\DEST_SEL[0]~input_o\ & (!\DEST_SEL[2]~input_o\ & !\DEST_SEL[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[2]~input_o\,
	datac => \ALT_INV_DEST_SEL[3]~input_o\,
	datae => \ALT_INV_LOAD_EN~input_o\,
	dataf => \ALT_INV_DEST_SEL[1]~input_o\,
	combout => \reg_file|dec|Decoder0~0_combout\);

-- Location: FF_X30_Y5_N32
\reg_file|reg0|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(0));

-- Location: LABCELL_X30_Y5_N6
\reg_file|B_mul|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux15~0_combout\ = ( \reg_file|reg2|OUT\(0) & ( \reg_file|reg0|OUT\(0) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(0))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(0))))) ) ) ) # ( !\reg_file|reg2|OUT\(0) & ( 
-- \reg_file|reg0|OUT\(0) & ( (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(0))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(0)))))) ) ) ) # ( \reg_file|reg2|OUT\(0) & ( 
-- !\reg_file|reg0|OUT\(0) & ( (!\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(0))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(0)))))) ) ) ) # ( !\reg_file|reg2|OUT\(0) & ( 
-- !\reg_file|reg0|OUT\(0) & ( (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(0))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg1|ALT_INV_OUT\(0),
	datad => \reg_file|reg3|ALT_INV_OUT\(0),
	datae => \reg_file|reg2|ALT_INV_OUT\(0),
	dataf => \reg_file|reg0|ALT_INV_OUT\(0),
	combout => \reg_file|B_mul|Mux15~0_combout\);

-- Location: LABCELL_X36_Y3_N54
\reg_file|dec|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~11_combout\ = ( !\DEST_SEL[2]~input_o\ & ( (\DEST_SEL[0]~input_o\ & (\DEST_SEL[3]~input_o\ & (\DEST_SEL[1]~input_o\ & \LOAD_EN~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_DEST_SEL[1]~input_o\,
	datad => \ALT_INV_LOAD_EN~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~11_combout\);

-- Location: FF_X32_Y5_N8
\reg_file|reg11|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(0));

-- Location: LABCELL_X36_Y3_N48
\reg_file|dec|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~9_combout\ = ( !\DEST_SEL[2]~input_o\ & ( (\DEST_SEL[0]~input_o\ & (\DEST_SEL[3]~input_o\ & (!\DEST_SEL[1]~input_o\ & \LOAD_EN~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_DEST_SEL[1]~input_o\,
	datad => \ALT_INV_LOAD_EN~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~9_combout\);

-- Location: FF_X32_Y5_N26
\reg_file|reg9|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(0));

-- Location: MLABCELL_X32_Y6_N24
\reg_file|reg8|OUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg8|OUT[0]~feeder_combout\ = ( \m1|OUT[0]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[0]~2_combout\,
	combout => \reg_file|reg8|OUT[0]~feeder_combout\);

-- Location: LABCELL_X36_Y3_N9
\reg_file|dec|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~8_combout\ = ( !\DEST_SEL[2]~input_o\ & ( (!\DEST_SEL[0]~input_o\ & (\DEST_SEL[3]~input_o\ & (\LOAD_EN~input_o\ & !\DEST_SEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_LOAD_EN~input_o\,
	datad => \ALT_INV_DEST_SEL[1]~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~8_combout\);

-- Location: FF_X32_Y6_N26
\reg_file|reg8|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg8|OUT[0]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(0));

-- Location: LABCELL_X35_Y5_N24
\reg_file|reg10|OUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg10|OUT[0]~feeder_combout\ = ( \m1|OUT[0]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[0]~2_combout\,
	combout => \reg_file|reg10|OUT[0]~feeder_combout\);

-- Location: LABCELL_X36_Y3_N51
\reg_file|dec|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~10_combout\ = ( !\DEST_SEL[2]~input_o\ & ( (!\DEST_SEL[0]~input_o\ & (\DEST_SEL[3]~input_o\ & (\LOAD_EN~input_o\ & \DEST_SEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_LOAD_EN~input_o\,
	datad => \ALT_INV_DEST_SEL[1]~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~10_combout\);

-- Location: FF_X35_Y5_N26
\reg_file|reg10|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg10|OUT[0]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(0));

-- Location: MLABCELL_X32_Y5_N9
\reg_file|B_mul|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux15~2_combout\ = ( \reg_file|reg8|OUT\(0) & ( \reg_file|reg10|OUT\(0) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & ((\reg_file|reg9|OUT\(0)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg11|OUT\(0)))) ) ) ) # ( !\reg_file|reg8|OUT\(0) & 
-- ( \reg_file|reg10|OUT\(0) & ( (!\B_SEL[1]~input_o\ & (\B_SEL[0]~input_o\ & ((\reg_file|reg9|OUT\(0))))) # (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\) # ((\reg_file|reg11|OUT\(0))))) ) ) ) # ( \reg_file|reg8|OUT\(0) & ( !\reg_file|reg10|OUT\(0) & ( 
-- (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\) # ((\reg_file|reg9|OUT\(0))))) # (\B_SEL[1]~input_o\ & (\B_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(0)))) ) ) ) # ( !\reg_file|reg8|OUT\(0) & ( !\reg_file|reg10|OUT\(0) & ( (\B_SEL[0]~input_o\ & 
-- ((!\B_SEL[1]~input_o\ & ((\reg_file|reg9|OUT\(0)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg11|OUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[1]~input_o\,
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \reg_file|reg11|ALT_INV_OUT\(0),
	datad => \reg_file|reg9|ALT_INV_OUT\(0),
	datae => \reg_file|reg8|ALT_INV_OUT\(0),
	dataf => \reg_file|reg10|ALT_INV_OUT\(0),
	combout => \reg_file|B_mul|Mux15~2_combout\);

-- Location: LABCELL_X31_Y4_N54
\reg_file|B_mul|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux15~4_combout\ = ( \reg_file|B_mul|Mux15~0_combout\ & ( \reg_file|B_mul|Mux15~2_combout\ & ( (!\B_SEL[2]~input_o\) # ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux15~1_combout\))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux15~3_combout\))) ) ) ) # ( !\reg_file|B_mul|Mux15~0_combout\ & ( \reg_file|B_mul|Mux15~2_combout\ & ( (!\B_SEL[3]~input_o\ & (((\reg_file|B_mul|Mux15~1_combout\ & \B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\)) 
-- # (\reg_file|B_mul|Mux15~3_combout\))) ) ) ) # ( \reg_file|B_mul|Mux15~0_combout\ & ( !\reg_file|B_mul|Mux15~2_combout\ & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\) # (\reg_file|B_mul|Mux15~1_combout\)))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux15~3_combout\ & ((\B_SEL[2]~input_o\)))) ) ) ) # ( !\reg_file|B_mul|Mux15~0_combout\ & ( !\reg_file|B_mul|Mux15~2_combout\ & ( (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux15~1_combout\))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux15~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|B_mul|ALT_INV_Mux15~3_combout\,
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux15~1_combout\,
	datad => \ALT_INV_B_SEL[2]~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux15~0_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux15~2_combout\,
	combout => \reg_file|B_mul|Mux15~4_combout\);

-- Location: LABCELL_X31_Y4_N48
\m0|OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[0]~0_combout\ = (!\CONST_SEL~input_o\ & ((\reg_file|B_mul|Mux15~4_combout\))) # (\CONST_SEL~input_o\ & (\CONST_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datac => \ALT_INV_CONST_IN[0]~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux15~4_combout\,
	combout => \m0|OUT[0]~0_combout\);

-- Location: LABCELL_X33_Y3_N6
\m1|OUT[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[13]~3_combout\ = ( !\OP_SEL[0]~input_o\ & ( \OP_SEL[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OP_SEL[3]~input_o\,
	dataf => \ALT_INV_OP_SEL[0]~input_o\,
	combout => \m1|OUT[13]~3_combout\);

-- Location: IOIBUF_X50_Y0_N1
\OP_SEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_SEL(2),
	o => \OP_SEL[2]~input_o\);

-- Location: LABCELL_X35_Y4_N21
\m1|OUT[13]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[13]~5_combout\ = ( \OP_SEL[0]~input_o\ & ( (\OP_SEL[3]~input_o\) # (\OP_SEL[2]~input_o\) ) ) # ( !\OP_SEL[0]~input_o\ & ( (\OP_SEL[2]~input_o\ & !\OP_SEL[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OP_SEL[2]~input_o\,
	datad => \ALT_INV_OP_SEL[3]~input_o\,
	dataf => \ALT_INV_OP_SEL[0]~input_o\,
	combout => \m1|OUT[13]~5_combout\);

-- Location: IOIBUF_X65_Y0_N35
\CONST_IN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(2),
	o => \CONST_IN[2]~input_o\);

-- Location: IOIBUF_X44_Y0_N35
\DATA_IN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: IOIBUF_X15_Y61_N18
\CONST_IN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(3),
	o => \CONST_IN[3]~input_o\);

-- Location: IOIBUF_X51_Y0_N18
\DATA_IN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N41
\CONST_IN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(4),
	o => \CONST_IN[4]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\DATA_IN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(4),
	o => \DATA_IN[4]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\CONST_IN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(5),
	o => \CONST_IN[5]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\DATA_IN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(5),
	o => \DATA_IN[5]~input_o\);

-- Location: FF_X30_Y2_N29
\reg_file|reg6|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(5));

-- Location: IOIBUF_X32_Y0_N41
\A_SEL[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_SEL(3),
	o => \A_SEL[3]~input_o\);

-- Location: FF_X30_Y2_N32
\reg_file|reg10|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(5));

-- Location: FF_X31_Y2_N38
\reg_file|reg14|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(5));

-- Location: FF_X31_Y5_N49
\reg_file|reg2|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(5));

-- Location: LABCELL_X30_Y2_N51
\reg_file|A_mul|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux10~2_combout\ = ( \reg_file|reg14|OUT\(5) & ( \reg_file|reg2|OUT\(5) & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)) # (\reg_file|reg6|OUT\(5)))) # (\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\) # (\reg_file|reg10|OUT\(5))))) ) ) ) # 
-- ( !\reg_file|reg14|OUT\(5) & ( \reg_file|reg2|OUT\(5) & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)) # (\reg_file|reg6|OUT\(5)))) # (\A_SEL[3]~input_o\ & (((\reg_file|reg10|OUT\(5) & !\A_SEL[2]~input_o\)))) ) ) ) # ( \reg_file|reg14|OUT\(5) & ( 
-- !\reg_file|reg2|OUT\(5) & ( (!\A_SEL[3]~input_o\ & (\reg_file|reg6|OUT\(5) & ((\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\) # (\reg_file|reg10|OUT\(5))))) ) ) ) # ( !\reg_file|reg14|OUT\(5) & ( !\reg_file|reg2|OUT\(5) & ( 
-- (!\A_SEL[3]~input_o\ & (\reg_file|reg6|OUT\(5) & ((\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & (((\reg_file|reg10|OUT\(5) & !\A_SEL[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg6|ALT_INV_OUT\(5),
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \reg_file|reg10|ALT_INV_OUT\(5),
	datad => \ALT_INV_A_SEL[2]~input_o\,
	datae => \reg_file|reg14|ALT_INV_OUT\(5),
	dataf => \reg_file|reg2|ALT_INV_OUT\(5),
	combout => \reg_file|A_mul|Mux10~2_combout\);

-- Location: IOIBUF_X36_Y0_N52
\A_SEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_SEL(1),
	o => \A_SEL[1]~input_o\);

-- Location: LABCELL_X31_Y2_N45
\reg_file|reg15|OUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg15|OUT[5]~feeder_combout\ = ( \m1|OUT[5]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[5]~17_combout\,
	combout => \reg_file|reg15|OUT[5]~feeder_combout\);

-- Location: FF_X31_Y2_N47
\reg_file|reg15|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg15|OUT[5]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(5));

-- Location: FF_X32_Y2_N56
\reg_file|reg11|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(5));

-- Location: FF_X32_Y2_N23
\reg_file|reg3|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(5));

-- Location: MLABCELL_X32_Y2_N45
\reg_file|A_mul|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux10~3_combout\ = ( \reg_file|reg3|OUT\(5) & ( \A_SEL[2]~input_o\ & ( (!\A_SEL[3]~input_o\ & ((\reg_file|reg7|OUT\(5)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg15|OUT\(5))) ) ) ) # ( !\reg_file|reg3|OUT\(5) & ( \A_SEL[2]~input_o\ & ( 
-- (!\A_SEL[3]~input_o\ & ((\reg_file|reg7|OUT\(5)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg15|OUT\(5))) ) ) ) # ( \reg_file|reg3|OUT\(5) & ( !\A_SEL[2]~input_o\ & ( (!\A_SEL[3]~input_o\) # (\reg_file|reg11|OUT\(5)) ) ) ) # ( !\reg_file|reg3|OUT\(5) & ( 
-- !\A_SEL[2]~input_o\ & ( (\A_SEL[3]~input_o\ & \reg_file|reg11|OUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg15|ALT_INV_OUT\(5),
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \reg_file|reg7|ALT_INV_OUT\(5),
	datad => \reg_file|reg11|ALT_INV_OUT\(5),
	datae => \reg_file|reg3|ALT_INV_OUT\(5),
	dataf => \ALT_INV_A_SEL[2]~input_o\,
	combout => \reg_file|A_mul|Mux10~3_combout\);

-- Location: LABCELL_X36_Y3_N12
\reg_file|dec|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|dec|Decoder0~5_combout\ = ( \DEST_SEL[2]~input_o\ & ( (\DEST_SEL[0]~input_o\ & (!\DEST_SEL[3]~input_o\ & (!\DEST_SEL[1]~input_o\ & \LOAD_EN~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DEST_SEL[0]~input_o\,
	datab => \ALT_INV_DEST_SEL[3]~input_o\,
	datac => \ALT_INV_DEST_SEL[1]~input_o\,
	datad => \ALT_INV_LOAD_EN~input_o\,
	dataf => \ALT_INV_DEST_SEL[2]~input_o\,
	combout => \reg_file|dec|Decoder0~5_combout\);

-- Location: FF_X33_Y2_N8
\reg_file|reg5|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(5));

-- Location: LABCELL_X33_Y2_N45
\reg_file|reg9|OUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg9|OUT[5]~feeder_combout\ = ( \m1|OUT[5]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[5]~17_combout\,
	combout => \reg_file|reg9|OUT[5]~feeder_combout\);

-- Location: FF_X33_Y2_N47
\reg_file|reg9|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg9|OUT[5]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(5));

-- Location: FF_X33_Y2_N38
\reg_file|reg1|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(5));

-- Location: LABCELL_X28_Y2_N45
\reg_file|reg13|OUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg13|OUT[5]~feeder_combout\ = ( \m1|OUT[5]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[5]~17_combout\,
	combout => \reg_file|reg13|OUT[5]~feeder_combout\);

-- Location: FF_X28_Y2_N47
\reg_file|reg13|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg13|OUT[5]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(5));

-- Location: LABCELL_X33_Y2_N39
\reg_file|A_mul|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux10~1_combout\ = ( \reg_file|reg1|OUT\(5) & ( \reg_file|reg13|OUT\(5) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\) # (\reg_file|reg9|OUT\(5))))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # (\reg_file|reg5|OUT\(5)))) ) ) ) # ( 
-- !\reg_file|reg1|OUT\(5) & ( \reg_file|reg13|OUT\(5) & ( (!\A_SEL[2]~input_o\ & (((\reg_file|reg9|OUT\(5) & \A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # (\reg_file|reg5|OUT\(5)))) ) ) ) # ( \reg_file|reg1|OUT\(5) & ( 
-- !\reg_file|reg13|OUT\(5) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\) # (\reg_file|reg9|OUT\(5))))) # (\A_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(5) & ((!\A_SEL[3]~input_o\)))) ) ) ) # ( !\reg_file|reg1|OUT\(5) & ( !\reg_file|reg13|OUT\(5) & ( 
-- (!\A_SEL[2]~input_o\ & (((\reg_file|reg9|OUT\(5) & \A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(5) & ((!\A_SEL[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|reg5|ALT_INV_OUT\(5),
	datac => \reg_file|reg9|ALT_INV_OUT\(5),
	datad => \ALT_INV_A_SEL[3]~input_o\,
	datae => \reg_file|reg1|ALT_INV_OUT\(5),
	dataf => \reg_file|reg13|ALT_INV_OUT\(5),
	combout => \reg_file|A_mul|Mux10~1_combout\);

-- Location: FF_X32_Y3_N38
\reg_file|reg4|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(5));

-- Location: FF_X32_Y5_N46
\reg_file|reg8|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(5));

-- Location: MLABCELL_X32_Y3_N27
\reg_file|reg12|OUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg12|OUT[5]~feeder_combout\ = \m1|OUT[5]~17_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m1|ALT_INV_OUT[5]~17_combout\,
	combout => \reg_file|reg12|OUT[5]~feeder_combout\);

-- Location: FF_X32_Y3_N29
\reg_file|reg12|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg12|OUT[5]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(5));

-- Location: FF_X32_Y3_N50
\reg_file|reg0|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(5));

-- Location: MLABCELL_X32_Y3_N51
\reg_file|A_mul|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux10~0_combout\ = ( \reg_file|reg12|OUT\(5) & ( \reg_file|reg0|OUT\(5) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\) # (\reg_file|reg8|OUT\(5))))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # (\reg_file|reg4|OUT\(5)))) ) ) ) # ( 
-- !\reg_file|reg12|OUT\(5) & ( \reg_file|reg0|OUT\(5) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\) # (\reg_file|reg8|OUT\(5))))) # (\A_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(5) & (!\A_SEL[3]~input_o\))) ) ) ) # ( \reg_file|reg12|OUT\(5) & ( 
-- !\reg_file|reg0|OUT\(5) & ( (!\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\ & \reg_file|reg8|OUT\(5))))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # (\reg_file|reg4|OUT\(5)))) ) ) ) # ( !\reg_file|reg12|OUT\(5) & ( !\reg_file|reg0|OUT\(5) & ( 
-- (!\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\ & \reg_file|reg8|OUT\(5))))) # (\A_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(5) & (!\A_SEL[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg4|ALT_INV_OUT\(5),
	datab => \ALT_INV_A_SEL[2]~input_o\,
	datac => \ALT_INV_A_SEL[3]~input_o\,
	datad => \reg_file|reg8|ALT_INV_OUT\(5),
	datae => \reg_file|reg12|ALT_INV_OUT\(5),
	dataf => \reg_file|reg0|ALT_INV_OUT\(5),
	combout => \reg_file|A_mul|Mux10~0_combout\);

-- Location: MLABCELL_X32_Y2_N9
\reg_file|A_mul|Mux10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux10~4_combout\ = ( \A_SEL[0]~input_o\ & ( \reg_file|A_mul|Mux10~0_combout\ & ( (!\A_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux10~1_combout\))) # (\A_SEL[1]~input_o\ & (\reg_file|A_mul|Mux10~3_combout\)) ) ) ) # ( !\A_SEL[0]~input_o\ & ( 
-- \reg_file|A_mul|Mux10~0_combout\ & ( (!\A_SEL[1]~input_o\) # (\reg_file|A_mul|Mux10~2_combout\) ) ) ) # ( \A_SEL[0]~input_o\ & ( !\reg_file|A_mul|Mux10~0_combout\ & ( (!\A_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux10~1_combout\))) # (\A_SEL[1]~input_o\ & 
-- (\reg_file|A_mul|Mux10~3_combout\)) ) ) ) # ( !\A_SEL[0]~input_o\ & ( !\reg_file|A_mul|Mux10~0_combout\ & ( (\reg_file|A_mul|Mux10~2_combout\ & \A_SEL[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux10~2_combout\,
	datab => \ALT_INV_A_SEL[1]~input_o\,
	datac => \reg_file|A_mul|ALT_INV_Mux10~3_combout\,
	datad => \reg_file|A_mul|ALT_INV_Mux10~1_combout\,
	datae => \ALT_INV_A_SEL[0]~input_o\,
	dataf => \reg_file|A_mul|ALT_INV_Mux10~0_combout\,
	combout => \reg_file|A_mul|Mux10~4_combout\);

-- Location: LABCELL_X35_Y3_N48
\m1|OUT[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[5]~15_combout\ = ( \CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux10~4_combout\ & ( (!\OP_SEL[1]~input_o\ & ((!\OP_SEL[0]~input_o\ & (\CONST_IN[5]~input_o\ & \reg_file|A_mul|Mux10~4_combout\)) # (\OP_SEL[0]~input_o\ & 
-- ((\reg_file|A_mul|Mux10~4_combout\) # (\CONST_IN[5]~input_o\))))) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux10~4_combout\ $ (((!\OP_SEL[0]~input_o\ & !\CONST_IN[5]~input_o\))))) ) ) ) # ( !\CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux10~4_combout\ & ( 
-- (!\OP_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux10~4_combout\) # (\OP_SEL[0]~input_o\))) # (\OP_SEL[1]~input_o\ & ((!\reg_file|A_mul|Mux10~4_combout\))) ) ) ) # ( \CONST_SEL~input_o\ & ( !\reg_file|B_mul|Mux10~4_combout\ & ( (!\OP_SEL[1]~input_o\ & 
-- ((!\OP_SEL[0]~input_o\ & (\CONST_IN[5]~input_o\ & \reg_file|A_mul|Mux10~4_combout\)) # (\OP_SEL[0]~input_o\ & ((\reg_file|A_mul|Mux10~4_combout\) # (\CONST_IN[5]~input_o\))))) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux10~4_combout\ $ 
-- (((!\OP_SEL[0]~input_o\ & !\CONST_IN[5]~input_o\))))) ) ) ) # ( !\CONST_SEL~input_o\ & ( !\reg_file|B_mul|Mux10~4_combout\ & ( (!\OP_SEL[1]~input_o\ & (\OP_SEL[0]~input_o\ & \reg_file|A_mul|Mux10~4_combout\)) # (\OP_SEL[1]~input_o\ & (!\OP_SEL[0]~input_o\ 
-- $ (!\reg_file|A_mul|Mux10~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101100110000101110110101001110111101010100001011101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[1]~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \ALT_INV_CONST_IN[5]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux10~4_combout\,
	datae => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux10~4_combout\,
	combout => \m1|OUT[5]~15_combout\);

-- Location: IOIBUF_X19_Y0_N35
\DATA_IN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(6),
	o => \DATA_IN[6]~input_o\);

-- Location: IOIBUF_X42_Y0_N52
\CONST_IN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(7),
	o => \CONST_IN[7]~input_o\);

-- Location: IOIBUF_X55_Y0_N75
\CONST_IN[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(8),
	o => \CONST_IN[8]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\DATA_IN[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(8),
	o => \DATA_IN[8]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\CONST_IN[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(9),
	o => \CONST_IN[9]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\DATA_IN[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(9),
	o => \DATA_IN[9]~input_o\);

-- Location: LABCELL_X30_Y2_N24
\reg_file|reg6|OUT[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg6|OUT[9]~feeder_combout\ = ( \m1|OUT[9]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[9]~26_combout\,
	combout => \reg_file|reg6|OUT[9]~feeder_combout\);

-- Location: FF_X30_Y2_N26
\reg_file|reg6|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg6|OUT[9]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(9));

-- Location: LABCELL_X31_Y1_N21
\reg_file|reg2|OUT[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg2|OUT[9]~feeder_combout\ = ( \m1|OUT[9]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[9]~26_combout\,
	combout => \reg_file|reg2|OUT[9]~feeder_combout\);

-- Location: FF_X31_Y1_N23
\reg_file|reg2|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg2|OUT[9]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(9));

-- Location: FF_X33_Y1_N38
\reg_file|reg10|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(9));

-- Location: LABCELL_X33_Y1_N12
\reg_file|A_mul|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux6~2_combout\ = ( \reg_file|reg10|OUT\(9) & ( \reg_file|reg14|OUT\(9) & ( ((!\A_SEL[2]~input_o\ & ((\reg_file|reg2|OUT\(9)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg6|OUT\(9)))) # (\A_SEL[3]~input_o\) ) ) ) # ( !\reg_file|reg10|OUT\(9) & 
-- ( \reg_file|reg14|OUT\(9) & ( (!\A_SEL[2]~input_o\ & (!\A_SEL[3]~input_o\ & ((\reg_file|reg2|OUT\(9))))) # (\A_SEL[2]~input_o\ & (((\reg_file|reg6|OUT\(9))) # (\A_SEL[3]~input_o\))) ) ) ) # ( \reg_file|reg10|OUT\(9) & ( !\reg_file|reg14|OUT\(9) & ( 
-- (!\A_SEL[2]~input_o\ & (((\reg_file|reg2|OUT\(9))) # (\A_SEL[3]~input_o\))) # (\A_SEL[2]~input_o\ & (!\A_SEL[3]~input_o\ & (\reg_file|reg6|OUT\(9)))) ) ) ) # ( !\reg_file|reg10|OUT\(9) & ( !\reg_file|reg14|OUT\(9) & ( (!\A_SEL[3]~input_o\ & 
-- ((!\A_SEL[2]~input_o\ & ((\reg_file|reg2|OUT\(9)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg6|OUT\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \reg_file|reg6|ALT_INV_OUT\(9),
	datad => \reg_file|reg2|ALT_INV_OUT\(9),
	datae => \reg_file|reg10|ALT_INV_OUT\(9),
	dataf => \reg_file|reg14|ALT_INV_OUT\(9),
	combout => \reg_file|A_mul|Mux6~2_combout\);

-- Location: FF_X33_Y2_N35
\reg_file|reg9|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(9));

-- Location: FF_X33_Y2_N14
\reg_file|reg1|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(9));

-- Location: FF_X33_Y2_N26
\reg_file|reg5|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(9));

-- Location: FF_X35_Y4_N8
\reg_file|reg13|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(9));

-- Location: LABCELL_X33_Y2_N15
\reg_file|A_mul|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux6~1_combout\ = ( \A_SEL[3]~input_o\ & ( \reg_file|reg13|OUT\(9) & ( (\A_SEL[2]~input_o\) # (\reg_file|reg9|OUT\(9)) ) ) ) # ( !\A_SEL[3]~input_o\ & ( \reg_file|reg13|OUT\(9) & ( (!\A_SEL[2]~input_o\ & (\reg_file|reg1|OUT\(9))) # 
-- (\A_SEL[2]~input_o\ & ((\reg_file|reg5|OUT\(9)))) ) ) ) # ( \A_SEL[3]~input_o\ & ( !\reg_file|reg13|OUT\(9) & ( (\reg_file|reg9|OUT\(9) & !\A_SEL[2]~input_o\) ) ) ) # ( !\A_SEL[3]~input_o\ & ( !\reg_file|reg13|OUT\(9) & ( (!\A_SEL[2]~input_o\ & 
-- (\reg_file|reg1|OUT\(9))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg5|OUT\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg9|ALT_INV_OUT\(9),
	datab => \ALT_INV_A_SEL[2]~input_o\,
	datac => \reg_file|reg1|ALT_INV_OUT\(9),
	datad => \reg_file|reg5|ALT_INV_OUT\(9),
	datae => \ALT_INV_A_SEL[3]~input_o\,
	dataf => \reg_file|reg13|ALT_INV_OUT\(9),
	combout => \reg_file|A_mul|Mux6~1_combout\);

-- Location: LABCELL_X30_Y2_N45
\reg_file|reg7|OUT[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg7|OUT[9]~feeder_combout\ = ( \m1|OUT[9]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[9]~26_combout\,
	combout => \reg_file|reg7|OUT[9]~feeder_combout\);

-- Location: FF_X30_Y2_N47
\reg_file|reg7|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg7|OUT[9]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(9));

-- Location: LABCELL_X31_Y7_N57
\reg_file|reg3|OUT[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg3|OUT[9]~feeder_combout\ = ( \m1|OUT[9]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[9]~26_combout\,
	combout => \reg_file|reg3|OUT[9]~feeder_combout\);

-- Location: FF_X31_Y7_N59
\reg_file|reg3|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg3|OUT[9]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(9));

-- Location: FF_X31_Y2_N26
\reg_file|reg15|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(9));

-- Location: FF_X31_Y2_N2
\reg_file|reg11|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(9));

-- Location: LABCELL_X33_Y1_N0
\reg_file|A_mul|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux6~3_combout\ = ( \reg_file|reg15|OUT\(9) & ( \reg_file|reg11|OUT\(9) & ( ((!\A_SEL[2]~input_o\ & ((\reg_file|reg3|OUT\(9)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(9)))) # (\A_SEL[3]~input_o\) ) ) ) # ( !\reg_file|reg15|OUT\(9) & 
-- ( \reg_file|reg11|OUT\(9) & ( (!\A_SEL[2]~input_o\ & (((\reg_file|reg3|OUT\(9)) # (\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(9) & (!\A_SEL[3]~input_o\))) ) ) ) # ( \reg_file|reg15|OUT\(9) & ( !\reg_file|reg11|OUT\(9) & ( 
-- (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\ & \reg_file|reg3|OUT\(9))))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # (\reg_file|reg7|OUT\(9)))) ) ) ) # ( !\reg_file|reg15|OUT\(9) & ( !\reg_file|reg11|OUT\(9) & ( (!\A_SEL[3]~input_o\ & 
-- ((!\A_SEL[2]~input_o\ & ((\reg_file|reg3|OUT\(9)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|reg7|ALT_INV_OUT\(9),
	datac => \ALT_INV_A_SEL[3]~input_o\,
	datad => \reg_file|reg3|ALT_INV_OUT\(9),
	datae => \reg_file|reg15|ALT_INV_OUT\(9),
	dataf => \reg_file|reg11|ALT_INV_OUT\(9),
	combout => \reg_file|A_mul|Mux6~3_combout\);

-- Location: FF_X32_Y3_N20
\reg_file|reg12|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(9));

-- Location: FF_X32_Y3_N32
\reg_file|reg4|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(9));

-- Location: FF_X32_Y3_N14
\reg_file|reg0|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(9));

-- Location: MLABCELL_X32_Y5_N12
\reg_file|reg8|OUT[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg8|OUT[9]~feeder_combout\ = ( \m1|OUT[9]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[9]~26_combout\,
	combout => \reg_file|reg8|OUT[9]~feeder_combout\);

-- Location: FF_X32_Y5_N13
\reg_file|reg8|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg8|OUT[9]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(9));

-- Location: MLABCELL_X32_Y3_N54
\reg_file|A_mul|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux6~0_combout\ = ( \A_SEL[3]~input_o\ & ( \reg_file|reg8|OUT\(9) & ( (!\A_SEL[2]~input_o\) # (\reg_file|reg12|OUT\(9)) ) ) ) # ( !\A_SEL[3]~input_o\ & ( \reg_file|reg8|OUT\(9) & ( (!\A_SEL[2]~input_o\ & ((\reg_file|reg0|OUT\(9)))) # 
-- (\A_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(9))) ) ) ) # ( \A_SEL[3]~input_o\ & ( !\reg_file|reg8|OUT\(9) & ( (\reg_file|reg12|OUT\(9) & \A_SEL[2]~input_o\) ) ) ) # ( !\A_SEL[3]~input_o\ & ( !\reg_file|reg8|OUT\(9) & ( (!\A_SEL[2]~input_o\ & 
-- ((\reg_file|reg0|OUT\(9)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg12|ALT_INV_OUT\(9),
	datab => \reg_file|reg4|ALT_INV_OUT\(9),
	datac => \ALT_INV_A_SEL[2]~input_o\,
	datad => \reg_file|reg0|ALT_INV_OUT\(9),
	datae => \ALT_INV_A_SEL[3]~input_o\,
	dataf => \reg_file|reg8|ALT_INV_OUT\(9),
	combout => \reg_file|A_mul|Mux6~0_combout\);

-- Location: LABCELL_X33_Y1_N45
\reg_file|A_mul|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux6~4_combout\ = ( \reg_file|A_mul|Mux6~3_combout\ & ( \reg_file|A_mul|Mux6~0_combout\ & ( (!\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\) # (\reg_file|A_mul|Mux6~1_combout\)))) # (\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\)) # 
-- (\reg_file|A_mul|Mux6~2_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux6~3_combout\ & ( \reg_file|A_mul|Mux6~0_combout\ & ( (!\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\) # (\reg_file|A_mul|Mux6~1_combout\)))) # (\A_SEL[1]~input_o\ & 
-- (\reg_file|A_mul|Mux6~2_combout\ & ((!\A_SEL[0]~input_o\)))) ) ) ) # ( \reg_file|A_mul|Mux6~3_combout\ & ( !\reg_file|A_mul|Mux6~0_combout\ & ( (!\A_SEL[1]~input_o\ & (((\reg_file|A_mul|Mux6~1_combout\ & \A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & 
-- (((\A_SEL[0]~input_o\)) # (\reg_file|A_mul|Mux6~2_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux6~3_combout\ & ( !\reg_file|A_mul|Mux6~0_combout\ & ( (!\A_SEL[1]~input_o\ & (((\reg_file|A_mul|Mux6~1_combout\ & \A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & 
-- (\reg_file|A_mul|Mux6~2_combout\ & ((!\A_SEL[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \reg_file|A_mul|ALT_INV_Mux6~2_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_A_SEL[0]~input_o\,
	datae => \reg_file|A_mul|ALT_INV_Mux6~3_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux6~0_combout\,
	combout => \reg_file|A_mul|Mux6~4_combout\);

-- Location: IOIBUF_X18_Y0_N35
\CONST_IN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(6),
	o => \CONST_IN[6]~input_o\);

-- Location: LABCELL_X31_Y4_N0
\func_unit|_alu|au|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~1_sumout\ = SUM(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux15~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[0]~input_o\))))) ) + ( \OP_SEL[0]~input_o\ ) + ( !VCC ))
-- \func_unit|_alu|au|Add0~2\ = CARRY(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux15~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[0]~input_o\))))) ) + ( \OP_SEL[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux15~4_combout\,
	datad => \ALT_INV_CONST_IN[0]~input_o\,
	cin => GND,
	sumout => \func_unit|_alu|au|Add0~1_sumout\,
	cout => \func_unit|_alu|au|Add0~2\);

-- Location: LABCELL_X31_Y4_N3
\func_unit|_alu|au|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~5_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux14~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[1]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~2\ ))
-- \func_unit|_alu|au|Add0~6\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux14~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[1]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux14~4_combout\,
	dataf => \ALT_INV_CONST_IN[1]~input_o\,
	cin => \func_unit|_alu|au|Add0~2\,
	sumout => \func_unit|_alu|au|Add0~5_sumout\,
	cout => \func_unit|_alu|au|Add0~6\);

-- Location: LABCELL_X31_Y4_N6
\func_unit|_alu|au|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~9_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux13~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[2]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~6\ ))
-- \func_unit|_alu|au|Add0~10\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux13~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[2]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux13~4_combout\,
	dataf => \ALT_INV_CONST_IN[2]~input_o\,
	cin => \func_unit|_alu|au|Add0~6\,
	sumout => \func_unit|_alu|au|Add0~9_sumout\,
	cout => \func_unit|_alu|au|Add0~10\);

-- Location: LABCELL_X31_Y4_N9
\func_unit|_alu|au|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~13_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux12~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[3]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~10\ ))
-- \func_unit|_alu|au|Add0~14\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux12~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[3]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux12~4_combout\,
	dataf => \ALT_INV_CONST_IN[3]~input_o\,
	cin => \func_unit|_alu|au|Add0~10\,
	sumout => \func_unit|_alu|au|Add0~13_sumout\,
	cout => \func_unit|_alu|au|Add0~14\);

-- Location: LABCELL_X31_Y4_N12
\func_unit|_alu|au|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~17_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux11~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[4]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~14\ ))
-- \func_unit|_alu|au|Add0~18\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux11~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[4]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux11~4_combout\,
	dataf => \ALT_INV_CONST_IN[4]~input_o\,
	cin => \func_unit|_alu|au|Add0~14\,
	sumout => \func_unit|_alu|au|Add0~17_sumout\,
	cout => \func_unit|_alu|au|Add0~18\);

-- Location: LABCELL_X31_Y4_N15
\func_unit|_alu|au|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~21_sumout\ = SUM(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux10~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[5]~input_o\))))) ) + ( GND ) + ( \func_unit|_alu|au|Add0~18\ ))
-- \func_unit|_alu|au|Add0~22\ = CARRY(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux10~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[5]~input_o\))))) ) + ( GND ) + ( \func_unit|_alu|au|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux10~4_combout\,
	datad => \ALT_INV_CONST_IN[5]~input_o\,
	cin => \func_unit|_alu|au|Add0~18\,
	sumout => \func_unit|_alu|au|Add0~21_sumout\,
	cout => \func_unit|_alu|au|Add0~22\);

-- Location: LABCELL_X31_Y4_N18
\func_unit|_alu|au|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~25_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux9~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[6]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~22\ ))
-- \func_unit|_alu|au|Add0~26\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux9~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[6]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux9~4_combout\,
	dataf => \ALT_INV_CONST_IN[6]~input_o\,
	cin => \func_unit|_alu|au|Add0~22\,
	sumout => \func_unit|_alu|au|Add0~25_sumout\,
	cout => \func_unit|_alu|au|Add0~26\);

-- Location: LABCELL_X31_Y4_N21
\func_unit|_alu|au|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~29_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux8~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[7]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~26\ ))
-- \func_unit|_alu|au|Add0~30\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux8~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[7]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux8~4_combout\,
	dataf => \ALT_INV_CONST_IN[7]~input_o\,
	cin => \func_unit|_alu|au|Add0~26\,
	sumout => \func_unit|_alu|au|Add0~29_sumout\,
	cout => \func_unit|_alu|au|Add0~30\);

-- Location: LABCELL_X31_Y4_N24
\func_unit|_alu|au|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~33_sumout\ = SUM(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux7~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[8]~input_o\))))) ) + ( GND ) + ( \func_unit|_alu|au|Add0~30\ ))
-- \func_unit|_alu|au|Add0~34\ = CARRY(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux7~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[8]~input_o\))))) ) + ( GND ) + ( \func_unit|_alu|au|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux7~4_combout\,
	datad => \ALT_INV_CONST_IN[8]~input_o\,
	cin => \func_unit|_alu|au|Add0~30\,
	sumout => \func_unit|_alu|au|Add0~33_sumout\,
	cout => \func_unit|_alu|au|Add0~34\);

-- Location: LABCELL_X31_Y4_N27
\func_unit|_alu|au|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~37_sumout\ = SUM(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux6~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[9]~input_o\))))) ) + ( GND ) + ( \func_unit|_alu|au|Add0~34\ ))
-- \func_unit|_alu|au|Add0~38\ = CARRY(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux6~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[9]~input_o\))))) ) + ( GND ) + ( \func_unit|_alu|au|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux6~4_combout\,
	datad => \ALT_INV_CONST_IN[9]~input_o\,
	cin => \func_unit|_alu|au|Add0~34\,
	sumout => \func_unit|_alu|au|Add0~37_sumout\,
	cout => \func_unit|_alu|au|Add0~38\);

-- Location: LABCELL_X30_Y4_N24
\func_unit|_alu|au|s|s9|SH1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s9|SH1~0_combout\ = ( \func_unit|_alu|au|Add0~37_sumout\ & ( !\reg_file|A_mul|Mux6~4_combout\ ) ) # ( !\func_unit|_alu|au|Add0~37_sumout\ & ( \reg_file|A_mul|Mux6~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_file|A_mul|ALT_INV_Mux6~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~37_sumout\,
	combout => \func_unit|_alu|au|s|s9|SH1~0_combout\);

-- Location: LABCELL_X30_Y1_N12
\m1|OUT[9]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[9]~24_combout\ = ( \reg_file|A_mul|Mux6~4_combout\ & ( \reg_file|B_mul|Mux6~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & (!\CONST_IN[9]~input_o\ & \CONST_SEL~input_o\)))) ) ) ) # ( !\reg_file|A_mul|Mux6~4_combout\ & ( 
-- \reg_file|B_mul|Mux6~4_combout\ & ( (!\OP_SEL[1]~input_o\ & (\OP_SEL[0]~input_o\ & ((!\CONST_SEL~input_o\) # (\CONST_IN[9]~input_o\)))) # (\OP_SEL[1]~input_o\ & (((!\CONST_SEL~input_o\) # (\CONST_IN[9]~input_o\)) # (\OP_SEL[0]~input_o\))) ) ) ) # ( 
-- \reg_file|A_mul|Mux6~4_combout\ & ( !\reg_file|B_mul|Mux6~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & ((!\CONST_IN[9]~input_o\) # (!\CONST_SEL~input_o\))))) ) ) ) # ( !\reg_file|A_mul|Mux6~4_combout\ & ( 
-- !\reg_file|B_mul|Mux6~4_combout\ & ( (!\OP_SEL[1]~input_o\ & (\OP_SEL[0]~input_o\ & (\CONST_IN[9]~input_o\ & \CONST_SEL~input_o\))) # (\OP_SEL[1]~input_o\ & (((\CONST_IN[9]~input_o\ & \CONST_SEL~input_o\)) # (\OP_SEL[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111011001100110101001110111000101111010101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[1]~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \ALT_INV_CONST_IN[9]~input_o\,
	datad => \ALT_INV_CONST_SEL~input_o\,
	datae => \reg_file|A_mul|ALT_INV_Mux6~4_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux6~4_combout\,
	combout => \m1|OUT[9]~24_combout\);

-- Location: IOIBUF_X18_Y0_N18
\DATA_IN[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(10),
	o => \DATA_IN[10]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\CONST_IN[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(10),
	o => \CONST_IN[10]~input_o\);

-- Location: FF_X31_Y1_N50
\reg_file|reg1|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(10));

-- Location: FF_X32_Y1_N8
\reg_file|reg0|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(10));

-- Location: FF_X32_Y2_N17
\reg_file|reg3|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(10));

-- Location: LABCELL_X31_Y1_N24
\reg_file|reg2|OUT[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg2|OUT[10]~feeder_combout\ = ( \m1|OUT[10]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[10]~29_combout\,
	combout => \reg_file|reg2|OUT[10]~feeder_combout\);

-- Location: FF_X31_Y1_N26
\reg_file|reg2|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg2|OUT[10]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(10));

-- Location: MLABCELL_X32_Y1_N18
\reg_file|A_mul|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux5~0_combout\ = ( \reg_file|reg3|OUT\(10) & ( \reg_file|reg2|OUT\(10) & ( ((!\A_SEL[0]~input_o\ & ((\reg_file|reg0|OUT\(10)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg1|OUT\(10)))) # (\A_SEL[1]~input_o\) ) ) ) # ( !\reg_file|reg3|OUT\(10) 
-- & ( \reg_file|reg2|OUT\(10) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & ((\reg_file|reg0|OUT\(10)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg1|OUT\(10))))) # (\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)))) ) ) ) # ( \reg_file|reg3|OUT\(10) & ( 
-- !\reg_file|reg2|OUT\(10) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & ((\reg_file|reg0|OUT\(10)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg1|OUT\(10))))) # (\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\)))) ) ) ) # ( !\reg_file|reg3|OUT\(10) & ( 
-- !\reg_file|reg2|OUT\(10) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & ((\reg_file|reg0|OUT\(10)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg1|OUT\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg1|ALT_INV_OUT\(10),
	datab => \ALT_INV_A_SEL[1]~input_o\,
	datac => \ALT_INV_A_SEL[0]~input_o\,
	datad => \reg_file|reg0|ALT_INV_OUT\(10),
	datae => \reg_file|reg3|ALT_INV_OUT\(10),
	dataf => \reg_file|reg2|ALT_INV_OUT\(10),
	combout => \reg_file|A_mul|Mux5~0_combout\);

-- Location: FF_X31_Y3_N50
\reg_file|reg14|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(10));

-- Location: FF_X31_Y3_N26
\reg_file|reg15|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(10));

-- Location: LABCELL_X30_Y3_N24
\reg_file|reg12|OUT[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg12|OUT[10]~feeder_combout\ = ( \m1|OUT[10]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[10]~29_combout\,
	combout => \reg_file|reg12|OUT[10]~feeder_combout\);

-- Location: FF_X30_Y3_N26
\reg_file|reg12|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg12|OUT[10]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(10));

-- Location: LABCELL_X30_Y3_N42
\reg_file|A_mul|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux5~3_combout\ = ( \reg_file|reg13|OUT\(10) & ( \reg_file|reg12|OUT\(10) & ( (!\A_SEL[1]~input_o\) # ((!\A_SEL[0]~input_o\ & (\reg_file|reg14|OUT\(10))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg15|OUT\(10))))) ) ) ) # ( 
-- !\reg_file|reg13|OUT\(10) & ( \reg_file|reg12|OUT\(10) & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\)) # (\reg_file|reg14|OUT\(10)))) # (\A_SEL[0]~input_o\ & (((\reg_file|reg15|OUT\(10) & \A_SEL[1]~input_o\)))) ) ) ) # ( \reg_file|reg13|OUT\(10) & ( 
-- !\reg_file|reg12|OUT\(10) & ( (!\A_SEL[0]~input_o\ & (\reg_file|reg14|OUT\(10) & ((\A_SEL[1]~input_o\)))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\) # (\reg_file|reg15|OUT\(10))))) ) ) ) # ( !\reg_file|reg13|OUT\(10) & ( !\reg_file|reg12|OUT\(10) & ( 
-- (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg14|OUT\(10))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg15|OUT\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg14|ALT_INV_OUT\(10),
	datab => \reg_file|reg15|ALT_INV_OUT\(10),
	datac => \ALT_INV_A_SEL[0]~input_o\,
	datad => \ALT_INV_A_SEL[1]~input_o\,
	datae => \reg_file|reg13|ALT_INV_OUT\(10),
	dataf => \reg_file|reg12|ALT_INV_OUT\(10),
	combout => \reg_file|A_mul|Mux5~3_combout\);

-- Location: LABCELL_X33_Y2_N33
\reg_file|reg9|OUT[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg9|OUT[10]~feeder_combout\ = ( \m1|OUT[10]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[10]~29_combout\,
	combout => \reg_file|reg9|OUT[10]~feeder_combout\);

-- Location: FF_X33_Y2_N34
\reg_file|reg9|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg9|OUT[10]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(10));

-- Location: LABCELL_X33_Y1_N54
\reg_file|reg8|OUT[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg8|OUT[10]~feeder_combout\ = ( \m1|OUT[10]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[10]~29_combout\,
	combout => \reg_file|reg8|OUT[10]~feeder_combout\);

-- Location: FF_X33_Y1_N56
\reg_file|reg8|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg8|OUT[10]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(10));

-- Location: FF_X33_Y1_N29
\reg_file|reg10|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(10));

-- Location: FF_X31_Y3_N2
\reg_file|reg11|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(10));

-- Location: LABCELL_X33_Y1_N24
\reg_file|A_mul|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux5~2_combout\ = ( \reg_file|reg11|OUT\(10) & ( \A_SEL[0]~input_o\ & ( (\reg_file|reg9|OUT\(10)) # (\A_SEL[1]~input_o\) ) ) ) # ( !\reg_file|reg11|OUT\(10) & ( \A_SEL[0]~input_o\ & ( (!\A_SEL[1]~input_o\ & \reg_file|reg9|OUT\(10)) ) ) ) # 
-- ( \reg_file|reg11|OUT\(10) & ( !\A_SEL[0]~input_o\ & ( (!\A_SEL[1]~input_o\ & (\reg_file|reg8|OUT\(10))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg10|OUT\(10)))) ) ) ) # ( !\reg_file|reg11|OUT\(10) & ( !\A_SEL[0]~input_o\ & ( (!\A_SEL[1]~input_o\ & 
-- (\reg_file|reg8|OUT\(10))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg10|OUT\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \reg_file|reg9|ALT_INV_OUT\(10),
	datac => \reg_file|reg8|ALT_INV_OUT\(10),
	datad => \reg_file|reg10|ALT_INV_OUT\(10),
	datae => \reg_file|reg11|ALT_INV_OUT\(10),
	dataf => \ALT_INV_A_SEL[0]~input_o\,
	combout => \reg_file|A_mul|Mux5~2_combout\);

-- Location: FF_X30_Y1_N59
\reg_file|reg7|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(10));

-- Location: LABCELL_X30_Y1_N51
\reg_file|reg4|OUT[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg4|OUT[10]~feeder_combout\ = ( \m1|OUT[10]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[10]~29_combout\,
	combout => \reg_file|reg4|OUT[10]~feeder_combout\);

-- Location: FF_X30_Y1_N53
\reg_file|reg4|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg4|OUT[10]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(10));

-- Location: LABCELL_X30_Y2_N57
\reg_file|reg6|OUT[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg6|OUT[10]~feeder_combout\ = ( \m1|OUT[10]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[10]~29_combout\,
	combout => \reg_file|reg6|OUT[10]~feeder_combout\);

-- Location: FF_X30_Y2_N59
\reg_file|reg6|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg6|OUT[10]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(10));

-- Location: FF_X31_Y1_N14
\reg_file|reg5|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(10));

-- Location: LABCELL_X30_Y1_N3
\reg_file|A_mul|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux5~1_combout\ = ( \reg_file|reg6|OUT\(10) & ( \reg_file|reg5|OUT\(10) & ( (!\A_SEL[1]~input_o\ & (((\reg_file|reg4|OUT\(10))) # (\A_SEL[0]~input_o\))) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\) # ((\reg_file|reg7|OUT\(10))))) ) ) ) # 
-- ( !\reg_file|reg6|OUT\(10) & ( \reg_file|reg5|OUT\(10) & ( (!\A_SEL[1]~input_o\ & (((\reg_file|reg4|OUT\(10))) # (\A_SEL[0]~input_o\))) # (\A_SEL[1]~input_o\ & (\A_SEL[0]~input_o\ & (\reg_file|reg7|OUT\(10)))) ) ) ) # ( \reg_file|reg6|OUT\(10) & ( 
-- !\reg_file|reg5|OUT\(10) & ( (!\A_SEL[1]~input_o\ & (!\A_SEL[0]~input_o\ & ((\reg_file|reg4|OUT\(10))))) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\) # ((\reg_file|reg7|OUT\(10))))) ) ) ) # ( !\reg_file|reg6|OUT\(10) & ( !\reg_file|reg5|OUT\(10) & ( 
-- (!\A_SEL[1]~input_o\ & (!\A_SEL[0]~input_o\ & ((\reg_file|reg4|OUT\(10))))) # (\A_SEL[1]~input_o\ & (\A_SEL[0]~input_o\ & (\reg_file|reg7|OUT\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \ALT_INV_A_SEL[0]~input_o\,
	datac => \reg_file|reg7|ALT_INV_OUT\(10),
	datad => \reg_file|reg4|ALT_INV_OUT\(10),
	datae => \reg_file|reg6|ALT_INV_OUT\(10),
	dataf => \reg_file|reg5|ALT_INV_OUT\(10),
	combout => \reg_file|A_mul|Mux5~1_combout\);

-- Location: LABCELL_X31_Y1_N33
\reg_file|A_mul|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux5~4_combout\ = ( \A_SEL[3]~input_o\ & ( \reg_file|A_mul|Mux5~1_combout\ & ( (!\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux5~2_combout\))) # (\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux5~3_combout\)) ) ) ) # ( !\A_SEL[3]~input_o\ & ( 
-- \reg_file|A_mul|Mux5~1_combout\ & ( (\A_SEL[2]~input_o\) # (\reg_file|A_mul|Mux5~0_combout\) ) ) ) # ( \A_SEL[3]~input_o\ & ( !\reg_file|A_mul|Mux5~1_combout\ & ( (!\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux5~2_combout\))) # (\A_SEL[2]~input_o\ & 
-- (\reg_file|A_mul|Mux5~3_combout\)) ) ) ) # ( !\A_SEL[3]~input_o\ & ( !\reg_file|A_mul|Mux5~1_combout\ & ( (\reg_file|A_mul|Mux5~0_combout\ & !\A_SEL[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux5~0_combout\,
	datab => \ALT_INV_A_SEL[2]~input_o\,
	datac => \reg_file|A_mul|ALT_INV_Mux5~3_combout\,
	datad => \reg_file|A_mul|ALT_INV_Mux5~2_combout\,
	datae => \ALT_INV_A_SEL[3]~input_o\,
	dataf => \reg_file|A_mul|ALT_INV_Mux5~1_combout\,
	combout => \reg_file|A_mul|Mux5~4_combout\);

-- Location: LABCELL_X31_Y3_N57
\m1|OUT[10]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[10]~27_combout\ = ( \OP_SEL[0]~input_o\ & ( \reg_file|A_mul|Mux5~4_combout\ & ( !\OP_SEL[1]~input_o\ ) ) ) # ( !\OP_SEL[0]~input_o\ & ( \reg_file|A_mul|Mux5~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\CONST_SEL~input_o\ & 
-- ((!\reg_file|B_mul|Mux5~4_combout\))) # (\CONST_SEL~input_o\ & (!\CONST_IN[10]~input_o\)))) ) ) ) # ( \OP_SEL[0]~input_o\ & ( !\reg_file|A_mul|Mux5~4_combout\ & ( ((!\CONST_SEL~input_o\ & ((\reg_file|B_mul|Mux5~4_combout\))) # (\CONST_SEL~input_o\ & 
-- (\CONST_IN[10]~input_o\))) # (\OP_SEL[1]~input_o\) ) ) ) # ( !\OP_SEL[0]~input_o\ & ( !\reg_file|A_mul|Mux5~4_combout\ & ( (\OP_SEL[1]~input_o\ & ((!\CONST_SEL~input_o\ & ((\reg_file|B_mul|Mux5~4_combout\))) # (\CONST_SEL~input_o\ & 
-- (\CONST_IN[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000111111101111100011110110100101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_IN[10]~input_o\,
	datab => \ALT_INV_CONST_SEL~input_o\,
	datac => \ALT_INV_OP_SEL[1]~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux5~4_combout\,
	datae => \ALT_INV_OP_SEL[0]~input_o\,
	dataf => \reg_file|A_mul|ALT_INV_Mux5~4_combout\,
	combout => \m1|OUT[10]~27_combout\);

-- Location: IOIBUF_X53_Y0_N35
\CONST_IN[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(11),
	o => \CONST_IN[11]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\DATA_IN[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(11),
	o => \DATA_IN[11]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\CONST_IN[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(12),
	o => \CONST_IN[12]~input_o\);

-- Location: FF_X30_Y2_N2
\reg_file|reg10|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(11));

-- Location: FF_X30_Y2_N14
\reg_file|reg6|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(11));

-- Location: FF_X31_Y1_N38
\reg_file|reg2|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(11));

-- Location: FF_X33_Y3_N50
\reg_file|reg14|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(11));

-- Location: LABCELL_X30_Y1_N24
\reg_file|A_mul|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux4~2_combout\ = ( \reg_file|reg2|OUT\(11) & ( \reg_file|reg14|OUT\(11) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\)) # (\reg_file|reg10|OUT\(11)))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\) # (\reg_file|reg6|OUT\(11))))) ) ) ) 
-- # ( !\reg_file|reg2|OUT\(11) & ( \reg_file|reg14|OUT\(11) & ( (!\A_SEL[2]~input_o\ & (\reg_file|reg10|OUT\(11) & ((\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\) # (\reg_file|reg6|OUT\(11))))) ) ) ) # ( \reg_file|reg2|OUT\(11) & ( 
-- !\reg_file|reg14|OUT\(11) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\)) # (\reg_file|reg10|OUT\(11)))) # (\A_SEL[2]~input_o\ & (((\reg_file|reg6|OUT\(11) & !\A_SEL[3]~input_o\)))) ) ) ) # ( !\reg_file|reg2|OUT\(11) & ( !\reg_file|reg14|OUT\(11) & ( 
-- (!\A_SEL[2]~input_o\ & (\reg_file|reg10|OUT\(11) & ((\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (((\reg_file|reg6|OUT\(11) & !\A_SEL[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg10|ALT_INV_OUT\(11),
	datab => \reg_file|reg6|ALT_INV_OUT\(11),
	datac => \ALT_INV_A_SEL[2]~input_o\,
	datad => \ALT_INV_A_SEL[3]~input_o\,
	datae => \reg_file|reg2|ALT_INV_OUT\(11),
	dataf => \reg_file|reg14|ALT_INV_OUT\(11),
	combout => \reg_file|A_mul|Mux4~2_combout\);

-- Location: FF_X32_Y3_N28
\reg_file|reg12|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(11));

-- Location: FF_X32_Y5_N44
\reg_file|reg8|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(11));

-- Location: FF_X33_Y6_N56
\reg_file|reg4|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(11));

-- Location: FF_X32_Y1_N14
\reg_file|reg0|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(11));

-- Location: LABCELL_X35_Y3_N42
\reg_file|A_mul|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux4~0_combout\ = ( \reg_file|reg4|OUT\(11) & ( \reg_file|reg0|OUT\(11) & ( (!\A_SEL[3]~input_o\) # ((!\A_SEL[2]~input_o\ & ((\reg_file|reg8|OUT\(11)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg12|OUT\(11)))) ) ) ) # ( 
-- !\reg_file|reg4|OUT\(11) & ( \reg_file|reg0|OUT\(11) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\) # (\reg_file|reg8|OUT\(11))))) # (\A_SEL[2]~input_o\ & (\reg_file|reg12|OUT\(11) & (\A_SEL[3]~input_o\))) ) ) ) # ( \reg_file|reg4|OUT\(11) & ( 
-- !\reg_file|reg0|OUT\(11) & ( (!\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\ & \reg_file|reg8|OUT\(11))))) # (\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\)) # (\reg_file|reg12|OUT\(11)))) ) ) ) # ( !\reg_file|reg4|OUT\(11) & ( !\reg_file|reg0|OUT\(11) & ( 
-- (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|reg8|OUT\(11)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg12|OUT\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|reg12|ALT_INV_OUT\(11),
	datac => \ALT_INV_A_SEL[3]~input_o\,
	datad => \reg_file|reg8|ALT_INV_OUT\(11),
	datae => \reg_file|reg4|ALT_INV_OUT\(11),
	dataf => \reg_file|reg0|ALT_INV_OUT\(11),
	combout => \reg_file|A_mul|Mux4~0_combout\);

-- Location: FF_X33_Y3_N8
\reg_file|reg15|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(11));

-- Location: FF_X30_Y2_N38
\reg_file|reg7|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(11));

-- Location: FF_X32_Y1_N29
\reg_file|reg3|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(11));

-- Location: LABCELL_X30_Y2_N6
\reg_file|A_mul|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux4~3_combout\ = ( \reg_file|reg3|OUT\(11) & ( \reg_file|reg11|OUT\(11) & ( (!\A_SEL[2]~input_o\) # ((!\A_SEL[3]~input_o\ & ((\reg_file|reg7|OUT\(11)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg15|OUT\(11)))) ) ) ) # ( 
-- !\reg_file|reg3|OUT\(11) & ( \reg_file|reg11|OUT\(11) & ( (!\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & ((\reg_file|reg7|OUT\(11)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg15|OUT\(11))))) ) ) ) # ( 
-- \reg_file|reg3|OUT\(11) & ( !\reg_file|reg11|OUT\(11) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & ((\reg_file|reg7|OUT\(11)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg15|OUT\(11))))) ) ) ) # ( 
-- !\reg_file|reg3|OUT\(11) & ( !\reg_file|reg11|OUT\(11) & ( (\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & ((\reg_file|reg7|OUT\(11)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg15|OUT\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|reg15|ALT_INV_OUT\(11),
	datac => \reg_file|reg7|ALT_INV_OUT\(11),
	datad => \ALT_INV_A_SEL[3]~input_o\,
	datae => \reg_file|reg3|ALT_INV_OUT\(11),
	dataf => \reg_file|reg11|ALT_INV_OUT\(11),
	combout => \reg_file|A_mul|Mux4~3_combout\);

-- Location: MLABCELL_X32_Y1_N30
\reg_file|reg1|OUT[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg1|OUT[11]~feeder_combout\ = ( \m1|OUT[11]~49_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[11]~49_combout\,
	combout => \reg_file|reg1|OUT[11]~feeder_combout\);

-- Location: FF_X32_Y1_N32
\reg_file|reg1|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg1|OUT[11]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(11));

-- Location: FF_X33_Y2_N46
\reg_file|reg9|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(11));

-- Location: LABCELL_X35_Y3_N24
\reg_file|reg13|OUT[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg13|OUT[11]~feeder_combout\ = ( \m1|OUT[11]~49_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[11]~49_combout\,
	combout => \reg_file|reg13|OUT[11]~feeder_combout\);

-- Location: FF_X35_Y3_N26
\reg_file|reg13|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg13|OUT[11]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(11));

-- Location: FF_X33_Y5_N20
\reg_file|reg5|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(11));

-- Location: MLABCELL_X32_Y1_N15
\reg_file|A_mul|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux4~1_combout\ = ( \reg_file|reg13|OUT\(11) & ( \reg_file|reg5|OUT\(11) & ( ((!\A_SEL[3]~input_o\ & (\reg_file|reg1|OUT\(11))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg9|OUT\(11))))) # (\A_SEL[2]~input_o\) ) ) ) # ( 
-- !\reg_file|reg13|OUT\(11) & ( \reg_file|reg5|OUT\(11) & ( (!\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & (\reg_file|reg1|OUT\(11))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg9|OUT\(11)))))) # (\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\)))) ) ) ) # ( 
-- \reg_file|reg13|OUT\(11) & ( !\reg_file|reg5|OUT\(11) & ( (!\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & (\reg_file|reg1|OUT\(11))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg9|OUT\(11)))))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)))) ) ) ) # ( 
-- !\reg_file|reg13|OUT\(11) & ( !\reg_file|reg5|OUT\(11) & ( (!\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & (\reg_file|reg1|OUT\(11))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg9|OUT\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|reg1|ALT_INV_OUT\(11),
	datac => \reg_file|reg9|ALT_INV_OUT\(11),
	datad => \ALT_INV_A_SEL[3]~input_o\,
	datae => \reg_file|reg13|ALT_INV_OUT\(11),
	dataf => \reg_file|reg5|ALT_INV_OUT\(11),
	combout => \reg_file|A_mul|Mux4~1_combout\);

-- Location: LABCELL_X30_Y3_N51
\reg_file|A_mul|Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux4~4_combout\ = ( \reg_file|A_mul|Mux4~3_combout\ & ( \reg_file|A_mul|Mux4~1_combout\ & ( ((!\A_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux4~0_combout\))) # (\A_SEL[1]~input_o\ & (\reg_file|A_mul|Mux4~2_combout\))) # (\A_SEL[0]~input_o\) ) ) 
-- ) # ( !\reg_file|A_mul|Mux4~3_combout\ & ( \reg_file|A_mul|Mux4~1_combout\ & ( (!\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux4~0_combout\))) # (\A_SEL[1]~input_o\ & (\reg_file|A_mul|Mux4~2_combout\)))) # (\A_SEL[0]~input_o\ & 
-- (((!\A_SEL[1]~input_o\)))) ) ) ) # ( \reg_file|A_mul|Mux4~3_combout\ & ( !\reg_file|A_mul|Mux4~1_combout\ & ( (!\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux4~0_combout\))) # (\A_SEL[1]~input_o\ & (\reg_file|A_mul|Mux4~2_combout\)))) 
-- # (\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|A_mul|Mux4~3_combout\ & ( !\reg_file|A_mul|Mux4~1_combout\ & ( (!\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux4~0_combout\))) # (\A_SEL[1]~input_o\ & 
-- (\reg_file|A_mul|Mux4~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \reg_file|A_mul|ALT_INV_Mux4~2_combout\,
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux4~0_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux4~3_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux4~1_combout\,
	combout => \reg_file|A_mul|Mux4~4_combout\);

-- Location: LABCELL_X31_Y4_N30
\func_unit|_alu|au|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~41_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux5~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[10]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~38\ ))
-- \func_unit|_alu|au|Add0~42\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux5~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[10]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux5~4_combout\,
	dataf => \ALT_INV_CONST_IN[10]~input_o\,
	cin => \func_unit|_alu|au|Add0~38\,
	sumout => \func_unit|_alu|au|Add0~41_sumout\,
	cout => \func_unit|_alu|au|Add0~42\);

-- Location: LABCELL_X31_Y4_N33
\func_unit|_alu|au|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~45_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux4~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[11]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~42\ ))
-- \func_unit|_alu|au|Add0~46\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux4~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[11]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux4~4_combout\,
	dataf => \ALT_INV_CONST_IN[11]~input_o\,
	cin => \func_unit|_alu|au|Add0~42\,
	sumout => \func_unit|_alu|au|Add0~45_sumout\,
	cout => \func_unit|_alu|au|Add0~46\);

-- Location: LABCELL_X30_Y4_N51
\func_unit|_alu|au|s|s11|SH1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s11|SH1~2_combout\ = ( \func_unit|_alu|au|Add0~45_sumout\ & ( \reg_file|A_mul|Mux4~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|A_mul|ALT_INV_Mux4~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~45_sumout\,
	combout => \func_unit|_alu|au|s|s11|SH1~2_combout\);

-- Location: FF_X33_Y1_N8
\reg_file|reg4|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(12));

-- Location: LABCELL_X30_Y1_N18
\reg_file|reg7|OUT[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg7|OUT[12]~feeder_combout\ = ( \m1|OUT[12]~36_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[12]~36_combout\,
	combout => \reg_file|reg7|OUT[12]~feeder_combout\);

-- Location: FF_X30_Y1_N20
\reg_file|reg7|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg7|OUT[12]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(12));

-- Location: FF_X31_Y1_N8
\reg_file|reg5|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(12));

-- Location: FF_X30_Y2_N53
\reg_file|reg6|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(12));

-- Location: LABCELL_X33_Y1_N39
\reg_file|A_mul|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux3~1_combout\ = ( \reg_file|reg5|OUT\(12) & ( \reg_file|reg6|OUT\(12) & ( (!\A_SEL[0]~input_o\ & (((\reg_file|reg4|OUT\(12))) # (\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\) # ((\reg_file|reg7|OUT\(12))))) ) ) ) # 
-- ( !\reg_file|reg5|OUT\(12) & ( \reg_file|reg6|OUT\(12) & ( (!\A_SEL[0]~input_o\ & (((\reg_file|reg4|OUT\(12))) # (\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & (\A_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(12))))) ) ) ) # ( \reg_file|reg5|OUT\(12) & ( 
-- !\reg_file|reg6|OUT\(12) & ( (!\A_SEL[0]~input_o\ & (!\A_SEL[1]~input_o\ & (\reg_file|reg4|OUT\(12)))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\) # ((\reg_file|reg7|OUT\(12))))) ) ) ) # ( !\reg_file|reg5|OUT\(12) & ( !\reg_file|reg6|OUT\(12) & ( 
-- (!\A_SEL[0]~input_o\ & (!\A_SEL[1]~input_o\ & (\reg_file|reg4|OUT\(12)))) # (\A_SEL[0]~input_o\ & (\A_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \ALT_INV_A_SEL[1]~input_o\,
	datac => \reg_file|reg4|ALT_INV_OUT\(12),
	datad => \reg_file|reg7|ALT_INV_OUT\(12),
	datae => \reg_file|reg5|ALT_INV_OUT\(12),
	dataf => \reg_file|reg6|ALT_INV_OUT\(12),
	combout => \reg_file|A_mul|Mux3~1_combout\);

-- Location: FF_X32_Y6_N32
\reg_file|reg8|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(12));

-- Location: FF_X32_Y6_N23
\reg_file|reg9|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(12));

-- Location: FF_X32_Y6_N14
\reg_file|reg11|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(12));

-- Location: FF_X33_Y4_N26
\reg_file|reg10|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(12));

-- Location: LABCELL_X33_Y4_N39
\reg_file|A_mul|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux3~2_combout\ = ( \reg_file|reg11|OUT\(12) & ( \reg_file|reg10|OUT\(12) & ( ((!\A_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(12))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg9|OUT\(12))))) # (\A_SEL[1]~input_o\) ) ) ) # ( 
-- !\reg_file|reg11|OUT\(12) & ( \reg_file|reg10|OUT\(12) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(12))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg9|OUT\(12)))))) # (\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)))) ) ) ) # ( 
-- \reg_file|reg11|OUT\(12) & ( !\reg_file|reg10|OUT\(12) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(12))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg9|OUT\(12)))))) # (\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\)))) ) ) ) # ( 
-- !\reg_file|reg11|OUT\(12) & ( !\reg_file|reg10|OUT\(12) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(12))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg9|OUT\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \reg_file|reg8|ALT_INV_OUT\(12),
	datac => \reg_file|reg9|ALT_INV_OUT\(12),
	datad => \ALT_INV_A_SEL[0]~input_o\,
	datae => \reg_file|reg11|ALT_INV_OUT\(12),
	dataf => \reg_file|reg10|ALT_INV_OUT\(12),
	combout => \reg_file|A_mul|Mux3~2_combout\);

-- Location: FF_X31_Y1_N20
\reg_file|reg2|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(12));

-- Location: FF_X32_Y7_N17
\reg_file|reg0|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(12));

-- Location: FF_X32_Y7_N59
\reg_file|reg3|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(12));

-- Location: FF_X32_Y1_N2
\reg_file|reg1|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(12));

-- Location: MLABCELL_X32_Y7_N3
\reg_file|A_mul|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux3~0_combout\ = ( \reg_file|reg3|OUT\(12) & ( \reg_file|reg1|OUT\(12) & ( ((!\A_SEL[1]~input_o\ & ((\reg_file|reg0|OUT\(12)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg2|OUT\(12)))) # (\A_SEL[0]~input_o\) ) ) ) # ( !\reg_file|reg3|OUT\(12) 
-- & ( \reg_file|reg1|OUT\(12) & ( (!\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\) # (\reg_file|reg0|OUT\(12))))) # (\A_SEL[1]~input_o\ & (\reg_file|reg2|OUT\(12) & ((!\A_SEL[0]~input_o\)))) ) ) ) # ( \reg_file|reg3|OUT\(12) & ( !\reg_file|reg1|OUT\(12) & ( 
-- (!\A_SEL[1]~input_o\ & (((\reg_file|reg0|OUT\(12) & !\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\)) # (\reg_file|reg2|OUT\(12)))) ) ) ) # ( !\reg_file|reg3|OUT\(12) & ( !\reg_file|reg1|OUT\(12) & ( (!\A_SEL[0]~input_o\ & 
-- ((!\A_SEL[1]~input_o\ & ((\reg_file|reg0|OUT\(12)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg2|OUT\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \reg_file|reg2|ALT_INV_OUT\(12),
	datac => \reg_file|reg0|ALT_INV_OUT\(12),
	datad => \ALT_INV_A_SEL[0]~input_o\,
	datae => \reg_file|reg3|ALT_INV_OUT\(12),
	dataf => \reg_file|reg1|ALT_INV_OUT\(12),
	combout => \reg_file|A_mul|Mux3~0_combout\);

-- Location: FF_X30_Y3_N35
\reg_file|reg13|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(12));

-- Location: FF_X33_Y4_N50
\reg_file|reg15|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(12));

-- Location: FF_X33_Y4_N32
\reg_file|reg14|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(12));

-- Location: LABCELL_X35_Y3_N21
\reg_file|A_mul|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux3~3_combout\ = ( \reg_file|reg12|OUT\(12) & ( \reg_file|reg14|OUT\(12) & ( (!\A_SEL[0]~input_o\) # ((!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(12))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg15|OUT\(12))))) ) ) ) # ( 
-- !\reg_file|reg12|OUT\(12) & ( \reg_file|reg14|OUT\(12) & ( (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(12))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg15|OUT\(12)))))) ) ) ) # ( 
-- \reg_file|reg12|OUT\(12) & ( !\reg_file|reg14|OUT\(12) & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\)))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(12))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg15|OUT\(12)))))) ) ) ) # ( 
-- !\reg_file|reg12|OUT\(12) & ( !\reg_file|reg14|OUT\(12) & ( (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(12))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg15|OUT\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg13|ALT_INV_OUT\(12),
	datab => \reg_file|reg15|ALT_INV_OUT\(12),
	datac => \ALT_INV_A_SEL[0]~input_o\,
	datad => \ALT_INV_A_SEL[1]~input_o\,
	datae => \reg_file|reg12|ALT_INV_OUT\(12),
	dataf => \reg_file|reg14|ALT_INV_OUT\(12),
	combout => \reg_file|A_mul|Mux3~3_combout\);

-- Location: LABCELL_X36_Y4_N42
\reg_file|A_mul|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux3~4_combout\ = ( \reg_file|A_mul|Mux3~0_combout\ & ( \reg_file|A_mul|Mux3~3_combout\ & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\) # (\reg_file|A_mul|Mux3~2_combout\)))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # 
-- (\reg_file|A_mul|Mux3~1_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux3~0_combout\ & ( \reg_file|A_mul|Mux3~3_combout\ & ( (!\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\ & \reg_file|A_mul|Mux3~2_combout\)))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # 
-- (\reg_file|A_mul|Mux3~1_combout\))) ) ) ) # ( \reg_file|A_mul|Mux3~0_combout\ & ( !\reg_file|A_mul|Mux3~3_combout\ & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\) # (\reg_file|A_mul|Mux3~2_combout\)))) # (\A_SEL[2]~input_o\ & 
-- (\reg_file|A_mul|Mux3~1_combout\ & (!\A_SEL[3]~input_o\))) ) ) ) # ( !\reg_file|A_mul|Mux3~0_combout\ & ( !\reg_file|A_mul|Mux3~3_combout\ & ( (!\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\ & \reg_file|A_mul|Mux3~2_combout\)))) # (\A_SEL[2]~input_o\ & 
-- (\reg_file|A_mul|Mux3~1_combout\ & (!\A_SEL[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux3~1_combout\,
	datab => \ALT_INV_A_SEL[2]~input_o\,
	datac => \ALT_INV_A_SEL[3]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux3~2_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux3~0_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux3~3_combout\,
	combout => \reg_file|A_mul|Mux3~4_combout\);

-- Location: LABCELL_X31_Y3_N24
\m1|OUT[12]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[12]~32_combout\ = ( !\OP_SEL[3]~input_o\ & ( (!\DATA_SEL~input_o\ & !\m1|OUT[13]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_SEL~input_o\,
	datac => \m1|ALT_INV_OUT[13]~5_combout\,
	dataf => \ALT_INV_OP_SEL[3]~input_o\,
	combout => \m1|OUT[12]~32_combout\);

-- Location: LABCELL_X31_Y4_N36
\func_unit|_alu|au|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~49_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux3~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[12]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~46\ ))
-- \func_unit|_alu|au|Add0~50\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux3~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[12]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux3~4_combout\,
	dataf => \ALT_INV_CONST_IN[12]~input_o\,
	cin => \func_unit|_alu|au|Add0~46\,
	sumout => \func_unit|_alu|au|Add0~49_sumout\,
	cout => \func_unit|_alu|au|Add0~50\);

-- Location: LABCELL_X36_Y4_N21
\m1|OUT[12]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[12]~33_combout\ = ( \CONST_IN[12]~input_o\ & ( \reg_file|B_mul|Mux3~4_combout\ & ( (!\OP_SEL[1]~input_o\ & ((\OP_SEL[0]~input_o\) # (\reg_file|A_mul|Mux3~4_combout\))) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux3~4_combout\)) ) ) ) # ( 
-- !\CONST_IN[12]~input_o\ & ( \reg_file|B_mul|Mux3~4_combout\ & ( (!\OP_SEL[1]~input_o\ & ((!\CONST_SEL~input_o\ & ((\OP_SEL[0]~input_o\) # (\reg_file|A_mul|Mux3~4_combout\))) # (\CONST_SEL~input_o\ & (\reg_file|A_mul|Mux3~4_combout\ & 
-- \OP_SEL[0]~input_o\)))) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux3~4_combout\ $ (((\CONST_SEL~input_o\ & !\OP_SEL[0]~input_o\))))) ) ) ) # ( \CONST_IN[12]~input_o\ & ( !\reg_file|B_mul|Mux3~4_combout\ & ( (!\OP_SEL[1]~input_o\ & 
-- ((!\CONST_SEL~input_o\ & (\reg_file|A_mul|Mux3~4_combout\ & \OP_SEL[0]~input_o\)) # (\CONST_SEL~input_o\ & ((\OP_SEL[0]~input_o\) # (\reg_file|A_mul|Mux3~4_combout\))))) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux3~4_combout\ $ (((!\CONST_SEL~input_o\ 
-- & !\OP_SEL[0]~input_o\))))) ) ) ) # ( !\CONST_IN[12]~input_o\ & ( !\reg_file|B_mul|Mux3~4_combout\ & ( (!\OP_SEL[1]~input_o\ & (\reg_file|A_mul|Mux3~4_combout\ & \OP_SEL[0]~input_o\)) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux3~4_combout\ $ 
-- (!\OP_SEL[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111100000101100111110000101001101111000011110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[1]~input_o\,
	datac => \reg_file|A_mul|ALT_INV_Mux3~4_combout\,
	datad => \ALT_INV_OP_SEL[0]~input_o\,
	datae => \ALT_INV_CONST_IN[12]~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux3~4_combout\,
	combout => \m1|OUT[12]~33_combout\);

-- Location: IOIBUF_X4_Y61_N52
\DATA_IN[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(12),
	o => \DATA_IN[12]~input_o\);

-- Location: IOIBUF_X59_Y0_N1
\CONST_IN[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(13),
	o => \CONST_IN[13]~input_o\);

-- Location: LABCELL_X28_Y5_N54
\reg_file|reg13|OUT[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg13|OUT[13]~feeder_combout\ = ( \m1|OUT[13]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[13]~40_combout\,
	combout => \reg_file|reg13|OUT[13]~feeder_combout\);

-- Location: FF_X28_Y5_N56
\reg_file|reg13|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg13|OUT[13]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(13));

-- Location: LABCELL_X33_Y2_N30
\reg_file|reg9|OUT[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg9|OUT[13]~feeder_combout\ = ( \m1|OUT[13]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[13]~40_combout\,
	combout => \reg_file|reg9|OUT[13]~feeder_combout\);

-- Location: FF_X33_Y2_N31
\reg_file|reg9|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg9|OUT[13]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(13));

-- Location: FF_X33_Y2_N59
\reg_file|reg1|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(13));

-- Location: FF_X33_Y2_N50
\reg_file|reg5|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(13));

-- Location: LABCELL_X33_Y2_N57
\reg_file|A_mul|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux2~1_combout\ = ( \reg_file|reg1|OUT\(13) & ( \reg_file|reg5|OUT\(13) & ( (!\A_SEL[3]~input_o\) # ((!\A_SEL[2]~input_o\ & ((\reg_file|reg9|OUT\(13)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg13|OUT\(13)))) ) ) ) # ( 
-- !\reg_file|reg1|OUT\(13) & ( \reg_file|reg5|OUT\(13) & ( (!\A_SEL[2]~input_o\ & (\A_SEL[3]~input_o\ & ((\reg_file|reg9|OUT\(13))))) # (\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\) # ((\reg_file|reg13|OUT\(13))))) ) ) ) # ( \reg_file|reg1|OUT\(13) & ( 
-- !\reg_file|reg5|OUT\(13) & ( (!\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\) # ((\reg_file|reg9|OUT\(13))))) # (\A_SEL[2]~input_o\ & (\A_SEL[3]~input_o\ & (\reg_file|reg13|OUT\(13)))) ) ) ) # ( !\reg_file|reg1|OUT\(13) & ( !\reg_file|reg5|OUT\(13) & ( 
-- (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|reg9|OUT\(13)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg13|OUT\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \reg_file|reg13|ALT_INV_OUT\(13),
	datad => \reg_file|reg9|ALT_INV_OUT\(13),
	datae => \reg_file|reg1|ALT_INV_OUT\(13),
	dataf => \reg_file|reg5|ALT_INV_OUT\(13),
	combout => \reg_file|A_mul|Mux2~1_combout\);

-- Location: FF_X32_Y2_N50
\reg_file|reg3|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(13));

-- Location: FF_X33_Y4_N38
\reg_file|reg15|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(13));

-- Location: FF_X32_Y2_N32
\reg_file|reg11|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(13));

-- Location: FF_X32_Y2_N38
\reg_file|reg7|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(13));

-- Location: MLABCELL_X32_Y2_N12
\reg_file|A_mul|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux2~3_combout\ = ( \reg_file|reg7|OUT\(13) & ( \A_SEL[2]~input_o\ & ( (!\A_SEL[3]~input_o\) # (\reg_file|reg15|OUT\(13)) ) ) ) # ( !\reg_file|reg7|OUT\(13) & ( \A_SEL[2]~input_o\ & ( (\A_SEL[3]~input_o\ & \reg_file|reg15|OUT\(13)) ) ) ) # 
-- ( \reg_file|reg7|OUT\(13) & ( !\A_SEL[2]~input_o\ & ( (!\A_SEL[3]~input_o\ & (\reg_file|reg3|OUT\(13))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg11|OUT\(13)))) ) ) ) # ( !\reg_file|reg7|OUT\(13) & ( !\A_SEL[2]~input_o\ & ( (!\A_SEL[3]~input_o\ & 
-- (\reg_file|reg3|OUT\(13))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg11|OUT\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg3|ALT_INV_OUT\(13),
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \reg_file|reg15|ALT_INV_OUT\(13),
	datad => \reg_file|reg11|ALT_INV_OUT\(13),
	datae => \reg_file|reg7|ALT_INV_OUT\(13),
	dataf => \ALT_INV_A_SEL[2]~input_o\,
	combout => \reg_file|A_mul|Mux2~3_combout\);

-- Location: FF_X33_Y4_N44
\reg_file|reg10|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(13));

-- Location: FF_X32_Y4_N10
\reg_file|reg6|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(13));

-- Location: LABCELL_X35_Y3_N12
\reg_file|reg2|OUT[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg2|OUT[13]~feeder_combout\ = ( \m1|OUT[13]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[13]~40_combout\,
	combout => \reg_file|reg2|OUT[13]~feeder_combout\);

-- Location: FF_X35_Y3_N13
\reg_file|reg2|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg2|OUT[13]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(13));

-- Location: LABCELL_X33_Y4_N27
\reg_file|A_mul|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux2~2_combout\ = ( \A_SEL[3]~input_o\ & ( \reg_file|reg2|OUT\(13) & ( (!\A_SEL[2]~input_o\ & (\reg_file|reg10|OUT\(13))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg14|OUT\(13)))) ) ) ) # ( !\A_SEL[3]~input_o\ & ( \reg_file|reg2|OUT\(13) & ( 
-- (!\A_SEL[2]~input_o\) # (\reg_file|reg6|OUT\(13)) ) ) ) # ( \A_SEL[3]~input_o\ & ( !\reg_file|reg2|OUT\(13) & ( (!\A_SEL[2]~input_o\ & (\reg_file|reg10|OUT\(13))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg14|OUT\(13)))) ) ) ) # ( !\A_SEL[3]~input_o\ & ( 
-- !\reg_file|reg2|OUT\(13) & ( (\A_SEL[2]~input_o\ & \reg_file|reg6|OUT\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|reg10|ALT_INV_OUT\(13),
	datac => \reg_file|reg14|ALT_INV_OUT\(13),
	datad => \reg_file|reg6|ALT_INV_OUT\(13),
	datae => \ALT_INV_A_SEL[3]~input_o\,
	dataf => \reg_file|reg2|ALT_INV_OUT\(13),
	combout => \reg_file|A_mul|Mux2~2_combout\);

-- Location: FF_X33_Y5_N14
\reg_file|reg0|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(13));

-- Location: MLABCELL_X32_Y3_N24
\reg_file|reg12|OUT[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg12|OUT[13]~feeder_combout\ = ( \m1|OUT[13]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[13]~40_combout\,
	combout => \reg_file|reg12|OUT[13]~feeder_combout\);

-- Location: FF_X32_Y3_N25
\reg_file|reg12|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg12|OUT[13]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(13));

-- Location: FF_X32_Y3_N2
\reg_file|reg4|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(13));

-- Location: MLABCELL_X32_Y6_N6
\reg_file|reg8|OUT[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg8|OUT[13]~feeder_combout\ = ( \m1|OUT[13]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[13]~40_combout\,
	combout => \reg_file|reg8|OUT[13]~feeder_combout\);

-- Location: FF_X32_Y6_N8
\reg_file|reg8|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg8|OUT[13]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(13));

-- Location: LABCELL_X33_Y5_N9
\reg_file|A_mul|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux2~0_combout\ = ( \reg_file|reg4|OUT\(13) & ( \reg_file|reg8|OUT\(13) & ( (!\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\)) # (\reg_file|reg0|OUT\(13)))) # (\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\) # (\reg_file|reg12|OUT\(13))))) ) ) ) 
-- # ( !\reg_file|reg4|OUT\(13) & ( \reg_file|reg8|OUT\(13) & ( (!\A_SEL[3]~input_o\ & (\reg_file|reg0|OUT\(13) & (!\A_SEL[2]~input_o\))) # (\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\) # (\reg_file|reg12|OUT\(13))))) ) ) ) # ( \reg_file|reg4|OUT\(13) & ( 
-- !\reg_file|reg8|OUT\(13) & ( (!\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\)) # (\reg_file|reg0|OUT\(13)))) # (\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\ & \reg_file|reg12|OUT\(13))))) ) ) ) # ( !\reg_file|reg4|OUT\(13) & ( !\reg_file|reg8|OUT\(13) & ( 
-- (!\A_SEL[3]~input_o\ & (\reg_file|reg0|OUT\(13) & (!\A_SEL[2]~input_o\))) # (\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\ & \reg_file|reg12|OUT\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[3]~input_o\,
	datab => \reg_file|reg0|ALT_INV_OUT\(13),
	datac => \ALT_INV_A_SEL[2]~input_o\,
	datad => \reg_file|reg12|ALT_INV_OUT\(13),
	datae => \reg_file|reg4|ALT_INV_OUT\(13),
	dataf => \reg_file|reg8|ALT_INV_OUT\(13),
	combout => \reg_file|A_mul|Mux2~0_combout\);

-- Location: LABCELL_X33_Y4_N54
\reg_file|A_mul|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux2~4_combout\ = ( \reg_file|A_mul|Mux2~2_combout\ & ( \reg_file|A_mul|Mux2~0_combout\ & ( (!\A_SEL[0]~input_o\) # ((!\A_SEL[1]~input_o\ & (\reg_file|A_mul|Mux2~1_combout\)) # (\A_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux2~3_combout\)))) ) 
-- ) ) # ( !\reg_file|A_mul|Mux2~2_combout\ & ( \reg_file|A_mul|Mux2~0_combout\ & ( (!\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)) # (\reg_file|A_mul|Mux2~1_combout\))) # (\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\ & \reg_file|A_mul|Mux2~3_combout\)))) ) ) 
-- ) # ( \reg_file|A_mul|Mux2~2_combout\ & ( !\reg_file|A_mul|Mux2~0_combout\ & ( (!\A_SEL[1]~input_o\ & (\reg_file|A_mul|Mux2~1_combout\ & (\A_SEL[0]~input_o\))) # (\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\) # (\reg_file|A_mul|Mux2~3_combout\)))) ) ) ) # 
-- ( !\reg_file|A_mul|Mux2~2_combout\ & ( !\reg_file|A_mul|Mux2~0_combout\ & ( (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|A_mul|Mux2~1_combout\)) # (\A_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux2~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \reg_file|A_mul|ALT_INV_Mux2~1_combout\,
	datac => \ALT_INV_A_SEL[0]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux2~3_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux2~2_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux2~0_combout\,
	combout => \reg_file|A_mul|Mux2~4_combout\);

-- Location: LABCELL_X31_Y4_N39
\func_unit|_alu|au|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~53_sumout\ = SUM(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux2~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[13]~input_o\))))) ) + ( GND ) + ( \func_unit|_alu|au|Add0~50\ ))
-- \func_unit|_alu|au|Add0~54\ = CARRY(( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux2~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[13]~input_o\))))) ) + ( GND ) + ( \func_unit|_alu|au|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux2~4_combout\,
	datad => \ALT_INV_CONST_IN[13]~input_o\,
	cin => \func_unit|_alu|au|Add0~50\,
	sumout => \func_unit|_alu|au|Add0~53_sumout\,
	cout => \func_unit|_alu|au|Add0~54\);

-- Location: LABCELL_X33_Y4_N6
\func_unit|_alu|au|s|s13|SH1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s13|SH1~0_combout\ = ( \func_unit|_alu|au|Add0~53_sumout\ & ( !\reg_file|A_mul|Mux2~4_combout\ ) ) # ( !\func_unit|_alu|au|Add0~53_sumout\ & ( \reg_file|A_mul|Mux2~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_file|A_mul|ALT_INV_Mux2~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~53_sumout\,
	combout => \func_unit|_alu|au|s|s13|SH1~0_combout\);

-- Location: LABCELL_X28_Y4_N54
\m1|OUT[13]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[13]~37_combout\ = ( \reg_file|B_mul|Mux2~4_combout\ & ( \reg_file|A_mul|Mux2~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & (!\CONST_IN[13]~input_o\ & \CONST_SEL~input_o\)))) ) ) ) # ( !\reg_file|B_mul|Mux2~4_combout\ & ( 
-- \reg_file|A_mul|Mux2~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & ((!\CONST_IN[13]~input_o\) # (!\CONST_SEL~input_o\))))) ) ) ) # ( \reg_file|B_mul|Mux2~4_combout\ & ( !\reg_file|A_mul|Mux2~4_combout\ & ( (!\OP_SEL[0]~input_o\ & 
-- (\OP_SEL[1]~input_o\ & ((!\CONST_SEL~input_o\) # (\CONST_IN[13]~input_o\)))) # (\OP_SEL[0]~input_o\ & (((!\CONST_SEL~input_o\) # (\CONST_IN[13]~input_o\)) # (\OP_SEL[1]~input_o\))) ) ) ) # ( !\reg_file|B_mul|Mux2~4_combout\ & ( 
-- !\reg_file|A_mul|Mux2~4_combout\ & ( (!\OP_SEL[0]~input_o\ & (\OP_SEL[1]~input_o\ & (\CONST_IN[13]~input_o\ & \CONST_SEL~input_o\))) # (\OP_SEL[0]~input_o\ & (((\CONST_IN[13]~input_o\ & \CONST_SEL~input_o\)) # (\OP_SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111011101110001011101100110011011001100110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[0]~input_o\,
	datab => \ALT_INV_OP_SEL[1]~input_o\,
	datac => \ALT_INV_CONST_IN[13]~input_o\,
	datad => \ALT_INV_CONST_SEL~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux2~4_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux2~4_combout\,
	combout => \m1|OUT[13]~37_combout\);

-- Location: IOIBUF_X14_Y0_N1
\CONST_IN[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(14),
	o => \CONST_IN[14]~input_o\);

-- Location: IOIBUF_X44_Y0_N18
\DATA_IN[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(14),
	o => \DATA_IN[14]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\CONST_IN[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONST_IN(15),
	o => \CONST_IN[15]~input_o\);

-- Location: FF_X30_Y3_N50
\reg_file|reg14|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[14]~44_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(14));

-- Location: FF_X30_Y3_N8
\reg_file|reg13|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[14]~44_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(14));

-- Location: LABCELL_X30_Y3_N12
\reg_file|reg12|OUT[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg12|OUT[14]~feeder_combout\ = ( \m1|OUT[14]~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[14]~44_combout\,
	combout => \reg_file|reg12|OUT[14]~feeder_combout\);

-- Location: FF_X30_Y3_N14
\reg_file|reg12|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg12|OUT[14]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(14));

-- Location: FF_X30_Y6_N29
\reg_file|reg15|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[14]~44_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(14));

-- Location: LABCELL_X30_Y3_N3
\reg_file|A_mul|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux1~3_combout\ = ( \reg_file|reg15|OUT\(14) & ( \A_SEL[1]~input_o\ & ( (\A_SEL[0]~input_o\) # (\reg_file|reg14|OUT\(14)) ) ) ) # ( !\reg_file|reg15|OUT\(14) & ( \A_SEL[1]~input_o\ & ( (\reg_file|reg14|OUT\(14) & !\A_SEL[0]~input_o\) ) ) ) 
-- # ( \reg_file|reg15|OUT\(14) & ( !\A_SEL[1]~input_o\ & ( (!\A_SEL[0]~input_o\ & ((\reg_file|reg12|OUT\(14)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(14))) ) ) ) # ( !\reg_file|reg15|OUT\(14) & ( !\A_SEL[1]~input_o\ & ( (!\A_SEL[0]~input_o\ & 
-- ((\reg_file|reg12|OUT\(14)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg14|ALT_INV_OUT\(14),
	datab => \reg_file|reg13|ALT_INV_OUT\(14),
	datac => \reg_file|reg12|ALT_INV_OUT\(14),
	datad => \ALT_INV_A_SEL[0]~input_o\,
	datae => \reg_file|reg15|ALT_INV_OUT\(14),
	dataf => \ALT_INV_A_SEL[1]~input_o\,
	combout => \reg_file|A_mul|Mux1~3_combout\);

-- Location: LABCELL_X28_Y6_N39
\reg_file|reg4|OUT[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg4|OUT[14]~feeder_combout\ = ( \m1|OUT[14]~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[14]~44_combout\,
	combout => \reg_file|reg4|OUT[14]~feeder_combout\);

-- Location: FF_X28_Y6_N41
\reg_file|reg4|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg4|OUT[14]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(14));

-- Location: LABCELL_X28_Y6_N6
\reg_file|reg5|OUT[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg5|OUT[14]~feeder_combout\ = ( \m1|OUT[14]~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[14]~44_combout\,
	combout => \reg_file|reg5|OUT[14]~feeder_combout\);

-- Location: FF_X28_Y6_N8
\reg_file|reg5|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg5|OUT[14]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(14));

-- Location: LABCELL_X33_Y6_N30
\reg_file|reg7|OUT[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg7|OUT[14]~feeder_combout\ = ( \m1|OUT[14]~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[14]~44_combout\,
	combout => \reg_file|reg7|OUT[14]~feeder_combout\);

-- Location: FF_X33_Y6_N32
\reg_file|reg7|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg7|OUT[14]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(14));

-- Location: LABCELL_X28_Y6_N48
\reg_file|A_mul|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux1~1_combout\ = ( \reg_file|reg6|OUT\(14) & ( \reg_file|reg7|OUT\(14) & ( ((!\A_SEL[0]~input_o\ & (\reg_file|reg4|OUT\(14))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg5|OUT\(14))))) # (\A_SEL[1]~input_o\) ) ) ) # ( !\reg_file|reg6|OUT\(14) 
-- & ( \reg_file|reg7|OUT\(14) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg4|OUT\(14))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg5|OUT\(14)))))) # (\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\)))) ) ) ) # ( \reg_file|reg6|OUT\(14) & ( 
-- !\reg_file|reg7|OUT\(14) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg4|OUT\(14))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg5|OUT\(14)))))) # (\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)))) ) ) ) # ( !\reg_file|reg6|OUT\(14) & ( 
-- !\reg_file|reg7|OUT\(14) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg4|OUT\(14))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg5|OUT\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \reg_file|reg4|ALT_INV_OUT\(14),
	datac => \ALT_INV_A_SEL[0]~input_o\,
	datad => \reg_file|reg5|ALT_INV_OUT\(14),
	datae => \reg_file|reg6|ALT_INV_OUT\(14),
	dataf => \reg_file|reg7|ALT_INV_OUT\(14),
	combout => \reg_file|A_mul|Mux1~1_combout\);

-- Location: FF_X33_Y6_N44
\reg_file|reg10|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[14]~44_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(14));

-- Location: MLABCELL_X32_Y6_N27
\reg_file|reg8|OUT[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg8|OUT[14]~feeder_combout\ = ( \m1|OUT[14]~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[14]~44_combout\,
	combout => \reg_file|reg8|OUT[14]~feeder_combout\);

-- Location: FF_X32_Y6_N29
\reg_file|reg8|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg8|OUT[14]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(14));

-- Location: FF_X32_Y6_N44
\reg_file|reg11|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[14]~44_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(14));

-- Location: MLABCELL_X32_Y6_N39
\reg_file|reg9|OUT[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg9|OUT[14]~feeder_combout\ = ( \m1|OUT[14]~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[14]~44_combout\,
	combout => \reg_file|reg9|OUT[14]~feeder_combout\);

-- Location: FF_X32_Y6_N41
\reg_file|reg9|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg9|OUT[14]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(14));

-- Location: LABCELL_X33_Y6_N39
\reg_file|A_mul|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux1~2_combout\ = ( \reg_file|reg11|OUT\(14) & ( \reg_file|reg9|OUT\(14) & ( ((!\A_SEL[1]~input_o\ & ((\reg_file|reg8|OUT\(14)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg10|OUT\(14)))) # (\A_SEL[0]~input_o\) ) ) ) # ( 
-- !\reg_file|reg11|OUT\(14) & ( \reg_file|reg9|OUT\(14) & ( (!\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & ((\reg_file|reg8|OUT\(14)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg10|OUT\(14))))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\)))) ) ) ) # ( 
-- \reg_file|reg11|OUT\(14) & ( !\reg_file|reg9|OUT\(14) & ( (!\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & ((\reg_file|reg8|OUT\(14)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg10|OUT\(14))))) # (\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)))) ) ) ) # ( 
-- !\reg_file|reg11|OUT\(14) & ( !\reg_file|reg9|OUT\(14) & ( (!\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & ((\reg_file|reg8|OUT\(14)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg10|OUT\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \reg_file|reg10|ALT_INV_OUT\(14),
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|reg8|ALT_INV_OUT\(14),
	datae => \reg_file|reg11|ALT_INV_OUT\(14),
	dataf => \reg_file|reg9|ALT_INV_OUT\(14),
	combout => \reg_file|A_mul|Mux1~2_combout\);

-- Location: FF_X30_Y5_N53
\reg_file|reg0|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[14]~44_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(14));

-- Location: FF_X30_Y5_N16
\reg_file|reg3|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[14]~44_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(14));

-- Location: LABCELL_X30_Y1_N42
\reg_file|reg2|OUT[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg2|OUT[14]~feeder_combout\ = ( \m1|OUT[14]~44_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[14]~44_combout\,
	combout => \reg_file|reg2|OUT[14]~feeder_combout\);

-- Location: FF_X30_Y1_N44
\reg_file|reg2|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg2|OUT[14]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(14));

-- Location: FF_X30_Y5_N11
\reg_file|reg1|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[14]~44_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(14));

-- Location: LABCELL_X30_Y5_N48
\reg_file|A_mul|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux1~0_combout\ = ( \reg_file|reg2|OUT\(14) & ( \reg_file|reg1|OUT\(14) & ( (!\A_SEL[0]~input_o\ & (((\reg_file|reg0|OUT\(14))) # (\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\) # ((\reg_file|reg3|OUT\(14))))) ) ) ) # 
-- ( !\reg_file|reg2|OUT\(14) & ( \reg_file|reg1|OUT\(14) & ( (!\A_SEL[0]~input_o\ & (!\A_SEL[1]~input_o\ & (\reg_file|reg0|OUT\(14)))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\) # ((\reg_file|reg3|OUT\(14))))) ) ) ) # ( \reg_file|reg2|OUT\(14) & ( 
-- !\reg_file|reg1|OUT\(14) & ( (!\A_SEL[0]~input_o\ & (((\reg_file|reg0|OUT\(14))) # (\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & (\A_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(14))))) ) ) ) # ( !\reg_file|reg2|OUT\(14) & ( !\reg_file|reg1|OUT\(14) & ( 
-- (!\A_SEL[0]~input_o\ & (!\A_SEL[1]~input_o\ & (\reg_file|reg0|OUT\(14)))) # (\A_SEL[0]~input_o\ & (\A_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \ALT_INV_A_SEL[1]~input_o\,
	datac => \reg_file|reg0|ALT_INV_OUT\(14),
	datad => \reg_file|reg3|ALT_INV_OUT\(14),
	datae => \reg_file|reg2|ALT_INV_OUT\(14),
	dataf => \reg_file|reg1|ALT_INV_OUT\(14),
	combout => \reg_file|A_mul|Mux1~0_combout\);

-- Location: LABCELL_X28_Y4_N24
\reg_file|A_mul|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux1~4_combout\ = ( \reg_file|A_mul|Mux1~2_combout\ & ( \reg_file|A_mul|Mux1~0_combout\ & ( (!\A_SEL[2]~input_o\) # ((!\A_SEL[3]~input_o\ & ((\reg_file|A_mul|Mux1~1_combout\))) # (\A_SEL[3]~input_o\ & (\reg_file|A_mul|Mux1~3_combout\))) ) 
-- ) ) # ( !\reg_file|A_mul|Mux1~2_combout\ & ( \reg_file|A_mul|Mux1~0_combout\ & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\) # (\reg_file|A_mul|Mux1~1_combout\)))) # (\A_SEL[3]~input_o\ & (\reg_file|A_mul|Mux1~3_combout\ & ((\A_SEL[2]~input_o\)))) ) ) 
-- ) # ( \reg_file|A_mul|Mux1~2_combout\ & ( !\reg_file|A_mul|Mux1~0_combout\ & ( (!\A_SEL[3]~input_o\ & (((\reg_file|A_mul|Mux1~1_combout\ & \A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)) # (\reg_file|A_mul|Mux1~3_combout\))) ) ) ) 
-- # ( !\reg_file|A_mul|Mux1~2_combout\ & ( !\reg_file|A_mul|Mux1~0_combout\ & ( (\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & ((\reg_file|A_mul|Mux1~1_combout\))) # (\A_SEL[3]~input_o\ & (\reg_file|A_mul|Mux1~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[3]~input_o\,
	datab => \reg_file|A_mul|ALT_INV_Mux1~3_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_A_SEL[2]~input_o\,
	datae => \reg_file|A_mul|ALT_INV_Mux1~2_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux1~0_combout\,
	combout => \reg_file|A_mul|Mux1~4_combout\);

-- Location: IOIBUF_X12_Y0_N1
\DATA_IN[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(15),
	o => \DATA_IN[15]~input_o\);

-- Location: FF_X31_Y5_N8
\reg_file|reg14|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(15));

-- Location: FF_X31_Y5_N20
\reg_file|reg10|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(15));

-- Location: LABCELL_X30_Y6_N18
\reg_file|reg6|OUT[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg6|OUT[15]~feeder_combout\ = ( \m1|OUT[15]~48_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[15]~48_combout\,
	combout => \reg_file|reg6|OUT[15]~feeder_combout\);

-- Location: FF_X30_Y6_N20
\reg_file|reg6|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg6|OUT[15]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(15));

-- Location: LABCELL_X31_Y5_N24
\reg_file|reg2|OUT[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg2|OUT[15]~feeder_combout\ = ( \m1|OUT[15]~48_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[15]~48_combout\,
	combout => \reg_file|reg2|OUT[15]~feeder_combout\);

-- Location: FF_X31_Y5_N26
\reg_file|reg2|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg2|OUT[15]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(15));

-- Location: LABCELL_X31_Y5_N36
\reg_file|A_mul|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux0~2_combout\ = ( \reg_file|reg6|OUT\(15) & ( \reg_file|reg2|OUT\(15) & ( (!\A_SEL[3]~input_o\) # ((!\A_SEL[2]~input_o\ & ((\reg_file|reg10|OUT\(15)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(15)))) ) ) ) # ( 
-- !\reg_file|reg6|OUT\(15) & ( \reg_file|reg2|OUT\(15) & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|reg10|OUT\(15)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(15))))) ) ) ) # ( 
-- \reg_file|reg6|OUT\(15) & ( !\reg_file|reg2|OUT\(15) & ( (!\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|reg10|OUT\(15)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(15))))) ) ) ) # ( 
-- !\reg_file|reg6|OUT\(15) & ( !\reg_file|reg2|OUT\(15) & ( (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|reg10|OUT\(15)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[3]~input_o\,
	datab => \reg_file|reg14|ALT_INV_OUT\(15),
	datac => \reg_file|reg10|ALT_INV_OUT\(15),
	datad => \ALT_INV_A_SEL[2]~input_o\,
	datae => \reg_file|reg6|ALT_INV_OUT\(15),
	dataf => \reg_file|reg2|ALT_INV_OUT\(15),
	combout => \reg_file|A_mul|Mux0~2_combout\);

-- Location: MLABCELL_X32_Y5_N27
\reg_file|reg9|OUT[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg9|OUT[15]~feeder_combout\ = ( \m1|OUT[15]~48_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[15]~48_combout\,
	combout => \reg_file|reg9|OUT[15]~feeder_combout\);

-- Location: FF_X32_Y5_N29
\reg_file|reg9|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg9|OUT[15]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(15));

-- Location: FF_X28_Y4_N32
\reg_file|reg1|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(15));

-- Location: FF_X28_Y4_N37
\reg_file|reg5|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(15));

-- Location: LABCELL_X27_Y4_N39
\reg_file|reg13|OUT[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg13|OUT[15]~feeder_combout\ = ( \m1|OUT[15]~48_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[15]~48_combout\,
	combout => \reg_file|reg13|OUT[15]~feeder_combout\);

-- Location: FF_X27_Y4_N41
\reg_file|reg13|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg13|OUT[15]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(15));

-- Location: LABCELL_X28_Y4_N36
\reg_file|A_mul|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux0~1_combout\ = ( \reg_file|reg5|OUT\(15) & ( \reg_file|reg13|OUT\(15) & ( ((!\A_SEL[3]~input_o\ & ((\reg_file|reg1|OUT\(15)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg9|OUT\(15)))) # (\A_SEL[2]~input_o\) ) ) ) # ( !\reg_file|reg5|OUT\(15) 
-- & ( \reg_file|reg13|OUT\(15) & ( (!\A_SEL[3]~input_o\ & (((\reg_file|reg1|OUT\(15) & !\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\)) # (\reg_file|reg9|OUT\(15)))) ) ) ) # ( \reg_file|reg5|OUT\(15) & ( !\reg_file|reg13|OUT\(15) & ( 
-- (!\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\) # (\reg_file|reg1|OUT\(15))))) # (\A_SEL[3]~input_o\ & (\reg_file|reg9|OUT\(15) & ((!\A_SEL[2]~input_o\)))) ) ) ) # ( !\reg_file|reg5|OUT\(15) & ( !\reg_file|reg13|OUT\(15) & ( (!\A_SEL[2]~input_o\ & 
-- ((!\A_SEL[3]~input_o\ & ((\reg_file|reg1|OUT\(15)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg9|OUT\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg9|ALT_INV_OUT\(15),
	datab => \reg_file|reg1|ALT_INV_OUT\(15),
	datac => \ALT_INV_A_SEL[3]~input_o\,
	datad => \ALT_INV_A_SEL[2]~input_o\,
	datae => \reg_file|reg5|ALT_INV_OUT\(15),
	dataf => \reg_file|reg13|ALT_INV_OUT\(15),
	combout => \reg_file|A_mul|Mux0~1_combout\);

-- Location: FF_X30_Y4_N47
\reg_file|reg3|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(15));

-- Location: FF_X32_Y6_N50
\reg_file|reg11|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(15));

-- Location: FF_X30_Y4_N38
\reg_file|reg15|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(15));

-- Location: LABCELL_X31_Y6_N15
\reg_file|A_mul|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux0~3_combout\ = ( \reg_file|reg11|OUT\(15) & ( \reg_file|reg15|OUT\(15) & ( ((!\A_SEL[2]~input_o\ & ((\reg_file|reg3|OUT\(15)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(15)))) # (\A_SEL[3]~input_o\) ) ) ) # ( 
-- !\reg_file|reg11|OUT\(15) & ( \reg_file|reg15|OUT\(15) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\ & \reg_file|reg3|OUT\(15))))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # (\reg_file|reg7|OUT\(15)))) ) ) ) # ( \reg_file|reg11|OUT\(15) & ( 
-- !\reg_file|reg15|OUT\(15) & ( (!\A_SEL[2]~input_o\ & (((\reg_file|reg3|OUT\(15)) # (\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(15) & (!\A_SEL[3]~input_o\))) ) ) ) # ( !\reg_file|reg11|OUT\(15) & ( !\reg_file|reg15|OUT\(15) & ( 
-- (!\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|reg3|OUT\(15)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|reg7|ALT_INV_OUT\(15),
	datac => \ALT_INV_A_SEL[3]~input_o\,
	datad => \reg_file|reg3|ALT_INV_OUT\(15),
	datae => \reg_file|reg11|ALT_INV_OUT\(15),
	dataf => \reg_file|reg15|ALT_INV_OUT\(15),
	combout => \reg_file|A_mul|Mux0~3_combout\);

-- Location: LABCELL_X36_Y4_N12
\reg_file|reg4|OUT[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg4|OUT[15]~feeder_combout\ = ( \m1|OUT[15]~48_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[15]~48_combout\,
	combout => \reg_file|reg4|OUT[15]~feeder_combout\);

-- Location: FF_X36_Y4_N14
\reg_file|reg4|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg4|OUT[15]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(15));

-- Location: FF_X32_Y6_N56
\reg_file|reg8|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(15));

-- Location: FF_X36_Y4_N11
\reg_file|reg12|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(15));

-- Location: FF_X36_Y4_N20
\reg_file|reg0|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(15));

-- Location: LABCELL_X36_Y4_N48
\reg_file|A_mul|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux0~0_combout\ = ( \A_SEL[2]~input_o\ & ( \reg_file|reg0|OUT\(15) & ( (!\A_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(15))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(15)))) ) ) ) # ( !\A_SEL[2]~input_o\ & ( \reg_file|reg0|OUT\(15) & ( 
-- (!\A_SEL[3]~input_o\) # (\reg_file|reg8|OUT\(15)) ) ) ) # ( \A_SEL[2]~input_o\ & ( !\reg_file|reg0|OUT\(15) & ( (!\A_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(15))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(15)))) ) ) ) # ( !\A_SEL[2]~input_o\ & ( 
-- !\reg_file|reg0|OUT\(15) & ( (\A_SEL[3]~input_o\ & \reg_file|reg8|OUT\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[3]~input_o\,
	datab => \reg_file|reg4|ALT_INV_OUT\(15),
	datac => \reg_file|reg8|ALT_INV_OUT\(15),
	datad => \reg_file|reg12|ALT_INV_OUT\(15),
	datae => \ALT_INV_A_SEL[2]~input_o\,
	dataf => \reg_file|reg0|ALT_INV_OUT\(15),
	combout => \reg_file|A_mul|Mux0~0_combout\);

-- Location: LABCELL_X28_Y4_N33
\reg_file|A_mul|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux0~4_combout\ = ( \reg_file|A_mul|Mux0~3_combout\ & ( \reg_file|A_mul|Mux0~0_combout\ & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\)) # (\reg_file|A_mul|Mux0~2_combout\))) # (\A_SEL[0]~input_o\ & (((\reg_file|A_mul|Mux0~1_combout\) # 
-- (\A_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|A_mul|Mux0~3_combout\ & ( \reg_file|A_mul|Mux0~0_combout\ & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\)) # (\reg_file|A_mul|Mux0~2_combout\))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\ & 
-- \reg_file|A_mul|Mux0~1_combout\)))) ) ) ) # ( \reg_file|A_mul|Mux0~3_combout\ & ( !\reg_file|A_mul|Mux0~0_combout\ & ( (!\A_SEL[0]~input_o\ & (\reg_file|A_mul|Mux0~2_combout\ & (\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & 
-- (((\reg_file|A_mul|Mux0~1_combout\) # (\A_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|A_mul|Mux0~3_combout\ & ( !\reg_file|A_mul|Mux0~0_combout\ & ( (!\A_SEL[0]~input_o\ & (\reg_file|A_mul|Mux0~2_combout\ & (\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & 
-- (((!\A_SEL[1]~input_o\ & \reg_file|A_mul|Mux0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \reg_file|A_mul|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux0~1_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux0~3_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux0~0_combout\,
	combout => \reg_file|A_mul|Mux0~4_combout\);

-- Location: LABCELL_X28_Y4_N0
\func_unit|_alu|lv|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|lv|Mux0~0_combout\ = ( \reg_file|B_mul|Mux0~4_combout\ & ( \reg_file|A_mul|Mux0~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & (\CONST_SEL~input_o\ & !\CONST_IN[15]~input_o\)))) ) ) ) # ( !\reg_file|B_mul|Mux0~4_combout\ & 
-- ( \reg_file|A_mul|Mux0~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & ((!\CONST_SEL~input_o\) # (!\CONST_IN[15]~input_o\))))) ) ) ) # ( \reg_file|B_mul|Mux0~4_combout\ & ( !\reg_file|A_mul|Mux0~4_combout\ & ( (!\OP_SEL[0]~input_o\ & 
-- (\OP_SEL[1]~input_o\ & ((!\CONST_SEL~input_o\) # (\CONST_IN[15]~input_o\)))) # (\OP_SEL[0]~input_o\ & (((!\CONST_SEL~input_o\) # (\CONST_IN[15]~input_o\)) # (\OP_SEL[1]~input_o\))) ) ) ) # ( !\reg_file|B_mul|Mux0~4_combout\ & ( 
-- !\reg_file|A_mul|Mux0~4_combout\ & ( (!\OP_SEL[0]~input_o\ & (\OP_SEL[1]~input_o\ & (\CONST_SEL~input_o\ & \CONST_IN[15]~input_o\))) # (\OP_SEL[0]~input_o\ & (((\CONST_SEL~input_o\ & \CONST_IN[15]~input_o\)) # (\OP_SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111011100010111011101100110011011001100011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[0]~input_o\,
	datab => \ALT_INV_OP_SEL[1]~input_o\,
	datac => \ALT_INV_CONST_SEL~input_o\,
	datad => \ALT_INV_CONST_IN[15]~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux0~4_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux0~4_combout\,
	combout => \func_unit|_alu|lv|Mux0~0_combout\);

-- Location: LABCELL_X28_Y4_N48
\m1|OUT[15]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[15]~46_combout\ = ( \m0|OUT[0]~0_combout\ & ( (!\OP_SEL[0]~input_o\ & (\m0|OUT[14]~14_combout\)) # (\OP_SEL[0]~input_o\ & ((\OP_SEL[1]~input_o\))) ) ) # ( !\m0|OUT[0]~0_combout\ & ( (\m0|OUT[14]~14_combout\ & !\OP_SEL[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m0|ALT_INV_OUT[14]~14_combout\,
	datab => \ALT_INV_OP_SEL[1]~input_o\,
	datac => \ALT_INV_OP_SEL[0]~input_o\,
	dataf => \m0|ALT_INV_OUT[0]~0_combout\,
	combout => \m1|OUT[15]~46_combout\);

-- Location: LABCELL_X28_Y4_N18
\m1|OUT[15]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[15]~47_combout\ = ( \func_unit|_alu|lv|Mux0~0_combout\ & ( \m1|OUT[15]~46_combout\ & ( (!\DATA_SEL~input_o\ & (((\OP_SEL[3]~input_o\)) # (\OP_SEL[2]~input_o\))) # (\DATA_SEL~input_o\ & (((\DATA_IN[15]~input_o\)))) ) ) ) # ( 
-- !\func_unit|_alu|lv|Mux0~0_combout\ & ( \m1|OUT[15]~46_combout\ & ( (!\DATA_SEL~input_o\ & ((\OP_SEL[3]~input_o\))) # (\DATA_SEL~input_o\ & (\DATA_IN[15]~input_o\)) ) ) ) # ( \func_unit|_alu|lv|Mux0~0_combout\ & ( !\m1|OUT[15]~46_combout\ & ( 
-- (!\DATA_SEL~input_o\ & (\OP_SEL[2]~input_o\ & ((!\OP_SEL[3]~input_o\)))) # (\DATA_SEL~input_o\ & (((\DATA_IN[15]~input_o\)))) ) ) ) # ( !\func_unit|_alu|lv|Mux0~0_combout\ & ( !\m1|OUT[15]~46_combout\ & ( (\DATA_SEL~input_o\ & \DATA_IN[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001001110000010100000101101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[2]~input_o\,
	datac => \ALT_INV_DATA_IN[15]~input_o\,
	datad => \ALT_INV_OP_SEL[3]~input_o\,
	datae => \func_unit|_alu|lv|ALT_INV_Mux0~0_combout\,
	dataf => \m1|ALT_INV_OUT[15]~46_combout\,
	combout => \m1|OUT[15]~47_combout\);

-- Location: LABCELL_X35_Y4_N54
\m1|OUT[15]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[15]~45_combout\ = ( !\DATA_SEL~input_o\ & ( !\OP_SEL[3]~input_o\ & ( !\OP_SEL[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OP_SEL[2]~input_o\,
	datae => \ALT_INV_DATA_SEL~input_o\,
	dataf => \ALT_INV_OP_SEL[3]~input_o\,
	combout => \m1|OUT[15]~45_combout\);

-- Location: LABCELL_X31_Y4_N42
\func_unit|_alu|au|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~57_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux1~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[14]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~54\ ))
-- \func_unit|_alu|au|Add0~58\ = CARRY(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux1~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[14]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux1~4_combout\,
	dataf => \ALT_INV_CONST_IN[14]~input_o\,
	cin => \func_unit|_alu|au|Add0~54\,
	sumout => \func_unit|_alu|au|Add0~57_sumout\,
	cout => \func_unit|_alu|au|Add0~58\);

-- Location: LABCELL_X31_Y4_N45
\func_unit|_alu|au|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|Add0~61_sumout\ = SUM(( GND ) + ( !\OP_SEL[0]~input_o\ $ (((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux0~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[15]~input_o\))))) ) + ( \func_unit|_alu|au|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux0~4_combout\,
	dataf => \ALT_INV_CONST_IN[15]~input_o\,
	cin => \func_unit|_alu|au|Add0~58\,
	sumout => \func_unit|_alu|au|Add0~61_sumout\);

-- Location: LABCELL_X30_Y5_N36
\func_unit|_alu|au|s|s15|REG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s15|REG~0_combout\ = ( !\reg_file|A_mul|Mux0~4_combout\ & ( \func_unit|_alu|au|Add0~61_sumout\ ) ) # ( \reg_file|A_mul|Mux0~4_combout\ & ( !\func_unit|_alu|au|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \reg_file|A_mul|ALT_INV_Mux0~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~61_sumout\,
	combout => \func_unit|_alu|au|s|s15|REG~0_combout\);

-- Location: LABCELL_X30_Y4_N48
\func_unit|_alu|au|s|s11|SH1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s11|SH1~0_combout\ = ( \func_unit|_alu|au|Add0~45_sumout\ & ( !\reg_file|A_mul|Mux4~4_combout\ ) ) # ( !\func_unit|_alu|au|Add0~45_sumout\ & ( \reg_file|A_mul|Mux4~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|A_mul|ALT_INV_Mux4~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~45_sumout\,
	combout => \func_unit|_alu|au|s|s11|SH1~0_combout\);

-- Location: LABCELL_X30_Y4_N21
\func_unit|_alu|au|s|s9|SH1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s9|SH1~1_combout\ = ( \func_unit|_alu|au|Add0~37_sumout\ & ( \reg_file|A_mul|Mux6~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_file|A_mul|ALT_INV_Mux6~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~37_sumout\,
	combout => \func_unit|_alu|au|s|s9|SH1~1_combout\);

-- Location: LABCELL_X31_Y2_N42
\reg_file|reg15|OUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg15|OUT[7]~feeder_combout\ = ( \m1|OUT[7]~57_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[7]~57_combout\,
	combout => \reg_file|reg15|OUT[7]~feeder_combout\);

-- Location: FF_X31_Y2_N44
\reg_file|reg15|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg15|OUT[7]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(7));

-- Location: FF_X32_Y2_N26
\reg_file|reg11|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(7));

-- Location: FF_X32_Y2_N2
\reg_file|reg3|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(7));

-- Location: FF_X30_Y2_N44
\reg_file|reg7|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(7));

-- Location: LABCELL_X30_Y2_N39
\reg_file|A_mul|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux8~3_combout\ = ( \reg_file|reg3|OUT\(7) & ( \reg_file|reg7|OUT\(7) & ( (!\A_SEL[3]~input_o\) # ((!\A_SEL[2]~input_o\ & ((\reg_file|reg11|OUT\(7)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg15|OUT\(7)))) ) ) ) # ( !\reg_file|reg3|OUT\(7) & 
-- ( \reg_file|reg7|OUT\(7) & ( (!\A_SEL[2]~input_o\ & (\A_SEL[3]~input_o\ & ((\reg_file|reg11|OUT\(7))))) # (\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\) # ((\reg_file|reg15|OUT\(7))))) ) ) ) # ( \reg_file|reg3|OUT\(7) & ( !\reg_file|reg7|OUT\(7) & ( 
-- (!\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\) # ((\reg_file|reg11|OUT\(7))))) # (\A_SEL[2]~input_o\ & (\A_SEL[3]~input_o\ & (\reg_file|reg15|OUT\(7)))) ) ) ) # ( !\reg_file|reg3|OUT\(7) & ( !\reg_file|reg7|OUT\(7) & ( (\A_SEL[3]~input_o\ & 
-- ((!\A_SEL[2]~input_o\ & ((\reg_file|reg11|OUT\(7)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg15|OUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \reg_file|reg15|ALT_INV_OUT\(7),
	datad => \reg_file|reg11|ALT_INV_OUT\(7),
	datae => \reg_file|reg3|ALT_INV_OUT\(7),
	dataf => \reg_file|reg7|ALT_INV_OUT\(7),
	combout => \reg_file|A_mul|Mux8~3_combout\);

-- Location: FF_X32_Y3_N8
\reg_file|reg12|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(7));

-- Location: FF_X32_Y3_N44
\reg_file|reg4|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(7));

-- Location: FF_X32_Y3_N59
\reg_file|reg0|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(7));

-- Location: FF_X32_Y5_N14
\reg_file|reg8|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(7));

-- Location: MLABCELL_X32_Y3_N15
\reg_file|A_mul|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux8~0_combout\ = ( \reg_file|reg0|OUT\(7) & ( \reg_file|reg8|OUT\(7) & ( (!\A_SEL[2]~input_o\) # ((!\A_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(7)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(7)))) ) ) ) # ( !\reg_file|reg0|OUT\(7) & ( 
-- \reg_file|reg8|OUT\(7) & ( (!\A_SEL[3]~input_o\ & (((\reg_file|reg4|OUT\(7) & \A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)) # (\reg_file|reg12|OUT\(7)))) ) ) ) # ( \reg_file|reg0|OUT\(7) & ( !\reg_file|reg8|OUT\(7) & ( 
-- (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\) # (\reg_file|reg4|OUT\(7))))) # (\A_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(7) & ((\A_SEL[2]~input_o\)))) ) ) ) # ( !\reg_file|reg0|OUT\(7) & ( !\reg_file|reg8|OUT\(7) & ( (\A_SEL[2]~input_o\ & 
-- ((!\A_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(7)))) # (\A_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[3]~input_o\,
	datab => \reg_file|reg12|ALT_INV_OUT\(7),
	datac => \reg_file|reg4|ALT_INV_OUT\(7),
	datad => \ALT_INV_A_SEL[2]~input_o\,
	datae => \reg_file|reg0|ALT_INV_OUT\(7),
	dataf => \reg_file|reg8|ALT_INV_OUT\(7),
	combout => \reg_file|A_mul|Mux8~0_combout\);

-- Location: FF_X30_Y2_N50
\reg_file|reg6|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(7));

-- Location: LABCELL_X31_Y1_N54
\reg_file|reg2|OUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg2|OUT[7]~feeder_combout\ = ( \m1|OUT[7]~57_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[7]~57_combout\,
	combout => \reg_file|reg2|OUT[7]~feeder_combout\);

-- Location: FF_X31_Y1_N55
\reg_file|reg2|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg2|OUT[7]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(7));

-- Location: FF_X30_Y2_N20
\reg_file|reg10|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(7));

-- Location: LABCELL_X30_Y2_N15
\reg_file|A_mul|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux8~2_combout\ = ( \A_SEL[2]~input_o\ & ( \reg_file|reg10|OUT\(7) & ( (!\A_SEL[3]~input_o\ & (\reg_file|reg6|OUT\(7))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg14|OUT\(7)))) ) ) ) # ( !\A_SEL[2]~input_o\ & ( \reg_file|reg10|OUT\(7) & ( 
-- (\reg_file|reg2|OUT\(7)) # (\A_SEL[3]~input_o\) ) ) ) # ( \A_SEL[2]~input_o\ & ( !\reg_file|reg10|OUT\(7) & ( (!\A_SEL[3]~input_o\ & (\reg_file|reg6|OUT\(7))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg14|OUT\(7)))) ) ) ) # ( !\A_SEL[2]~input_o\ & ( 
-- !\reg_file|reg10|OUT\(7) & ( (!\A_SEL[3]~input_o\ & \reg_file|reg2|OUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010001110100011100110011111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg6|ALT_INV_OUT\(7),
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \reg_file|reg14|ALT_INV_OUT\(7),
	datad => \reg_file|reg2|ALT_INV_OUT\(7),
	datae => \ALT_INV_A_SEL[2]~input_o\,
	dataf => \reg_file|reg10|ALT_INV_OUT\(7),
	combout => \reg_file|A_mul|Mux8~2_combout\);

-- Location: LABCELL_X33_Y2_N42
\reg_file|reg9|OUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg9|OUT[7]~feeder_combout\ = ( \m1|OUT[7]~57_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[7]~57_combout\,
	combout => \reg_file|reg9|OUT[7]~feeder_combout\);

-- Location: FF_X33_Y2_N44
\reg_file|reg9|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg9|OUT[7]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(7));

-- Location: FF_X33_Y2_N2
\reg_file|reg5|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(7));

-- Location: FF_X33_Y2_N56
\reg_file|reg1|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(7));

-- Location: FF_X30_Y3_N59
\reg_file|reg13|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(7));

-- Location: LABCELL_X33_Y2_N18
\reg_file|A_mul|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux8~1_combout\ = ( \reg_file|reg1|OUT\(7) & ( \reg_file|reg13|OUT\(7) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\)) # (\reg_file|reg9|OUT\(7)))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\) # (\reg_file|reg5|OUT\(7))))) ) ) ) # ( 
-- !\reg_file|reg1|OUT\(7) & ( \reg_file|reg13|OUT\(7) & ( (!\A_SEL[2]~input_o\ & (\reg_file|reg9|OUT\(7) & ((\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\) # (\reg_file|reg5|OUT\(7))))) ) ) ) # ( \reg_file|reg1|OUT\(7) & ( 
-- !\reg_file|reg13|OUT\(7) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\)) # (\reg_file|reg9|OUT\(7)))) # (\A_SEL[2]~input_o\ & (((\reg_file|reg5|OUT\(7) & !\A_SEL[3]~input_o\)))) ) ) ) # ( !\reg_file|reg1|OUT\(7) & ( !\reg_file|reg13|OUT\(7) & ( 
-- (!\A_SEL[2]~input_o\ & (\reg_file|reg9|OUT\(7) & ((\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (((\reg_file|reg5|OUT\(7) & !\A_SEL[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|reg9|ALT_INV_OUT\(7),
	datac => \reg_file|reg5|ALT_INV_OUT\(7),
	datad => \ALT_INV_A_SEL[3]~input_o\,
	datae => \reg_file|reg1|ALT_INV_OUT\(7),
	dataf => \reg_file|reg13|ALT_INV_OUT\(7),
	combout => \reg_file|A_mul|Mux8~1_combout\);

-- Location: LABCELL_X35_Y3_N36
\reg_file|A_mul|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux8~4_combout\ = ( \reg_file|A_mul|Mux8~2_combout\ & ( \reg_file|A_mul|Mux8~1_combout\ & ( (!\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\) # (\reg_file|A_mul|Mux8~0_combout\)))) # (\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)) # 
-- (\reg_file|A_mul|Mux8~3_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux8~2_combout\ & ( \reg_file|A_mul|Mux8~1_combout\ & ( (!\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\) # (\reg_file|A_mul|Mux8~0_combout\)))) # (\A_SEL[1]~input_o\ & 
-- (\reg_file|A_mul|Mux8~3_combout\ & ((\A_SEL[0]~input_o\)))) ) ) ) # ( \reg_file|A_mul|Mux8~2_combout\ & ( !\reg_file|A_mul|Mux8~1_combout\ & ( (!\A_SEL[1]~input_o\ & (((\reg_file|A_mul|Mux8~0_combout\ & !\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & 
-- (((!\A_SEL[0]~input_o\)) # (\reg_file|A_mul|Mux8~3_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux8~2_combout\ & ( !\reg_file|A_mul|Mux8~1_combout\ & ( (!\A_SEL[1]~input_o\ & (((\reg_file|A_mul|Mux8~0_combout\ & !\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & 
-- (\reg_file|A_mul|Mux8~3_combout\ & ((\A_SEL[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \reg_file|A_mul|ALT_INV_Mux8~3_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_A_SEL[0]~input_o\,
	datae => \reg_file|A_mul|ALT_INV_Mux8~2_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux8~1_combout\,
	combout => \reg_file|A_mul|Mux8~4_combout\);

-- Location: FF_X32_Y1_N23
\reg_file|reg3|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(8));

-- Location: LABCELL_X31_Y1_N27
\reg_file|reg2|OUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg2|OUT[8]~feeder_combout\ = ( \m1|OUT[8]~53_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[8]~53_combout\,
	combout => \reg_file|reg2|OUT[8]~feeder_combout\);

-- Location: FF_X31_Y1_N29
\reg_file|reg2|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg2|OUT[8]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(8));

-- Location: FF_X32_Y1_N50
\reg_file|reg0|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(8));

-- Location: FF_X31_Y1_N32
\reg_file|reg1|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(8));

-- Location: MLABCELL_X32_Y1_N51
\reg_file|A_mul|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux7~0_combout\ = ( \A_SEL[1]~input_o\ & ( \reg_file|reg1|OUT\(8) & ( (!\A_SEL[0]~input_o\ & ((\reg_file|reg2|OUT\(8)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg3|OUT\(8))) ) ) ) # ( !\A_SEL[1]~input_o\ & ( \reg_file|reg1|OUT\(8) & ( 
-- (\A_SEL[0]~input_o\) # (\reg_file|reg0|OUT\(8)) ) ) ) # ( \A_SEL[1]~input_o\ & ( !\reg_file|reg1|OUT\(8) & ( (!\A_SEL[0]~input_o\ & ((\reg_file|reg2|OUT\(8)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg3|OUT\(8))) ) ) ) # ( !\A_SEL[1]~input_o\ & ( 
-- !\reg_file|reg1|OUT\(8) & ( (\reg_file|reg0|OUT\(8) & !\A_SEL[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg3|ALT_INV_OUT\(8),
	datab => \reg_file|reg2|ALT_INV_OUT\(8),
	datac => \reg_file|reg0|ALT_INV_OUT\(8),
	datad => \ALT_INV_A_SEL[0]~input_o\,
	datae => \ALT_INV_A_SEL[1]~input_o\,
	dataf => \reg_file|reg1|ALT_INV_OUT\(8),
	combout => \reg_file|A_mul|Mux7~0_combout\);

-- Location: LABCELL_X30_Y2_N54
\reg_file|reg6|OUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg6|OUT[8]~feeder_combout\ = ( \m1|OUT[8]~53_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[8]~53_combout\,
	combout => \reg_file|reg6|OUT[8]~feeder_combout\);

-- Location: FF_X30_Y2_N56
\reg_file|reg6|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg6|OUT[8]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(8));

-- Location: FF_X30_Y1_N11
\reg_file|reg4|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(8));

-- Location: FF_X30_Y1_N29
\reg_file|reg7|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(8));

-- Location: FF_X31_Y1_N44
\reg_file|reg5|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(8));

-- Location: LABCELL_X30_Y1_N6
\reg_file|A_mul|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux7~1_combout\ = ( \reg_file|reg7|OUT\(8) & ( \reg_file|reg5|OUT\(8) & ( ((!\A_SEL[1]~input_o\ & ((\reg_file|reg4|OUT\(8)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg6|OUT\(8)))) # (\A_SEL[0]~input_o\) ) ) ) # ( !\reg_file|reg7|OUT\(8) & ( 
-- \reg_file|reg5|OUT\(8) & ( (!\A_SEL[1]~input_o\ & (((\reg_file|reg4|OUT\(8))) # (\A_SEL[0]~input_o\))) # (\A_SEL[1]~input_o\ & (!\A_SEL[0]~input_o\ & (\reg_file|reg6|OUT\(8)))) ) ) ) # ( \reg_file|reg7|OUT\(8) & ( !\reg_file|reg5|OUT\(8) & ( 
-- (!\A_SEL[1]~input_o\ & (!\A_SEL[0]~input_o\ & ((\reg_file|reg4|OUT\(8))))) # (\A_SEL[1]~input_o\ & (((\reg_file|reg6|OUT\(8))) # (\A_SEL[0]~input_o\))) ) ) ) # ( !\reg_file|reg7|OUT\(8) & ( !\reg_file|reg5|OUT\(8) & ( (!\A_SEL[0]~input_o\ & 
-- ((!\A_SEL[1]~input_o\ & ((\reg_file|reg4|OUT\(8)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg6|OUT\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \ALT_INV_A_SEL[0]~input_o\,
	datac => \reg_file|reg6|ALT_INV_OUT\(8),
	datad => \reg_file|reg4|ALT_INV_OUT\(8),
	datae => \reg_file|reg7|ALT_INV_OUT\(8),
	dataf => \reg_file|reg5|ALT_INV_OUT\(8),
	combout => \reg_file|A_mul|Mux7~1_combout\);

-- Location: FF_X31_Y3_N14
\reg_file|reg14|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(8));

-- Location: FF_X30_Y3_N55
\reg_file|reg13|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(8));

-- Location: FF_X32_Y3_N26
\reg_file|reg12|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(8));

-- Location: LABCELL_X30_Y3_N54
\reg_file|A_mul|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux7~3_combout\ = ( \reg_file|reg13|OUT\(8) & ( \reg_file|reg12|OUT\(8) & ( (!\A_SEL[1]~input_o\) # ((!\A_SEL[0]~input_o\ & (\reg_file|reg14|OUT\(8))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg15|OUT\(8))))) ) ) ) # ( !\reg_file|reg13|OUT\(8) 
-- & ( \reg_file|reg12|OUT\(8) & ( (!\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg14|OUT\(8))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg15|OUT\(8)))))) ) ) ) # ( \reg_file|reg13|OUT\(8) & ( 
-- !\reg_file|reg12|OUT\(8) & ( (!\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg14|OUT\(8))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg15|OUT\(8)))))) ) ) ) # ( !\reg_file|reg13|OUT\(8) & ( 
-- !\reg_file|reg12|OUT\(8) & ( (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg14|OUT\(8))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg15|OUT\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg14|ALT_INV_OUT\(8),
	datab => \ALT_INV_A_SEL[1]~input_o\,
	datac => \ALT_INV_A_SEL[0]~input_o\,
	datad => \reg_file|reg15|ALT_INV_OUT\(8),
	datae => \reg_file|reg13|ALT_INV_OUT\(8),
	dataf => \reg_file|reg12|ALT_INV_OUT\(8),
	combout => \reg_file|A_mul|Mux7~3_combout\);

-- Location: FF_X33_Y1_N20
\reg_file|reg8|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(8));

-- Location: FF_X33_Y2_N22
\reg_file|reg9|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(8));

-- Location: FF_X33_Y3_N14
\reg_file|reg11|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(8));

-- Location: LABCELL_X33_Y1_N48
\reg_file|reg10|OUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg10|OUT[8]~feeder_combout\ = ( \m1|OUT[8]~53_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[8]~53_combout\,
	combout => \reg_file|reg10|OUT[8]~feeder_combout\);

-- Location: FF_X33_Y1_N50
\reg_file|reg10|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg10|OUT[8]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(8));

-- Location: LABCELL_X33_Y1_N21
\reg_file|A_mul|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux7~2_combout\ = ( \A_SEL[0]~input_o\ & ( \reg_file|reg10|OUT\(8) & ( (!\A_SEL[1]~input_o\ & (\reg_file|reg9|OUT\(8))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg11|OUT\(8)))) ) ) ) # ( !\A_SEL[0]~input_o\ & ( \reg_file|reg10|OUT\(8) & ( 
-- (\A_SEL[1]~input_o\) # (\reg_file|reg8|OUT\(8)) ) ) ) # ( \A_SEL[0]~input_o\ & ( !\reg_file|reg10|OUT\(8) & ( (!\A_SEL[1]~input_o\ & (\reg_file|reg9|OUT\(8))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg11|OUT\(8)))) ) ) ) # ( !\A_SEL[0]~input_o\ & ( 
-- !\reg_file|reg10|OUT\(8) & ( (\reg_file|reg8|OUT\(8) & !\A_SEL[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg8|ALT_INV_OUT\(8),
	datab => \ALT_INV_A_SEL[1]~input_o\,
	datac => \reg_file|reg9|ALT_INV_OUT\(8),
	datad => \reg_file|reg11|ALT_INV_OUT\(8),
	datae => \ALT_INV_A_SEL[0]~input_o\,
	dataf => \reg_file|reg10|ALT_INV_OUT\(8),
	combout => \reg_file|A_mul|Mux7~2_combout\);

-- Location: LABCELL_X30_Y1_N39
\reg_file|A_mul|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux7~4_combout\ = ( \reg_file|A_mul|Mux7~3_combout\ & ( \reg_file|A_mul|Mux7~2_combout\ & ( ((!\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux7~0_combout\)) # (\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux7~1_combout\)))) # (\A_SEL[3]~input_o\) ) ) 
-- ) # ( !\reg_file|A_mul|Mux7~3_combout\ & ( \reg_file|A_mul|Mux7~2_combout\ & ( (!\A_SEL[2]~input_o\ & (((\reg_file|A_mul|Mux7~0_combout\)) # (\A_SEL[3]~input_o\))) # (\A_SEL[2]~input_o\ & (!\A_SEL[3]~input_o\ & ((\reg_file|A_mul|Mux7~1_combout\)))) ) ) ) 
-- # ( \reg_file|A_mul|Mux7~3_combout\ & ( !\reg_file|A_mul|Mux7~2_combout\ & ( (!\A_SEL[2]~input_o\ & (!\A_SEL[3]~input_o\ & (\reg_file|A_mul|Mux7~0_combout\))) # (\A_SEL[2]~input_o\ & (((\reg_file|A_mul|Mux7~1_combout\)) # (\A_SEL[3]~input_o\))) ) ) ) # ( 
-- !\reg_file|A_mul|Mux7~3_combout\ & ( !\reg_file|A_mul|Mux7~2_combout\ & ( (!\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux7~0_combout\)) # (\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux7~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \reg_file|A_mul|ALT_INV_Mux7~0_combout\,
	datad => \reg_file|A_mul|ALT_INV_Mux7~1_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux7~3_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux7~2_combout\,
	combout => \reg_file|A_mul|Mux7~4_combout\);

-- Location: FF_X30_Y3_N47
\reg_file|reg13|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(6));

-- Location: FF_X30_Y6_N26
\reg_file|reg15|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(6));

-- Location: FF_X30_Y3_N2
\reg_file|reg14|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(6));

-- Location: LABCELL_X30_Y3_N27
\reg_file|reg12|OUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg12|OUT[6]~feeder_combout\ = ( \m1|OUT[6]~61_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[6]~61_combout\,
	combout => \reg_file|reg12|OUT[6]~feeder_combout\);

-- Location: FF_X30_Y3_N28
\reg_file|reg12|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg12|OUT[6]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(6));

-- Location: LABCELL_X30_Y3_N21
\reg_file|A_mul|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux9~3_combout\ = ( \reg_file|reg14|OUT\(6) & ( \reg_file|reg12|OUT\(6) & ( (!\A_SEL[0]~input_o\) # ((!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(6))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg15|OUT\(6))))) ) ) ) # ( !\reg_file|reg14|OUT\(6) 
-- & ( \reg_file|reg12|OUT\(6) & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\)))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(6))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg15|OUT\(6)))))) ) ) ) # ( \reg_file|reg14|OUT\(6) & ( 
-- !\reg_file|reg12|OUT\(6) & ( (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(6))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg15|OUT\(6)))))) ) ) ) # ( !\reg_file|reg14|OUT\(6) & ( 
-- !\reg_file|reg12|OUT\(6) & ( (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(6))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg15|OUT\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \reg_file|reg13|ALT_INV_OUT\(6),
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|reg15|ALT_INV_OUT\(6),
	datae => \reg_file|reg14|ALT_INV_OUT\(6),
	dataf => \reg_file|reg12|ALT_INV_OUT\(6),
	combout => \reg_file|A_mul|Mux9~3_combout\);

-- Location: FF_X28_Y2_N20
\reg_file|reg10|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(6));

-- Location: FF_X33_Y2_N32
\reg_file|reg9|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(6));

-- Location: FF_X32_Y6_N10
\reg_file|reg8|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(6));

-- Location: LABCELL_X28_Y2_N24
\reg_file|A_mul|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux9~2_combout\ = ( \reg_file|reg9|OUT\(6) & ( \reg_file|reg8|OUT\(6) & ( (!\A_SEL[1]~input_o\) # ((!\A_SEL[0]~input_o\ & (\reg_file|reg10|OUT\(6))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg11|OUT\(6))))) ) ) ) # ( !\reg_file|reg9|OUT\(6) & 
-- ( \reg_file|reg8|OUT\(6) & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\)) # (\reg_file|reg10|OUT\(6)))) # (\A_SEL[0]~input_o\ & (((\reg_file|reg11|OUT\(6) & \A_SEL[1]~input_o\)))) ) ) ) # ( \reg_file|reg9|OUT\(6) & ( !\reg_file|reg8|OUT\(6) & ( 
-- (!\A_SEL[0]~input_o\ & (\reg_file|reg10|OUT\(6) & ((\A_SEL[1]~input_o\)))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\) # (\reg_file|reg11|OUT\(6))))) ) ) ) # ( !\reg_file|reg9|OUT\(6) & ( !\reg_file|reg8|OUT\(6) & ( (\A_SEL[1]~input_o\ & 
-- ((!\A_SEL[0]~input_o\ & (\reg_file|reg10|OUT\(6))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg11|OUT\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg10|ALT_INV_OUT\(6),
	datab => \ALT_INV_A_SEL[0]~input_o\,
	datac => \reg_file|reg11|ALT_INV_OUT\(6),
	datad => \ALT_INV_A_SEL[1]~input_o\,
	datae => \reg_file|reg9|ALT_INV_OUT\(6),
	dataf => \reg_file|reg8|ALT_INV_OUT\(6),
	combout => \reg_file|A_mul|Mux9~2_combout\);

-- Location: MLABCELL_X32_Y1_N36
\reg_file|reg1|OUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg1|OUT[6]~feeder_combout\ = ( \m1|OUT[6]~61_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[6]~61_combout\,
	combout => \reg_file|reg1|OUT[6]~feeder_combout\);

-- Location: FF_X32_Y1_N38
\reg_file|reg1|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg1|OUT[6]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(6));

-- Location: FF_X31_Y5_N25
\reg_file|reg2|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(6));

-- Location: FF_X32_Y1_N56
\reg_file|reg0|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(6));

-- Location: MLABCELL_X32_Y1_N42
\reg_file|reg3|OUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg3|OUT[6]~feeder_combout\ = ( \m1|OUT[6]~61_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[6]~61_combout\,
	combout => \reg_file|reg3|OUT[6]~feeder_combout\);

-- Location: FF_X32_Y1_N44
\reg_file|reg3|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg3|OUT[6]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(6));

-- Location: MLABCELL_X32_Y1_N57
\reg_file|A_mul|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux9~0_combout\ = ( \reg_file|reg0|OUT\(6) & ( \reg_file|reg3|OUT\(6) & ( (!\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)) # (\reg_file|reg1|OUT\(6)))) # (\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\) # (\reg_file|reg2|OUT\(6))))) ) ) ) # ( 
-- !\reg_file|reg0|OUT\(6) & ( \reg_file|reg3|OUT\(6) & ( (!\A_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(6) & ((\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\) # (\reg_file|reg2|OUT\(6))))) ) ) ) # ( \reg_file|reg0|OUT\(6) & ( 
-- !\reg_file|reg3|OUT\(6) & ( (!\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)) # (\reg_file|reg1|OUT\(6)))) # (\A_SEL[1]~input_o\ & (((\reg_file|reg2|OUT\(6) & !\A_SEL[0]~input_o\)))) ) ) ) # ( !\reg_file|reg0|OUT\(6) & ( !\reg_file|reg3|OUT\(6) & ( 
-- (!\A_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(6) & ((\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & (((\reg_file|reg2|OUT\(6) & !\A_SEL[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg1|ALT_INV_OUT\(6),
	datab => \reg_file|reg2|ALT_INV_OUT\(6),
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \ALT_INV_A_SEL[0]~input_o\,
	datae => \reg_file|reg0|ALT_INV_OUT\(6),
	dataf => \reg_file|reg3|ALT_INV_OUT\(6),
	combout => \reg_file|A_mul|Mux9~0_combout\);

-- Location: LABCELL_X33_Y1_N33
\reg_file|reg4|OUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg4|OUT[6]~feeder_combout\ = ( \m1|OUT[6]~61_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[6]~61_combout\,
	combout => \reg_file|reg4|OUT[6]~feeder_combout\);

-- Location: FF_X33_Y1_N35
\reg_file|reg4|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg4|OUT[6]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(6));

-- Location: FF_X30_Y1_N2
\reg_file|reg7|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(6));

-- Location: LABCELL_X31_Y1_N0
\reg_file|reg5|OUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg5|OUT[6]~feeder_combout\ = ( \m1|OUT[6]~61_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[6]~61_combout\,
	combout => \reg_file|reg5|OUT[6]~feeder_combout\);

-- Location: FF_X31_Y1_N2
\reg_file|reg5|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg5|OUT[6]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(6));

-- Location: FF_X30_Y6_N53
\reg_file|reg6|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(6));

-- Location: LABCELL_X30_Y1_N33
\reg_file|A_mul|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux9~1_combout\ = ( \reg_file|reg5|OUT\(6) & ( \reg_file|reg6|OUT\(6) & ( (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)) # (\reg_file|reg4|OUT\(6)))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\) # (\reg_file|reg7|OUT\(6))))) ) ) ) # ( 
-- !\reg_file|reg5|OUT\(6) & ( \reg_file|reg6|OUT\(6) & ( (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)) # (\reg_file|reg4|OUT\(6)))) # (\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\ & \reg_file|reg7|OUT\(6))))) ) ) ) # ( \reg_file|reg5|OUT\(6) & ( 
-- !\reg_file|reg6|OUT\(6) & ( (!\A_SEL[0]~input_o\ & (\reg_file|reg4|OUT\(6) & (!\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\) # (\reg_file|reg7|OUT\(6))))) ) ) ) # ( !\reg_file|reg5|OUT\(6) & ( !\reg_file|reg6|OUT\(6) & ( 
-- (!\A_SEL[0]~input_o\ & (\reg_file|reg4|OUT\(6) & (!\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\ & \reg_file|reg7|OUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg4|ALT_INV_OUT\(6),
	datab => \ALT_INV_A_SEL[0]~input_o\,
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|reg7|ALT_INV_OUT\(6),
	datae => \reg_file|reg5|ALT_INV_OUT\(6),
	dataf => \reg_file|reg6|ALT_INV_OUT\(6),
	combout => \reg_file|A_mul|Mux9~1_combout\);

-- Location: LABCELL_X30_Y3_N36
\reg_file|A_mul|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux9~4_combout\ = ( \reg_file|A_mul|Mux9~0_combout\ & ( \reg_file|A_mul|Mux9~1_combout\ & ( (!\A_SEL[3]~input_o\) # ((!\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux9~2_combout\))) # (\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux9~3_combout\))) ) 
-- ) ) # ( !\reg_file|A_mul|Mux9~0_combout\ & ( \reg_file|A_mul|Mux9~1_combout\ & ( (!\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux9~2_combout\))) # (\A_SEL[2]~input_o\ & 
-- (\reg_file|A_mul|Mux9~3_combout\)))) ) ) ) # ( \reg_file|A_mul|Mux9~0_combout\ & ( !\reg_file|A_mul|Mux9~1_combout\ & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux9~2_combout\))) 
-- # (\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux9~3_combout\)))) ) ) ) # ( !\reg_file|A_mul|Mux9~0_combout\ & ( !\reg_file|A_mul|Mux9~1_combout\ & ( (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux9~2_combout\))) # (\A_SEL[2]~input_o\ & 
-- (\reg_file|A_mul|Mux9~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux9~3_combout\,
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \ALT_INV_A_SEL[2]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux9~2_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux9~0_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux9~1_combout\,
	combout => \reg_file|A_mul|Mux9~4_combout\);

-- Location: LABCELL_X30_Y4_N27
\func_unit|_alu|au|s|s6|SH1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s6|SH1~2_combout\ = ( \func_unit|_alu|au|Add0~25_sumout\ & ( \reg_file|A_mul|Mux9~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_file|A_mul|ALT_INV_Mux9~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~25_sumout\,
	combout => \func_unit|_alu|au|s|s6|SH1~2_combout\);

-- Location: FF_X30_Y5_N44
\reg_file|reg1|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(4));

-- Location: FF_X30_Y5_N20
\reg_file|reg3|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(4));

-- Location: LABCELL_X31_Y5_N27
\reg_file|reg2|OUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg2|OUT[4]~feeder_combout\ = ( \m1|OUT[4]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[4]~14_combout\,
	combout => \reg_file|reg2|OUT[4]~feeder_combout\);

-- Location: FF_X31_Y5_N29
\reg_file|reg2|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg2|OUT[4]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(4));

-- Location: FF_X30_Y5_N50
\reg_file|reg0|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(4));

-- Location: LABCELL_X30_Y5_N57
\reg_file|A_mul|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux11~0_combout\ = ( \reg_file|reg2|OUT\(4) & ( \reg_file|reg0|OUT\(4) & ( (!\A_SEL[0]~input_o\) # ((!\A_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(4))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(4))))) ) ) ) # ( !\reg_file|reg2|OUT\(4) & ( 
-- \reg_file|reg0|OUT\(4) & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\)))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(4))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(4)))))) ) ) ) # ( \reg_file|reg2|OUT\(4) & ( 
-- !\reg_file|reg0|OUT\(4) & ( (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(4))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(4)))))) ) ) ) # ( !\reg_file|reg2|OUT\(4) & ( 
-- !\reg_file|reg0|OUT\(4) & ( (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(4))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \reg_file|reg1|ALT_INV_OUT\(4),
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|reg3|ALT_INV_OUT\(4),
	datae => \reg_file|reg2|ALT_INV_OUT\(4),
	dataf => \reg_file|reg0|ALT_INV_OUT\(4),
	combout => \reg_file|A_mul|Mux11~0_combout\);

-- Location: FF_X33_Y6_N50
\reg_file|reg4|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(4));

-- Location: FF_X33_Y6_N17
\reg_file|reg7|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(4));

-- Location: FF_X33_Y5_N2
\reg_file|reg5|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(4));

-- Location: LABCELL_X30_Y6_N21
\reg_file|reg6|OUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg6|OUT[4]~feeder_combout\ = ( \m1|OUT[4]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[4]~14_combout\,
	combout => \reg_file|reg6|OUT[4]~feeder_combout\);

-- Location: FF_X30_Y6_N23
\reg_file|reg6|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg6|OUT[4]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(4));

-- Location: LABCELL_X33_Y6_N21
\reg_file|A_mul|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux11~1_combout\ = ( \reg_file|reg5|OUT\(4) & ( \reg_file|reg6|OUT\(4) & ( (!\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\)) # (\reg_file|reg4|OUT\(4)))) # (\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\) # (\reg_file|reg7|OUT\(4))))) ) ) ) # ( 
-- !\reg_file|reg5|OUT\(4) & ( \reg_file|reg6|OUT\(4) & ( (!\A_SEL[1]~input_o\ & (\reg_file|reg4|OUT\(4) & ((!\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\) # (\reg_file|reg7|OUT\(4))))) ) ) ) # ( \reg_file|reg5|OUT\(4) & ( 
-- !\reg_file|reg6|OUT\(4) & ( (!\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\)) # (\reg_file|reg4|OUT\(4)))) # (\A_SEL[1]~input_o\ & (((\reg_file|reg7|OUT\(4) & \A_SEL[0]~input_o\)))) ) ) ) # ( !\reg_file|reg5|OUT\(4) & ( !\reg_file|reg6|OUT\(4) & ( 
-- (!\A_SEL[1]~input_o\ & (\reg_file|reg4|OUT\(4) & ((!\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & (((\reg_file|reg7|OUT\(4) & \A_SEL[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg4|ALT_INV_OUT\(4),
	datab => \reg_file|reg7|ALT_INV_OUT\(4),
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \ALT_INV_A_SEL[0]~input_o\,
	datae => \reg_file|reg5|ALT_INV_OUT\(4),
	dataf => \reg_file|reg6|ALT_INV_OUT\(4),
	combout => \reg_file|A_mul|Mux11~1_combout\);

-- Location: FF_X32_Y6_N2
\reg_file|reg11|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(4));

-- Location: FF_X30_Y6_N35
\reg_file|reg10|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(4));

-- Location: FF_X32_Y6_N58
\reg_file|reg8|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(4));

-- Location: MLABCELL_X32_Y6_N15
\reg_file|A_mul|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux11~2_combout\ = ( \reg_file|reg9|OUT\(4) & ( \reg_file|reg8|OUT\(4) & ( (!\A_SEL[1]~input_o\) # ((!\A_SEL[0]~input_o\ & ((\reg_file|reg10|OUT\(4)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(4)))) ) ) ) # ( !\reg_file|reg9|OUT\(4) & 
-- ( \reg_file|reg8|OUT\(4) & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\) # (\reg_file|reg10|OUT\(4))))) # (\A_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(4) & (\A_SEL[1]~input_o\))) ) ) ) # ( \reg_file|reg9|OUT\(4) & ( !\reg_file|reg8|OUT\(4) & ( 
-- (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\ & \reg_file|reg10|OUT\(4))))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\)) # (\reg_file|reg11|OUT\(4)))) ) ) ) # ( !\reg_file|reg9|OUT\(4) & ( !\reg_file|reg8|OUT\(4) & ( (\A_SEL[1]~input_o\ & 
-- ((!\A_SEL[0]~input_o\ & ((\reg_file|reg10|OUT\(4)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg11|ALT_INV_OUT\(4),
	datab => \ALT_INV_A_SEL[0]~input_o\,
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|reg10|ALT_INV_OUT\(4),
	datae => \reg_file|reg9|ALT_INV_OUT\(4),
	dataf => \reg_file|reg8|ALT_INV_OUT\(4),
	combout => \reg_file|A_mul|Mux11~2_combout\);

-- Location: FF_X30_Y3_N20
\reg_file|reg13|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(4));

-- Location: FF_X31_Y5_N38
\reg_file|reg14|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(4));

-- Location: LABCELL_X30_Y3_N15
\reg_file|reg12|OUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg12|OUT[4]~feeder_combout\ = ( \m1|OUT[4]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[4]~14_combout\,
	combout => \reg_file|reg12|OUT[4]~feeder_combout\);

-- Location: FF_X30_Y3_N16
\reg_file|reg12|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg12|OUT[4]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(4));

-- Location: FF_X30_Y6_N38
\reg_file|reg15|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(4));

-- Location: LABCELL_X30_Y2_N33
\reg_file|A_mul|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux11~3_combout\ = ( \reg_file|reg12|OUT\(4) & ( \reg_file|reg15|OUT\(4) & ( (!\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)) # (\reg_file|reg13|OUT\(4)))) # (\A_SEL[1]~input_o\ & (((\reg_file|reg14|OUT\(4)) # (\A_SEL[0]~input_o\)))) ) ) ) 
-- # ( !\reg_file|reg12|OUT\(4) & ( \reg_file|reg15|OUT\(4) & ( (!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(4) & (\A_SEL[0]~input_o\))) # (\A_SEL[1]~input_o\ & (((\reg_file|reg14|OUT\(4)) # (\A_SEL[0]~input_o\)))) ) ) ) # ( \reg_file|reg12|OUT\(4) & ( 
-- !\reg_file|reg15|OUT\(4) & ( (!\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)) # (\reg_file|reg13|OUT\(4)))) # (\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\ & \reg_file|reg14|OUT\(4))))) ) ) ) # ( !\reg_file|reg12|OUT\(4) & ( !\reg_file|reg15|OUT\(4) & ( 
-- (!\A_SEL[1]~input_o\ & (\reg_file|reg13|OUT\(4) & (\A_SEL[0]~input_o\))) # (\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\ & \reg_file|reg14|OUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \reg_file|reg13|ALT_INV_OUT\(4),
	datac => \ALT_INV_A_SEL[0]~input_o\,
	datad => \reg_file|reg14|ALT_INV_OUT\(4),
	datae => \reg_file|reg12|ALT_INV_OUT\(4),
	dataf => \reg_file|reg15|ALT_INV_OUT\(4),
	combout => \reg_file|A_mul|Mux11~3_combout\);

-- Location: LABCELL_X30_Y2_N21
\reg_file|A_mul|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux11~4_combout\ = ( \reg_file|A_mul|Mux11~2_combout\ & ( \reg_file|A_mul|Mux11~3_combout\ & ( ((!\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux11~0_combout\)) # (\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux11~1_combout\)))) # 
-- (\A_SEL[3]~input_o\) ) ) ) # ( !\reg_file|A_mul|Mux11~2_combout\ & ( \reg_file|A_mul|Mux11~3_combout\ & ( (!\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux11~0_combout\ & (!\A_SEL[3]~input_o\))) # (\A_SEL[2]~input_o\ & (((\reg_file|A_mul|Mux11~1_combout\) # 
-- (\A_SEL[3]~input_o\)))) ) ) ) # ( \reg_file|A_mul|Mux11~2_combout\ & ( !\reg_file|A_mul|Mux11~3_combout\ & ( (!\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # (\reg_file|A_mul|Mux11~0_combout\))) # (\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\ & 
-- \reg_file|A_mul|Mux11~1_combout\)))) ) ) ) # ( !\reg_file|A_mul|Mux11~2_combout\ & ( !\reg_file|A_mul|Mux11~3_combout\ & ( (!\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux11~0_combout\)) # (\A_SEL[2]~input_o\ & 
-- ((\reg_file|A_mul|Mux11~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|A_mul|ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_A_SEL[3]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux11~1_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux11~2_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux11~3_combout\,
	combout => \reg_file|A_mul|Mux11~4_combout\);

-- Location: FF_X32_Y5_N38
\reg_file|reg11|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(3));

-- Location: FF_X32_Y7_N44
\reg_file|reg15|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(3));

-- Location: FF_X31_Y6_N14
\reg_file|reg7|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(3));

-- Location: LABCELL_X31_Y6_N36
\reg_file|A_mul|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux12~3_combout\ = ( \reg_file|reg3|OUT\(3) & ( \reg_file|reg7|OUT\(3) & ( (!\A_SEL[3]~input_o\) # ((!\A_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(3))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(3))))) ) ) ) # ( !\reg_file|reg3|OUT\(3) & 
-- ( \reg_file|reg7|OUT\(3) & ( (!\A_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(3) & ((\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\) # (\reg_file|reg15|OUT\(3))))) ) ) ) # ( \reg_file|reg3|OUT\(3) & ( !\reg_file|reg7|OUT\(3) & ( 
-- (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\)) # (\reg_file|reg11|OUT\(3)))) # (\A_SEL[2]~input_o\ & (((\reg_file|reg15|OUT\(3) & \A_SEL[3]~input_o\)))) ) ) ) # ( !\reg_file|reg3|OUT\(3) & ( !\reg_file|reg7|OUT\(3) & ( (\A_SEL[3]~input_o\ & 
-- ((!\A_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(3))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg11|ALT_INV_OUT\(3),
	datab => \reg_file|reg15|ALT_INV_OUT\(3),
	datac => \ALT_INV_A_SEL[2]~input_o\,
	datad => \ALT_INV_A_SEL[3]~input_o\,
	datae => \reg_file|reg3|ALT_INV_OUT\(3),
	dataf => \reg_file|reg7|ALT_INV_OUT\(3),
	combout => \reg_file|A_mul|Mux12~3_combout\);

-- Location: FF_X31_Y6_N41
\reg_file|reg4|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(3));

-- Location: LABCELL_X35_Y6_N36
\reg_file|reg12|OUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg12|OUT[3]~feeder_combout\ = ( \m1|OUT[3]~65_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[3]~65_combout\,
	combout => \reg_file|reg12|OUT[3]~feeder_combout\);

-- Location: FF_X35_Y6_N38
\reg_file|reg12|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg12|OUT[3]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(3));

-- Location: FF_X31_Y6_N56
\reg_file|reg0|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(3));

-- Location: FF_X32_Y5_N20
\reg_file|reg8|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(3));

-- Location: LABCELL_X31_Y6_N57
\reg_file|A_mul|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux12~0_combout\ = ( \reg_file|reg0|OUT\(3) & ( \reg_file|reg8|OUT\(3) & ( (!\A_SEL[2]~input_o\) # ((!\A_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(3))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(3))))) ) ) ) # ( !\reg_file|reg0|OUT\(3) & 
-- ( \reg_file|reg8|OUT\(3) & ( (!\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(3))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(3)))))) ) ) ) # ( \reg_file|reg0|OUT\(3) & ( 
-- !\reg_file|reg8|OUT\(3) & ( (!\A_SEL[2]~input_o\ & (((!\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(3))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(3)))))) ) ) ) # ( !\reg_file|reg0|OUT\(3) & ( 
-- !\reg_file|reg8|OUT\(3) & ( (\A_SEL[2]~input_o\ & ((!\A_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(3))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|reg4|ALT_INV_OUT\(3),
	datac => \ALT_INV_A_SEL[3]~input_o\,
	datad => \reg_file|reg12|ALT_INV_OUT\(3),
	datae => \reg_file|reg0|ALT_INV_OUT\(3),
	dataf => \reg_file|reg8|ALT_INV_OUT\(3),
	combout => \reg_file|A_mul|Mux12~0_combout\);

-- Location: LABCELL_X35_Y5_N51
\reg_file|reg6|OUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg6|OUT[3]~feeder_combout\ = ( \m1|OUT[3]~65_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[3]~65_combout\,
	combout => \reg_file|reg6|OUT[3]~feeder_combout\);

-- Location: FF_X35_Y5_N53
\reg_file|reg6|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg6|OUT[3]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(3));

-- Location: FF_X31_Y5_N47
\reg_file|reg14|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(3));

-- Location: FF_X31_Y5_N32
\reg_file|reg10|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(3));

-- Location: FF_X31_Y5_N17
\reg_file|reg2|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(3));

-- Location: LABCELL_X35_Y5_N6
\reg_file|A_mul|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux12~2_combout\ = ( \reg_file|reg10|OUT\(3) & ( \reg_file|reg2|OUT\(3) & ( (!\A_SEL[2]~input_o\) # ((!\A_SEL[3]~input_o\ & (\reg_file|reg6|OUT\(3))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg14|OUT\(3))))) ) ) ) # ( !\reg_file|reg10|OUT\(3) 
-- & ( \reg_file|reg2|OUT\(3) & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)) # (\reg_file|reg6|OUT\(3)))) # (\A_SEL[3]~input_o\ & (((\reg_file|reg14|OUT\(3) & \A_SEL[2]~input_o\)))) ) ) ) # ( \reg_file|reg10|OUT\(3) & ( !\reg_file|reg2|OUT\(3) & ( 
-- (!\A_SEL[3]~input_o\ & (\reg_file|reg6|OUT\(3) & ((\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\) # (\reg_file|reg14|OUT\(3))))) ) ) ) # ( !\reg_file|reg10|OUT\(3) & ( !\reg_file|reg2|OUT\(3) & ( (\A_SEL[2]~input_o\ & 
-- ((!\A_SEL[3]~input_o\ & (\reg_file|reg6|OUT\(3))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg14|OUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg6|ALT_INV_OUT\(3),
	datab => \reg_file|reg14|ALT_INV_OUT\(3),
	datac => \ALT_INV_A_SEL[3]~input_o\,
	datad => \ALT_INV_A_SEL[2]~input_o\,
	datae => \reg_file|reg10|ALT_INV_OUT\(3),
	dataf => \reg_file|reg2|ALT_INV_OUT\(3),
	combout => \reg_file|A_mul|Mux12~2_combout\);

-- Location: FF_X33_Y5_N47
\reg_file|reg5|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(3));

-- Location: LABCELL_X28_Y5_N0
\reg_file|reg13|OUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg13|OUT[3]~feeder_combout\ = ( \m1|OUT[3]~65_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[3]~65_combout\,
	combout => \reg_file|reg13|OUT[3]~feeder_combout\);

-- Location: FF_X28_Y5_N2
\reg_file|reg13|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg13|OUT[3]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(3));

-- Location: FF_X32_Y5_N49
\reg_file|reg9|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(3));

-- Location: FF_X33_Y5_N8
\reg_file|reg1|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(3));

-- Location: LABCELL_X33_Y5_N33
\reg_file|A_mul|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux12~1_combout\ = ( \reg_file|reg9|OUT\(3) & ( \reg_file|reg1|OUT\(3) & ( (!\A_SEL[2]~input_o\) # ((!\A_SEL[3]~input_o\ & (\reg_file|reg5|OUT\(3))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg13|OUT\(3))))) ) ) ) # ( !\reg_file|reg9|OUT\(3) & 
-- ( \reg_file|reg1|OUT\(3) & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)) # (\reg_file|reg5|OUT\(3)))) # (\A_SEL[3]~input_o\ & (((\reg_file|reg13|OUT\(3) & \A_SEL[2]~input_o\)))) ) ) ) # ( \reg_file|reg9|OUT\(3) & ( !\reg_file|reg1|OUT\(3) & ( 
-- (!\A_SEL[3]~input_o\ & (\reg_file|reg5|OUT\(3) & ((\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\) # (\reg_file|reg13|OUT\(3))))) ) ) ) # ( !\reg_file|reg9|OUT\(3) & ( !\reg_file|reg1|OUT\(3) & ( (\A_SEL[2]~input_o\ & 
-- ((!\A_SEL[3]~input_o\ & (\reg_file|reg5|OUT\(3))) # (\A_SEL[3]~input_o\ & ((\reg_file|reg13|OUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[3]~input_o\,
	datab => \reg_file|reg5|ALT_INV_OUT\(3),
	datac => \reg_file|reg13|ALT_INV_OUT\(3),
	datad => \ALT_INV_A_SEL[2]~input_o\,
	datae => \reg_file|reg9|ALT_INV_OUT\(3),
	dataf => \reg_file|reg1|ALT_INV_OUT\(3),
	combout => \reg_file|A_mul|Mux12~1_combout\);

-- Location: MLABCELL_X32_Y6_N18
\reg_file|A_mul|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux12~4_combout\ = ( \reg_file|A_mul|Mux12~2_combout\ & ( \reg_file|A_mul|Mux12~1_combout\ & ( (!\A_SEL[1]~input_o\ & (((\reg_file|A_mul|Mux12~0_combout\)) # (\A_SEL[0]~input_o\))) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\) # 
-- ((\reg_file|A_mul|Mux12~3_combout\)))) ) ) ) # ( !\reg_file|A_mul|Mux12~2_combout\ & ( \reg_file|A_mul|Mux12~1_combout\ & ( (!\A_SEL[1]~input_o\ & (((\reg_file|A_mul|Mux12~0_combout\)) # (\A_SEL[0]~input_o\))) # (\A_SEL[1]~input_o\ & (\A_SEL[0]~input_o\ & 
-- (\reg_file|A_mul|Mux12~3_combout\))) ) ) ) # ( \reg_file|A_mul|Mux12~2_combout\ & ( !\reg_file|A_mul|Mux12~1_combout\ & ( (!\A_SEL[1]~input_o\ & (!\A_SEL[0]~input_o\ & ((\reg_file|A_mul|Mux12~0_combout\)))) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\) # 
-- ((\reg_file|A_mul|Mux12~3_combout\)))) ) ) ) # ( !\reg_file|A_mul|Mux12~2_combout\ & ( !\reg_file|A_mul|Mux12~1_combout\ & ( (!\A_SEL[1]~input_o\ & (!\A_SEL[0]~input_o\ & ((\reg_file|A_mul|Mux12~0_combout\)))) # (\A_SEL[1]~input_o\ & (\A_SEL[0]~input_o\ & 
-- (\reg_file|A_mul|Mux12~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \ALT_INV_A_SEL[0]~input_o\,
	datac => \reg_file|A_mul|ALT_INV_Mux12~3_combout\,
	datad => \reg_file|A_mul|ALT_INV_Mux12~0_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux12~2_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux12~1_combout\,
	combout => \reg_file|A_mul|Mux12~4_combout\);

-- Location: FF_X35_Y5_N14
\reg_file|reg10|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(2));

-- Location: FF_X32_Y5_N2
\reg_file|reg11|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(2));

-- Location: FF_X32_Y5_N53
\reg_file|reg9|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(2));

-- Location: LABCELL_X35_Y5_N21
\reg_file|A_mul|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux13~2_combout\ = ( \reg_file|reg9|OUT\(2) & ( \reg_file|reg8|OUT\(2) & ( (!\A_SEL[1]~input_o\) # ((!\A_SEL[0]~input_o\ & (\reg_file|reg10|OUT\(2))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg11|OUT\(2))))) ) ) ) # ( !\reg_file|reg9|OUT\(2) & 
-- ( \reg_file|reg8|OUT\(2) & ( (!\A_SEL[1]~input_o\ & (!\A_SEL[0]~input_o\)) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg10|OUT\(2))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg11|OUT\(2)))))) ) ) ) # ( \reg_file|reg9|OUT\(2) & ( 
-- !\reg_file|reg8|OUT\(2) & ( (!\A_SEL[1]~input_o\ & (\A_SEL[0]~input_o\)) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg10|OUT\(2))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg11|OUT\(2)))))) ) ) ) # ( !\reg_file|reg9|OUT\(2) & ( 
-- !\reg_file|reg8|OUT\(2) & ( (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & (\reg_file|reg10|OUT\(2))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg11|OUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \ALT_INV_A_SEL[0]~input_o\,
	datac => \reg_file|reg10|ALT_INV_OUT\(2),
	datad => \reg_file|reg11|ALT_INV_OUT\(2),
	datae => \reg_file|reg9|ALT_INV_OUT\(2),
	dataf => \reg_file|reg8|ALT_INV_OUT\(2),
	combout => \reg_file|A_mul|Mux13~2_combout\);

-- Location: LABCELL_X33_Y6_N6
\reg_file|reg4|OUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg4|OUT[2]~feeder_combout\ = ( \m1|OUT[2]~69_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[2]~69_combout\,
	combout => \reg_file|reg4|OUT[2]~feeder_combout\);

-- Location: FF_X33_Y6_N8
\reg_file|reg4|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg4|OUT[2]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(2));

-- Location: LABCELL_X33_Y6_N24
\reg_file|reg7|OUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg7|OUT[2]~feeder_combout\ = ( \m1|OUT[2]~69_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[2]~69_combout\,
	combout => \reg_file|reg7|OUT[2]~feeder_combout\);

-- Location: FF_X33_Y6_N26
\reg_file|reg7|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg7|OUT[2]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(2));

-- Location: FF_X30_Y6_N10
\reg_file|reg6|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(2));

-- Location: FF_X33_Y5_N38
\reg_file|reg5|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(2));

-- Location: LABCELL_X33_Y6_N45
\reg_file|A_mul|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux13~1_combout\ = ( \reg_file|reg6|OUT\(2) & ( \reg_file|reg5|OUT\(2) & ( (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)) # (\reg_file|reg4|OUT\(2)))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\) # (\reg_file|reg7|OUT\(2))))) ) ) ) # ( 
-- !\reg_file|reg6|OUT\(2) & ( \reg_file|reg5|OUT\(2) & ( (!\A_SEL[0]~input_o\ & (\reg_file|reg4|OUT\(2) & (!\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\) # (\reg_file|reg7|OUT\(2))))) ) ) ) # ( \reg_file|reg6|OUT\(2) & ( 
-- !\reg_file|reg5|OUT\(2) & ( (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)) # (\reg_file|reg4|OUT\(2)))) # (\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\ & \reg_file|reg7|OUT\(2))))) ) ) ) # ( !\reg_file|reg6|OUT\(2) & ( !\reg_file|reg5|OUT\(2) & ( 
-- (!\A_SEL[0]~input_o\ & (\reg_file|reg4|OUT\(2) & (!\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\ & \reg_file|reg7|OUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \reg_file|reg4|ALT_INV_OUT\(2),
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|reg7|ALT_INV_OUT\(2),
	datae => \reg_file|reg6|ALT_INV_OUT\(2),
	dataf => \reg_file|reg5|ALT_INV_OUT\(2),
	combout => \reg_file|A_mul|Mux13~1_combout\);

-- Location: FF_X35_Y4_N14
\reg_file|reg15|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \m1|OUT[2]~69_combout\,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(2));

-- Location: FF_X35_Y4_N56
\reg_file|reg14|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(2));

-- Location: FF_X35_Y4_N2
\reg_file|reg13|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(2));

-- Location: FF_X36_Y4_N53
\reg_file|reg12|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(2));

-- Location: LABCELL_X35_Y4_N39
\reg_file|A_mul|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux13~3_combout\ = ( \reg_file|reg13|OUT\(2) & ( \reg_file|reg12|OUT\(2) & ( (!\A_SEL[1]~input_o\) # ((!\A_SEL[0]~input_o\ & ((\reg_file|reg14|OUT\(2)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(2)))) ) ) ) # ( 
-- !\reg_file|reg13|OUT\(2) & ( \reg_file|reg12|OUT\(2) & ( (!\A_SEL[1]~input_o\ & (((!\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & ((\reg_file|reg14|OUT\(2)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(2))))) ) ) ) # ( 
-- \reg_file|reg13|OUT\(2) & ( !\reg_file|reg12|OUT\(2) & ( (!\A_SEL[1]~input_o\ & (((\A_SEL[0]~input_o\)))) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & ((\reg_file|reg14|OUT\(2)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(2))))) ) ) ) # ( 
-- !\reg_file|reg13|OUT\(2) & ( !\reg_file|reg12|OUT\(2) & ( (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\ & ((\reg_file|reg14|OUT\(2)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \reg_file|reg15|ALT_INV_OUT\(2),
	datac => \ALT_INV_A_SEL[0]~input_o\,
	datad => \reg_file|reg14|ALT_INV_OUT\(2),
	datae => \reg_file|reg13|ALT_INV_OUT\(2),
	dataf => \reg_file|reg12|ALT_INV_OUT\(2),
	combout => \reg_file|A_mul|Mux13~3_combout\);

-- Location: LABCELL_X31_Y5_N12
\reg_file|reg2|OUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg2|OUT[2]~feeder_combout\ = ( \m1|OUT[2]~69_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[2]~69_combout\,
	combout => \reg_file|reg2|OUT[2]~feeder_combout\);

-- Location: FF_X31_Y5_N13
\reg_file|reg2|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg2|OUT[2]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(2));

-- Location: FF_X30_Y5_N23
\reg_file|reg3|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(2));

-- Location: FF_X30_Y5_N56
\reg_file|reg1|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(2));

-- Location: FF_X30_Y5_N26
\reg_file|reg0|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(2));

-- Location: LABCELL_X30_Y5_N27
\reg_file|A_mul|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux13~0_combout\ = ( \reg_file|reg1|OUT\(2) & ( \reg_file|reg0|OUT\(2) & ( (!\A_SEL[1]~input_o\) # ((!\A_SEL[0]~input_o\ & (\reg_file|reg2|OUT\(2))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg3|OUT\(2))))) ) ) ) # ( !\reg_file|reg1|OUT\(2) & ( 
-- \reg_file|reg0|OUT\(2) & ( (!\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\) # ((\reg_file|reg2|OUT\(2))))) # (\A_SEL[0]~input_o\ & (\A_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(2))))) ) ) ) # ( \reg_file|reg1|OUT\(2) & ( !\reg_file|reg0|OUT\(2) & ( 
-- (!\A_SEL[0]~input_o\ & (\A_SEL[1]~input_o\ & (\reg_file|reg2|OUT\(2)))) # (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\) # ((\reg_file|reg3|OUT\(2))))) ) ) ) # ( !\reg_file|reg1|OUT\(2) & ( !\reg_file|reg0|OUT\(2) & ( (\A_SEL[1]~input_o\ & 
-- ((!\A_SEL[0]~input_o\ & (\reg_file|reg2|OUT\(2))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg3|OUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \ALT_INV_A_SEL[1]~input_o\,
	datac => \reg_file|reg2|ALT_INV_OUT\(2),
	datad => \reg_file|reg3|ALT_INV_OUT\(2),
	datae => \reg_file|reg1|ALT_INV_OUT\(2),
	dataf => \reg_file|reg0|ALT_INV_OUT\(2),
	combout => \reg_file|A_mul|Mux13~0_combout\);

-- Location: LABCELL_X35_Y5_N42
\reg_file|A_mul|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux13~4_combout\ = ( \reg_file|A_mul|Mux13~3_combout\ & ( \reg_file|A_mul|Mux13~0_combout\ & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\) # (\reg_file|A_mul|Mux13~1_combout\)))) # (\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\)) # 
-- (\reg_file|A_mul|Mux13~2_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux13~3_combout\ & ( \reg_file|A_mul|Mux13~0_combout\ & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\) # (\reg_file|A_mul|Mux13~1_combout\)))) # (\A_SEL[3]~input_o\ & 
-- (\reg_file|A_mul|Mux13~2_combout\ & ((!\A_SEL[2]~input_o\)))) ) ) ) # ( \reg_file|A_mul|Mux13~3_combout\ & ( !\reg_file|A_mul|Mux13~0_combout\ & ( (!\A_SEL[3]~input_o\ & (((\reg_file|A_mul|Mux13~1_combout\ & \A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & 
-- (((\A_SEL[2]~input_o\)) # (\reg_file|A_mul|Mux13~2_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux13~3_combout\ & ( !\reg_file|A_mul|Mux13~0_combout\ & ( (!\A_SEL[3]~input_o\ & (((\reg_file|A_mul|Mux13~1_combout\ & \A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ 
-- & (\reg_file|A_mul|Mux13~2_combout\ & ((!\A_SEL[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux13~2_combout\,
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \reg_file|A_mul|ALT_INV_Mux13~1_combout\,
	datad => \ALT_INV_A_SEL[2]~input_o\,
	datae => \reg_file|A_mul|ALT_INV_Mux13~3_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux13~0_combout\,
	combout => \reg_file|A_mul|Mux13~4_combout\);

-- Location: FF_X33_Y5_N32
\reg_file|reg5|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(1));

-- Location: FF_X32_Y5_N28
\reg_file|reg9|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(1));

-- Location: FF_X33_Y5_N56
\reg_file|reg1|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg1|OUT\(1));

-- Location: LABCELL_X28_Y5_N27
\reg_file|reg13|OUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg13|OUT[1]~feeder_combout\ = ( \m1|OUT[1]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[1]~7_combout\,
	combout => \reg_file|reg13|OUT[1]~feeder_combout\);

-- Location: FF_X28_Y5_N29
\reg_file|reg13|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg13|OUT[1]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(1));

-- Location: LABCELL_X33_Y5_N57
\reg_file|A_mul|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux14~1_combout\ = ( \reg_file|reg1|OUT\(1) & ( \reg_file|reg13|OUT\(1) & ( (!\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\) # ((\reg_file|reg5|OUT\(1))))) # (\A_SEL[3]~input_o\ & (((\reg_file|reg9|OUT\(1))) # (\A_SEL[2]~input_o\))) ) ) ) # ( 
-- !\reg_file|reg1|OUT\(1) & ( \reg_file|reg13|OUT\(1) & ( (!\A_SEL[3]~input_o\ & (\A_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(1)))) # (\A_SEL[3]~input_o\ & (((\reg_file|reg9|OUT\(1))) # (\A_SEL[2]~input_o\))) ) ) ) # ( \reg_file|reg1|OUT\(1) & ( 
-- !\reg_file|reg13|OUT\(1) & ( (!\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\) # ((\reg_file|reg5|OUT\(1))))) # (\A_SEL[3]~input_o\ & (!\A_SEL[2]~input_o\ & ((\reg_file|reg9|OUT\(1))))) ) ) ) # ( !\reg_file|reg1|OUT\(1) & ( !\reg_file|reg13|OUT\(1) & ( 
-- (!\A_SEL[3]~input_o\ & (\A_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(1)))) # (\A_SEL[3]~input_o\ & (!\A_SEL[2]~input_o\ & ((\reg_file|reg9|OUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[3]~input_o\,
	datab => \ALT_INV_A_SEL[2]~input_o\,
	datac => \reg_file|reg5|ALT_INV_OUT\(1),
	datad => \reg_file|reg9|ALT_INV_OUT\(1),
	datae => \reg_file|reg1|ALT_INV_OUT\(1),
	dataf => \reg_file|reg13|ALT_INV_OUT\(1),
	combout => \reg_file|A_mul|Mux14~1_combout\);

-- Location: FF_X31_Y5_N2
\reg_file|reg10|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg10|OUT\(1));

-- Location: FF_X30_Y2_N10
\reg_file|reg6|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(1));

-- Location: FF_X31_Y5_N53
\reg_file|reg2|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg2|OUT\(1));

-- Location: LABCELL_X31_Y5_N48
\reg_file|A_mul|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux14~2_combout\ = ( \A_SEL[3]~input_o\ & ( \reg_file|reg2|OUT\(1) & ( (!\A_SEL[2]~input_o\ & (\reg_file|reg10|OUT\(1))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg14|OUT\(1)))) ) ) ) # ( !\A_SEL[3]~input_o\ & ( \reg_file|reg2|OUT\(1) & ( 
-- (!\A_SEL[2]~input_o\) # (\reg_file|reg6|OUT\(1)) ) ) ) # ( \A_SEL[3]~input_o\ & ( !\reg_file|reg2|OUT\(1) & ( (!\A_SEL[2]~input_o\ & (\reg_file|reg10|OUT\(1))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg14|OUT\(1)))) ) ) ) # ( !\A_SEL[3]~input_o\ & ( 
-- !\reg_file|reg2|OUT\(1) & ( (\A_SEL[2]~input_o\ & \reg_file|reg6|OUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg10|ALT_INV_OUT\(1),
	datab => \ALT_INV_A_SEL[2]~input_o\,
	datac => \reg_file|reg6|ALT_INV_OUT\(1),
	datad => \reg_file|reg14|ALT_INV_OUT\(1),
	datae => \ALT_INV_A_SEL[3]~input_o\,
	dataf => \reg_file|reg2|ALT_INV_OUT\(1),
	combout => \reg_file|A_mul|Mux14~2_combout\);

-- Location: LABCELL_X35_Y5_N54
\reg_file|reg4|OUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg4|OUT[1]~feeder_combout\ = ( \m1|OUT[1]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[1]~7_combout\,
	combout => \reg_file|reg4|OUT[1]~feeder_combout\);

-- Location: FF_X35_Y5_N56
\reg_file|reg4|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg4|OUT[1]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg4|OUT\(1));

-- Location: FF_X33_Y5_N50
\reg_file|reg0|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg0|OUT\(1));

-- Location: FF_X32_Y5_N17
\reg_file|reg8|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(1));

-- Location: FF_X36_Y4_N41
\reg_file|reg12|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(1));

-- Location: LABCELL_X33_Y5_N51
\reg_file|A_mul|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux14~0_combout\ = ( \reg_file|reg8|OUT\(1) & ( \reg_file|reg12|OUT\(1) & ( ((!\A_SEL[2]~input_o\ & ((\reg_file|reg0|OUT\(1)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(1)))) # (\A_SEL[3]~input_o\) ) ) ) # ( !\reg_file|reg8|OUT\(1) & ( 
-- \reg_file|reg12|OUT\(1) & ( (!\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|reg0|OUT\(1)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(1))))) # (\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\)))) ) ) ) # ( \reg_file|reg8|OUT\(1) & ( 
-- !\reg_file|reg12|OUT\(1) & ( (!\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|reg0|OUT\(1)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(1))))) # (\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)))) ) ) ) # ( !\reg_file|reg8|OUT\(1) & ( 
-- !\reg_file|reg12|OUT\(1) & ( (!\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|reg0|OUT\(1)))) # (\A_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg4|ALT_INV_OUT\(1),
	datab => \ALT_INV_A_SEL[3]~input_o\,
	datac => \ALT_INV_A_SEL[2]~input_o\,
	datad => \reg_file|reg0|ALT_INV_OUT\(1),
	datae => \reg_file|reg8|ALT_INV_OUT\(1),
	dataf => \reg_file|reg12|ALT_INV_OUT\(1),
	combout => \reg_file|A_mul|Mux14~0_combout\);

-- Location: FF_X32_Y5_N56
\reg_file|reg11|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(1));

-- Location: MLABCELL_X32_Y7_N24
\reg_file|reg15|OUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg15|OUT[1]~feeder_combout\ = ( \m1|OUT[1]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[1]~7_combout\,
	combout => \reg_file|reg15|OUT[1]~feeder_combout\);

-- Location: FF_X32_Y7_N26
\reg_file|reg15|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg15|OUT[1]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(1));

-- Location: LABCELL_X31_Y7_N3
\reg_file|reg7|OUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg7|OUT[1]~feeder_combout\ = ( \m1|OUT[1]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[1]~7_combout\,
	combout => \reg_file|reg7|OUT[1]~feeder_combout\);

-- Location: FF_X31_Y7_N5
\reg_file|reg7|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg7|OUT[1]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(1));

-- Location: LABCELL_X31_Y7_N42
\reg_file|reg3|OUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|reg3|OUT[1]~feeder_combout\ = ( \m1|OUT[1]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_OUT[1]~7_combout\,
	combout => \reg_file|reg3|OUT[1]~feeder_combout\);

-- Location: FF_X31_Y7_N44
\reg_file|reg3|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \reg_file|reg3|OUT[1]~feeder_combout\,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(1));

-- Location: LABCELL_X31_Y7_N39
\reg_file|A_mul|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux14~3_combout\ = ( \reg_file|reg7|OUT\(1) & ( \reg_file|reg3|OUT\(1) & ( (!\A_SEL[3]~input_o\) # ((!\A_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(1))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(1))))) ) ) ) # ( !\reg_file|reg7|OUT\(1) & 
-- ( \reg_file|reg3|OUT\(1) & ( (!\A_SEL[3]~input_o\ & (((!\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(1))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(1)))))) ) ) ) # ( \reg_file|reg7|OUT\(1) & ( 
-- !\reg_file|reg3|OUT\(1) & ( (!\A_SEL[3]~input_o\ & (((\A_SEL[2]~input_o\)))) # (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(1))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(1)))))) ) ) ) # ( !\reg_file|reg7|OUT\(1) & ( 
-- !\reg_file|reg3|OUT\(1) & ( (\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(1))) # (\A_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[3]~input_o\,
	datab => \reg_file|reg11|ALT_INV_OUT\(1),
	datac => \reg_file|reg15|ALT_INV_OUT\(1),
	datad => \ALT_INV_A_SEL[2]~input_o\,
	datae => \reg_file|reg7|ALT_INV_OUT\(1),
	dataf => \reg_file|reg3|ALT_INV_OUT\(1),
	combout => \reg_file|A_mul|Mux14~3_combout\);

-- Location: LABCELL_X31_Y5_N3
\reg_file|A_mul|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux14~4_combout\ = ( \reg_file|A_mul|Mux14~0_combout\ & ( \reg_file|A_mul|Mux14~3_combout\ & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\) # (\reg_file|A_mul|Mux14~2_combout\)))) # (\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)) # 
-- (\reg_file|A_mul|Mux14~1_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux14~0_combout\ & ( \reg_file|A_mul|Mux14~3_combout\ & ( (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\ & \reg_file|A_mul|Mux14~2_combout\)))) # (\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)) # 
-- (\reg_file|A_mul|Mux14~1_combout\))) ) ) ) # ( \reg_file|A_mul|Mux14~0_combout\ & ( !\reg_file|A_mul|Mux14~3_combout\ & ( (!\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\) # (\reg_file|A_mul|Mux14~2_combout\)))) # (\A_SEL[0]~input_o\ & 
-- (\reg_file|A_mul|Mux14~1_combout\ & (!\A_SEL[1]~input_o\))) ) ) ) # ( !\reg_file|A_mul|Mux14~0_combout\ & ( !\reg_file|A_mul|Mux14~3_combout\ & ( (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\ & \reg_file|A_mul|Mux14~2_combout\)))) # (\A_SEL[0]~input_o\ & 
-- (\reg_file|A_mul|Mux14~1_combout\ & (!\A_SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \reg_file|A_mul|ALT_INV_Mux14~1_combout\,
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux14~2_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux14~0_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux14~3_combout\,
	combout => \reg_file|A_mul|Mux14~4_combout\);

-- Location: LABCELL_X30_Y4_N18
\func_unit|_alu|au|s|s1|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s1|SH1~combout\ = ( \reg_file|A_mul|Mux15~4_combout\ & ( (!\func_unit|_alu|au|Add0~1_sumout\ & (\reg_file|A_mul|Mux14~4_combout\ & \func_unit|_alu|au|Add0~5_sumout\)) # (\func_unit|_alu|au|Add0~1_sumout\ & 
-- ((\func_unit|_alu|au|Add0~5_sumout\) # (\reg_file|A_mul|Mux14~4_combout\))) ) ) # ( !\reg_file|A_mul|Mux15~4_combout\ & ( (\reg_file|A_mul|Mux14~4_combout\ & \func_unit|_alu|au|Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|ALT_INV_Add0~1_sumout\,
	datac => \reg_file|A_mul|ALT_INV_Mux14~4_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~5_sumout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux15~4_combout\,
	combout => \func_unit|_alu|au|s|s1|SH1~combout\);

-- Location: LABCELL_X30_Y4_N54
\func_unit|_alu|au|s|s3|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s3|SH1~combout\ = ( \func_unit|_alu|au|s|s1|SH1~combout\ & ( (!\reg_file|A_mul|Mux12~4_combout\ & (\func_unit|_alu|au|Add0~13_sumout\ & ((\func_unit|_alu|au|Add0~9_sumout\) # (\reg_file|A_mul|Mux13~4_combout\)))) # 
-- (\reg_file|A_mul|Mux12~4_combout\ & (((\func_unit|_alu|au|Add0~13_sumout\) # (\func_unit|_alu|au|Add0~9_sumout\)) # (\reg_file|A_mul|Mux13~4_combout\))) ) ) # ( !\func_unit|_alu|au|s|s1|SH1~combout\ & ( (!\reg_file|A_mul|Mux12~4_combout\ & 
-- (\reg_file|A_mul|Mux13~4_combout\ & (\func_unit|_alu|au|Add0~9_sumout\ & \func_unit|_alu|au|Add0~13_sumout\))) # (\reg_file|A_mul|Mux12~4_combout\ & (((\reg_file|A_mul|Mux13~4_combout\ & \func_unit|_alu|au|Add0~9_sumout\)) # 
-- (\func_unit|_alu|au|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux12~4_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux13~4_combout\,
	datac => \func_unit|_alu|au|ALT_INV_Add0~9_sumout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~13_sumout\,
	dataf => \func_unit|_alu|au|s|s1|ALT_INV_SH1~combout\,
	combout => \func_unit|_alu|au|s|s3|SH1~combout\);

-- Location: LABCELL_X30_Y4_N57
\func_unit|_alu|au|s|s6|SH1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s6|SH1~0_combout\ = ( \func_unit|_alu|au|Add0~25_sumout\ & ( !\reg_file|A_mul|Mux9~4_combout\ ) ) # ( !\func_unit|_alu|au|Add0~25_sumout\ & ( \reg_file|A_mul|Mux9~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_file|A_mul|ALT_INV_Mux9~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~25_sumout\,
	combout => \func_unit|_alu|au|s|s6|SH1~0_combout\);

-- Location: LABCELL_X30_Y4_N30
\func_unit|_alu|au|s|s6|SH1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s6|SH1~1_combout\ = ( \func_unit|_alu|au|s|s3|SH1~combout\ & ( \func_unit|_alu|au|s|s6|SH1~0_combout\ & ( (!\reg_file|A_mul|Mux10~4_combout\ & (\func_unit|_alu|au|Add0~21_sumout\ & ((\reg_file|A_mul|Mux11~4_combout\) # 
-- (\func_unit|_alu|au|Add0~17_sumout\)))) # (\reg_file|A_mul|Mux10~4_combout\ & (((\reg_file|A_mul|Mux11~4_combout\) # (\func_unit|_alu|au|Add0~21_sumout\)) # (\func_unit|_alu|au|Add0~17_sumout\))) ) ) ) # ( !\func_unit|_alu|au|s|s3|SH1~combout\ & ( 
-- \func_unit|_alu|au|s|s6|SH1~0_combout\ & ( (!\reg_file|A_mul|Mux10~4_combout\ & (\func_unit|_alu|au|Add0~17_sumout\ & (\func_unit|_alu|au|Add0~21_sumout\ & \reg_file|A_mul|Mux11~4_combout\))) # (\reg_file|A_mul|Mux10~4_combout\ & 
-- (((\func_unit|_alu|au|Add0~17_sumout\ & \reg_file|A_mul|Mux11~4_combout\)) # (\func_unit|_alu|au|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000101110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux10~4_combout\,
	datab => \func_unit|_alu|au|ALT_INV_Add0~17_sumout\,
	datac => \func_unit|_alu|au|ALT_INV_Add0~21_sumout\,
	datad => \reg_file|A_mul|ALT_INV_Mux11~4_combout\,
	datae => \func_unit|_alu|au|s|s3|ALT_INV_SH1~combout\,
	dataf => \func_unit|_alu|au|s|s6|ALT_INV_SH1~0_combout\,
	combout => \func_unit|_alu|au|s|s6|SH1~1_combout\);

-- Location: LABCELL_X30_Y4_N6
\func_unit|_alu|au|s|s8|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s8|SH1~combout\ = ( \func_unit|_alu|au|s|s6|SH1~2_combout\ & ( \func_unit|_alu|au|s|s6|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux7~4_combout\ & ((!\func_unit|_alu|au|Add0~33_sumout\) # ((!\func_unit|_alu|au|Add0~29_sumout\ & 
-- !\reg_file|A_mul|Mux8~4_combout\)))) # (\reg_file|A_mul|Mux7~4_combout\ & (!\func_unit|_alu|au|Add0~29_sumout\ & (!\reg_file|A_mul|Mux8~4_combout\ & !\func_unit|_alu|au|Add0~33_sumout\))) ) ) ) # ( !\func_unit|_alu|au|s|s6|SH1~2_combout\ & ( 
-- \func_unit|_alu|au|s|s6|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux7~4_combout\ & ((!\func_unit|_alu|au|Add0~33_sumout\) # ((!\func_unit|_alu|au|Add0~29_sumout\ & !\reg_file|A_mul|Mux8~4_combout\)))) # (\reg_file|A_mul|Mux7~4_combout\ & 
-- (!\func_unit|_alu|au|Add0~29_sumout\ & (!\reg_file|A_mul|Mux8~4_combout\ & !\func_unit|_alu|au|Add0~33_sumout\))) ) ) ) # ( \func_unit|_alu|au|s|s6|SH1~2_combout\ & ( !\func_unit|_alu|au|s|s6|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux7~4_combout\ & 
-- ((!\func_unit|_alu|au|Add0~33_sumout\) # ((!\func_unit|_alu|au|Add0~29_sumout\ & !\reg_file|A_mul|Mux8~4_combout\)))) # (\reg_file|A_mul|Mux7~4_combout\ & (!\func_unit|_alu|au|Add0~29_sumout\ & (!\reg_file|A_mul|Mux8~4_combout\ & 
-- !\func_unit|_alu|au|Add0~33_sumout\))) ) ) ) # ( !\func_unit|_alu|au|s|s6|SH1~2_combout\ & ( !\func_unit|_alu|au|s|s6|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux7~4_combout\ & ((!\func_unit|_alu|au|Add0~29_sumout\) # ((!\reg_file|A_mul|Mux8~4_combout\) # 
-- (!\func_unit|_alu|au|Add0~33_sumout\)))) # (\reg_file|A_mul|Mux7~4_combout\ & (!\func_unit|_alu|au|Add0~33_sumout\ & ((!\func_unit|_alu|au|Add0~29_sumout\) # (!\reg_file|A_mul|Mux8~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011100000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|ALT_INV_Add0~29_sumout\,
	datab => \reg_file|A_mul|ALT_INV_Mux8~4_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux7~4_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~33_sumout\,
	datae => \func_unit|_alu|au|s|s6|ALT_INV_SH1~2_combout\,
	dataf => \func_unit|_alu|au|s|s6|ALT_INV_SH1~1_combout\,
	combout => \func_unit|_alu|au|s|s8|SH1~combout\);

-- Location: LABCELL_X30_Y4_N12
\func_unit|_alu|au|s|s11|SH1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s11|SH1~1_combout\ = ( \func_unit|_alu|au|s|s9|SH1~1_combout\ & ( \func_unit|_alu|au|s|s8|SH1~combout\ & ( (\func_unit|_alu|au|s|s11|SH1~0_combout\ & ((\func_unit|_alu|au|Add0~41_sumout\) # (\reg_file|A_mul|Mux5~4_combout\))) ) ) ) # 
-- ( !\func_unit|_alu|au|s|s9|SH1~1_combout\ & ( \func_unit|_alu|au|s|s8|SH1~combout\ & ( (\reg_file|A_mul|Mux5~4_combout\ & (\func_unit|_alu|au|s|s11|SH1~0_combout\ & \func_unit|_alu|au|Add0~41_sumout\)) ) ) ) # ( \func_unit|_alu|au|s|s9|SH1~1_combout\ & ( 
-- !\func_unit|_alu|au|s|s8|SH1~combout\ & ( (\func_unit|_alu|au|s|s11|SH1~0_combout\ & ((\func_unit|_alu|au|Add0~41_sumout\) # (\reg_file|A_mul|Mux5~4_combout\))) ) ) ) # ( !\func_unit|_alu|au|s|s9|SH1~1_combout\ & ( !\func_unit|_alu|au|s|s8|SH1~combout\ & 
-- ( (\func_unit|_alu|au|s|s11|SH1~0_combout\ & ((!\func_unit|_alu|au|s|s9|SH1~0_combout\ & (\reg_file|A_mul|Mux5~4_combout\ & \func_unit|_alu|au|Add0~41_sumout\)) # (\func_unit|_alu|au|s|s9|SH1~0_combout\ & ((\func_unit|_alu|au|Add0~41_sumout\) # 
-- (\reg_file|A_mul|Mux5~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000110000111100000000000000110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|s|s9|ALT_INV_SH1~0_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux5~4_combout\,
	datac => \func_unit|_alu|au|s|s11|ALT_INV_SH1~0_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~41_sumout\,
	datae => \func_unit|_alu|au|s|s9|ALT_INV_SH1~1_combout\,
	dataf => \func_unit|_alu|au|s|s8|ALT_INV_SH1~combout\,
	combout => \func_unit|_alu|au|s|s11|SH1~1_combout\);

-- Location: LABCELL_X30_Y4_N42
\func_unit|_alu|au|s|s13|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s13|SH1~combout\ = ( \reg_file|A_mul|Mux3~4_combout\ & ( \func_unit|_alu|au|s|s11|SH1~1_combout\ & ( (!\func_unit|_alu|au|Add0~53_sumout\ & !\reg_file|A_mul|Mux2~4_combout\) ) ) ) # ( !\reg_file|A_mul|Mux3~4_combout\ & ( 
-- \func_unit|_alu|au|s|s11|SH1~1_combout\ & ( (!\func_unit|_alu|au|Add0~49_sumout\ & ((!\func_unit|_alu|au|Add0~53_sumout\) # (!\reg_file|A_mul|Mux2~4_combout\))) # (\func_unit|_alu|au|Add0~49_sumout\ & (!\func_unit|_alu|au|Add0~53_sumout\ & 
-- !\reg_file|A_mul|Mux2~4_combout\)) ) ) ) # ( \reg_file|A_mul|Mux3~4_combout\ & ( !\func_unit|_alu|au|s|s11|SH1~1_combout\ & ( (!\func_unit|_alu|au|Add0~53_sumout\ & ((!\reg_file|A_mul|Mux2~4_combout\) # ((!\func_unit|_alu|au|s|s11|SH1~2_combout\ & 
-- !\func_unit|_alu|au|Add0~49_sumout\)))) # (\func_unit|_alu|au|Add0~53_sumout\ & (!\func_unit|_alu|au|s|s11|SH1~2_combout\ & (!\func_unit|_alu|au|Add0~49_sumout\ & !\reg_file|A_mul|Mux2~4_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux3~4_combout\ & ( 
-- !\func_unit|_alu|au|s|s11|SH1~1_combout\ & ( (!\func_unit|_alu|au|Add0~53_sumout\ & ((!\func_unit|_alu|au|s|s11|SH1~2_combout\) # ((!\func_unit|_alu|au|Add0~49_sumout\) # (!\reg_file|A_mul|Mux2~4_combout\)))) # (\func_unit|_alu|au|Add0~53_sumout\ & 
-- (!\reg_file|A_mul|Mux2~4_combout\ & ((!\func_unit|_alu|au|s|s11|SH1~2_combout\) # (!\func_unit|_alu|au|Add0~49_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011100000111110001000000011111100110000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|s|s11|ALT_INV_SH1~2_combout\,
	datab => \func_unit|_alu|au|ALT_INV_Add0~49_sumout\,
	datac => \func_unit|_alu|au|ALT_INV_Add0~53_sumout\,
	datad => \reg_file|A_mul|ALT_INV_Mux2~4_combout\,
	datae => \reg_file|A_mul|ALT_INV_Mux3~4_combout\,
	dataf => \func_unit|_alu|au|s|s11|ALT_INV_SH1~1_combout\,
	combout => \func_unit|_alu|au|s|s13|SH1~combout\);

-- Location: LABCELL_X30_Y4_N39
\m1|OUT[15]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[15]~48_combout\ = ( \func_unit|_alu|au|s|s15|REG~0_combout\ & ( \func_unit|_alu|au|s|s13|SH1~combout\ & ( ((\m1|OUT[15]~45_combout\ & ((!\reg_file|A_mul|Mux1~4_combout\) # (!\func_unit|_alu|au|Add0~57_sumout\)))) # (\m1|OUT[15]~47_combout\) ) ) ) 
-- # ( !\func_unit|_alu|au|s|s15|REG~0_combout\ & ( \func_unit|_alu|au|s|s13|SH1~combout\ & ( ((\reg_file|A_mul|Mux1~4_combout\ & (\m1|OUT[15]~45_combout\ & \func_unit|_alu|au|Add0~57_sumout\))) # (\m1|OUT[15]~47_combout\) ) ) ) # ( 
-- \func_unit|_alu|au|s|s15|REG~0_combout\ & ( !\func_unit|_alu|au|s|s13|SH1~combout\ & ( ((!\reg_file|A_mul|Mux1~4_combout\ & (\m1|OUT[15]~45_combout\ & !\func_unit|_alu|au|Add0~57_sumout\))) # (\m1|OUT[15]~47_combout\) ) ) ) # ( 
-- !\func_unit|_alu|au|s|s15|REG~0_combout\ & ( !\func_unit|_alu|au|s|s13|SH1~combout\ & ( ((\m1|OUT[15]~45_combout\ & ((\func_unit|_alu|au|Add0~57_sumout\) # (\reg_file|A_mul|Mux1~4_combout\)))) # (\m1|OUT[15]~47_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100111111001110110011001100110011001101110011111100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux1~4_combout\,
	datab => \m1|ALT_INV_OUT[15]~47_combout\,
	datac => \m1|ALT_INV_OUT[15]~45_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~57_sumout\,
	datae => \func_unit|_alu|au|s|s15|ALT_INV_REG~0_combout\,
	dataf => \func_unit|_alu|au|s|s13|ALT_INV_SH1~combout\,
	combout => \m1|OUT[15]~48_combout\);

-- Location: FF_X31_Y6_N8
\reg_file|reg7|OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[15]~48_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(15));

-- Location: LABCELL_X31_Y6_N0
\reg_file|B_mul|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux0~3_combout\ = ( \reg_file|reg3|OUT\(15) & ( \reg_file|reg15|OUT\(15) & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\)) # (\reg_file|reg7|OUT\(15)))) # (\B_SEL[3]~input_o\ & (((\reg_file|reg11|OUT\(15)) # (\B_SEL[2]~input_o\)))) ) ) ) 
-- # ( !\reg_file|reg3|OUT\(15) & ( \reg_file|reg15|OUT\(15) & ( (!\B_SEL[3]~input_o\ & (\reg_file|reg7|OUT\(15) & (\B_SEL[2]~input_o\))) # (\B_SEL[3]~input_o\ & (((\reg_file|reg11|OUT\(15)) # (\B_SEL[2]~input_o\)))) ) ) ) # ( \reg_file|reg3|OUT\(15) & ( 
-- !\reg_file|reg15|OUT\(15) & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\)) # (\reg_file|reg7|OUT\(15)))) # (\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\ & \reg_file|reg11|OUT\(15))))) ) ) ) # ( !\reg_file|reg3|OUT\(15) & ( !\reg_file|reg15|OUT\(15) & ( 
-- (!\B_SEL[3]~input_o\ & (\reg_file|reg7|OUT\(15) & (\B_SEL[2]~input_o\))) # (\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\ & \reg_file|reg11|OUT\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \reg_file|reg7|ALT_INV_OUT\(15),
	datac => \ALT_INV_B_SEL[2]~input_o\,
	datad => \reg_file|reg11|ALT_INV_OUT\(15),
	datae => \reg_file|reg3|ALT_INV_OUT\(15),
	dataf => \reg_file|reg15|ALT_INV_OUT\(15),
	combout => \reg_file|B_mul|Mux0~3_combout\);

-- Location: LABCELL_X36_Y4_N36
\reg_file|B_mul|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux0~0_combout\ = ( \B_SEL[3]~input_o\ & ( \reg_file|reg0|OUT\(15) & ( (!\B_SEL[2]~input_o\ & (\reg_file|reg8|OUT\(15))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg12|OUT\(15)))) ) ) ) # ( !\B_SEL[3]~input_o\ & ( \reg_file|reg0|OUT\(15) & ( 
-- (!\B_SEL[2]~input_o\) # (\reg_file|reg4|OUT\(15)) ) ) ) # ( \B_SEL[3]~input_o\ & ( !\reg_file|reg0|OUT\(15) & ( (!\B_SEL[2]~input_o\ & (\reg_file|reg8|OUT\(15))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg12|OUT\(15)))) ) ) ) # ( !\B_SEL[3]~input_o\ & ( 
-- !\reg_file|reg0|OUT\(15) & ( (\B_SEL[2]~input_o\ & \reg_file|reg4|OUT\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg8|ALT_INV_OUT\(15),
	datab => \reg_file|reg12|ALT_INV_OUT\(15),
	datac => \ALT_INV_B_SEL[2]~input_o\,
	datad => \reg_file|reg4|ALT_INV_OUT\(15),
	datae => \ALT_INV_B_SEL[3]~input_o\,
	dataf => \reg_file|reg0|ALT_INV_OUT\(15),
	combout => \reg_file|B_mul|Mux0~0_combout\);

-- Location: LABCELL_X31_Y5_N33
\reg_file|B_mul|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux0~2_combout\ = ( \reg_file|reg6|OUT\(15) & ( \reg_file|reg10|OUT\(15) & ( (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\)) # (\reg_file|reg2|OUT\(15)))) # (\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\) # (\reg_file|reg14|OUT\(15))))) ) ) ) 
-- # ( !\reg_file|reg6|OUT\(15) & ( \reg_file|reg10|OUT\(15) & ( (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\)) # (\reg_file|reg2|OUT\(15)))) # (\B_SEL[2]~input_o\ & (((\reg_file|reg14|OUT\(15) & \B_SEL[3]~input_o\)))) ) ) ) # ( \reg_file|reg6|OUT\(15) & ( 
-- !\reg_file|reg10|OUT\(15) & ( (!\B_SEL[2]~input_o\ & (\reg_file|reg2|OUT\(15) & ((!\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\) # (\reg_file|reg14|OUT\(15))))) ) ) ) # ( !\reg_file|reg6|OUT\(15) & ( !\reg_file|reg10|OUT\(15) & ( 
-- (!\B_SEL[2]~input_o\ & (\reg_file|reg2|OUT\(15) & ((!\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & (((\reg_file|reg14|OUT\(15) & \B_SEL[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg2|ALT_INV_OUT\(15),
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|reg14|ALT_INV_OUT\(15),
	datad => \ALT_INV_B_SEL[3]~input_o\,
	datae => \reg_file|reg6|ALT_INV_OUT\(15),
	dataf => \reg_file|reg10|ALT_INV_OUT\(15),
	combout => \reg_file|B_mul|Mux0~2_combout\);

-- Location: LABCELL_X27_Y4_N18
\reg_file|B_mul|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux0~1_combout\ = ( \reg_file|reg1|OUT\(15) & ( \reg_file|reg9|OUT\(15) & ( (!\B_SEL[2]~input_o\) # ((!\B_SEL[3]~input_o\ & ((\reg_file|reg5|OUT\(15)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg13|OUT\(15)))) ) ) ) # ( 
-- !\reg_file|reg1|OUT\(15) & ( \reg_file|reg9|OUT\(15) & ( (!\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\ & \reg_file|reg5|OUT\(15))))) # (\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\)) # (\reg_file|reg13|OUT\(15)))) ) ) ) # ( \reg_file|reg1|OUT\(15) & ( 
-- !\reg_file|reg9|OUT\(15) & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\) # (\reg_file|reg5|OUT\(15))))) # (\B_SEL[3]~input_o\ & (\reg_file|reg13|OUT\(15) & (\B_SEL[2]~input_o\))) ) ) ) # ( !\reg_file|reg1|OUT\(15) & ( !\reg_file|reg9|OUT\(15) & ( 
-- (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg5|OUT\(15)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg13|OUT\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \reg_file|reg13|ALT_INV_OUT\(15),
	datac => \ALT_INV_B_SEL[2]~input_o\,
	datad => \reg_file|reg5|ALT_INV_OUT\(15),
	datae => \reg_file|reg1|ALT_INV_OUT\(15),
	dataf => \reg_file|reg9|ALT_INV_OUT\(15),
	combout => \reg_file|B_mul|Mux0~1_combout\);

-- Location: LABCELL_X35_Y4_N3
\reg_file|B_mul|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux0~4_combout\ = ( \reg_file|B_mul|Mux0~2_combout\ & ( \reg_file|B_mul|Mux0~1_combout\ & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\) # (\reg_file|B_mul|Mux0~0_combout\)))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # 
-- (\reg_file|B_mul|Mux0~3_combout\))) ) ) ) # ( !\reg_file|B_mul|Mux0~2_combout\ & ( \reg_file|B_mul|Mux0~1_combout\ & ( (!\B_SEL[0]~input_o\ & (((\reg_file|B_mul|Mux0~0_combout\ & !\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # 
-- (\reg_file|B_mul|Mux0~3_combout\))) ) ) ) # ( \reg_file|B_mul|Mux0~2_combout\ & ( !\reg_file|B_mul|Mux0~1_combout\ & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\) # (\reg_file|B_mul|Mux0~0_combout\)))) # (\B_SEL[0]~input_o\ & 
-- (\reg_file|B_mul|Mux0~3_combout\ & ((\B_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|B_mul|Mux0~2_combout\ & ( !\reg_file|B_mul|Mux0~1_combout\ & ( (!\B_SEL[0]~input_o\ & (((\reg_file|B_mul|Mux0~0_combout\ & !\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & 
-- (\reg_file|B_mul|Mux0~3_combout\ & ((\B_SEL[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|B_mul|ALT_INV_Mux0~3_combout\,
	datac => \reg_file|B_mul|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_B_SEL[1]~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux0~2_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux0~1_combout\,
	combout => \reg_file|B_mul|Mux0~4_combout\);

-- Location: LABCELL_X36_Y4_N24
\m0|OUT[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[15]~15_combout\ = ( \reg_file|B_mul|Mux0~4_combout\ & ( (!\CONST_SEL~input_o\) # (\CONST_IN[15]~input_o\) ) ) # ( !\reg_file|B_mul|Mux0~4_combout\ & ( (\CONST_SEL~input_o\ & \CONST_IN[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CONST_SEL~input_o\,
	datad => \ALT_INV_CONST_IN[15]~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux0~4_combout\,
	combout => \m0|OUT[15]~15_combout\);

-- Location: LABCELL_X36_Y4_N0
\m1|OUT[14]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[14]~42_combout\ = ( \m0|OUT[13]~13_combout\ & ( \m0|OUT[15]~15_combout\ & ( (!\DATA_SEL~input_o\ & ((\OP_SEL[3]~input_o\))) # (\DATA_SEL~input_o\ & (\DATA_IN[14]~input_o\)) ) ) ) # ( !\m0|OUT[13]~13_combout\ & ( \m0|OUT[15]~15_combout\ & ( 
-- (!\DATA_SEL~input_o\ & (((\OP_SEL[0]~input_o\ & \OP_SEL[3]~input_o\)))) # (\DATA_SEL~input_o\ & (\DATA_IN[14]~input_o\)) ) ) ) # ( \m0|OUT[13]~13_combout\ & ( !\m0|OUT[15]~15_combout\ & ( (!\DATA_SEL~input_o\ & (((!\OP_SEL[0]~input_o\ & 
-- \OP_SEL[3]~input_o\)))) # (\DATA_SEL~input_o\ & (\DATA_IN[14]~input_o\)) ) ) ) # ( !\m0|OUT[13]~13_combout\ & ( !\m0|OUT[15]~15_combout\ & ( (\DATA_IN[14]~input_o\ & \DATA_SEL~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011101000100010001000111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_IN[14]~input_o\,
	datab => \ALT_INV_DATA_SEL~input_o\,
	datac => \ALT_INV_OP_SEL[0]~input_o\,
	datad => \ALT_INV_OP_SEL[3]~input_o\,
	datae => \m0|ALT_INV_OUT[13]~13_combout\,
	dataf => \m0|ALT_INV_OUT[15]~15_combout\,
	combout => \m1|OUT[14]~42_combout\);

-- Location: LABCELL_X28_Y4_N42
\m1|OUT[14]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[14]~41_combout\ = ( \CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux1~4_combout\ & ( (!\reg_file|A_mul|Mux1~4_combout\ & ((!\OP_SEL[0]~input_o\ & (\CONST_IN[14]~input_o\ & \OP_SEL[1]~input_o\)) # (\OP_SEL[0]~input_o\ & ((\OP_SEL[1]~input_o\) # 
-- (\CONST_IN[14]~input_o\))))) # (\reg_file|A_mul|Mux1~4_combout\ & (!\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & !\CONST_IN[14]~input_o\))))) ) ) ) # ( !\CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux1~4_combout\ & ( (!\reg_file|A_mul|Mux1~4_combout\ & 
-- ((\OP_SEL[1]~input_o\) # (\OP_SEL[0]~input_o\))) # (\reg_file|A_mul|Mux1~4_combout\ & ((!\OP_SEL[1]~input_o\))) ) ) ) # ( \CONST_SEL~input_o\ & ( !\reg_file|B_mul|Mux1~4_combout\ & ( (!\reg_file|A_mul|Mux1~4_combout\ & ((!\OP_SEL[0]~input_o\ & 
-- (\CONST_IN[14]~input_o\ & \OP_SEL[1]~input_o\)) # (\OP_SEL[0]~input_o\ & ((\OP_SEL[1]~input_o\) # (\CONST_IN[14]~input_o\))))) # (\reg_file|A_mul|Mux1~4_combout\ & (!\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & !\CONST_IN[14]~input_o\))))) ) ) ) # ( 
-- !\CONST_SEL~input_o\ & ( !\reg_file|B_mul|Mux1~4_combout\ & ( (!\OP_SEL[0]~input_o\ & (\reg_file|A_mul|Mux1~4_combout\ & \OP_SEL[1]~input_o\)) # (\OP_SEL[0]~input_o\ & (!\reg_file|A_mul|Mux1~4_combout\ $ (!\OP_SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011010000101110111100001011111111100000001011101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[0]~input_o\,
	datab => \ALT_INV_CONST_IN[14]~input_o\,
	datac => \reg_file|A_mul|ALT_INV_Mux1~4_combout\,
	datad => \ALT_INV_OP_SEL[1]~input_o\,
	datae => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux1~4_combout\,
	combout => \m1|OUT[14]~41_combout\);

-- Location: LABCELL_X35_Y4_N30
\m1|OUT[14]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[14]~43_combout\ = ( \m1|OUT[14]~41_combout\ & ( (!\m1|OUT[14]~42_combout\ & (((!\OP_SEL[2]~input_o\) # (\OP_SEL[3]~input_o\)) # (\DATA_SEL~input_o\))) ) ) # ( !\m1|OUT[14]~41_combout\ & ( !\m1|OUT[14]~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000011100001111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[3]~input_o\,
	datac => \m1|ALT_INV_OUT[14]~42_combout\,
	datad => \ALT_INV_OP_SEL[2]~input_o\,
	dataf => \m1|ALT_INV_OUT[14]~41_combout\,
	combout => \m1|OUT[14]~43_combout\);

-- Location: LABCELL_X30_Y6_N45
\func_unit|_alu|au|s|s10|SH1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s10|SH1~2_combout\ = ( \func_unit|_alu|au|Add0~41_sumout\ & ( \reg_file|A_mul|Mux5~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|A_mul|ALT_INV_Mux5~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~41_sumout\,
	combout => \func_unit|_alu|au|s|s10|SH1~2_combout\);

-- Location: LABCELL_X30_Y6_N42
\func_unit|_alu|au|s|s10|SH1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s10|SH1~0_combout\ = ( \func_unit|_alu|au|Add0~41_sumout\ & ( !\reg_file|A_mul|Mux5~4_combout\ ) ) # ( !\func_unit|_alu|au|Add0~41_sumout\ & ( \reg_file|A_mul|Mux5~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|A_mul|ALT_INV_Mux5~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~41_sumout\,
	combout => \func_unit|_alu|au|s|s10|SH1~0_combout\);

-- Location: LABCELL_X30_Y6_N6
\func_unit|_alu|au|s|s5|SH1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s5|SH1~2_combout\ = ( \reg_file|A_mul|Mux10~4_combout\ & ( \func_unit|_alu|au|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \reg_file|A_mul|ALT_INV_Mux10~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~21_sumout\,
	combout => \func_unit|_alu|au|s|s5|SH1~2_combout\);

-- Location: MLABCELL_X32_Y4_N57
\func_unit|_alu|au|s|s5|SH1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s5|SH1~0_combout\ = ( \func_unit|_alu|au|Add0~21_sumout\ & ( !\reg_file|A_mul|Mux10~4_combout\ ) ) # ( !\func_unit|_alu|au|Add0~21_sumout\ & ( \reg_file|A_mul|Mux10~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_file|A_mul|ALT_INV_Mux10~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~21_sumout\,
	combout => \func_unit|_alu|au|s|s5|SH1~0_combout\);

-- Location: MLABCELL_X32_Y4_N30
\func_unit|_alu|au|s|s2|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s2|SH1~combout\ = ( \func_unit|_alu|au|Add0~9_sumout\ & ( \func_unit|_alu|au|Add0~5_sumout\ & ( (((\reg_file|A_mul|Mux15~4_combout\ & \func_unit|_alu|au|Add0~1_sumout\)) # (\reg_file|A_mul|Mux14~4_combout\)) # 
-- (\reg_file|A_mul|Mux13~4_combout\) ) ) ) # ( !\func_unit|_alu|au|Add0~9_sumout\ & ( \func_unit|_alu|au|Add0~5_sumout\ & ( (\reg_file|A_mul|Mux13~4_combout\ & (((\reg_file|A_mul|Mux15~4_combout\ & \func_unit|_alu|au|Add0~1_sumout\)) # 
-- (\reg_file|A_mul|Mux14~4_combout\))) ) ) ) # ( \func_unit|_alu|au|Add0~9_sumout\ & ( !\func_unit|_alu|au|Add0~5_sumout\ & ( ((\reg_file|A_mul|Mux15~4_combout\ & (\reg_file|A_mul|Mux14~4_combout\ & \func_unit|_alu|au|Add0~1_sumout\))) # 
-- (\reg_file|A_mul|Mux13~4_combout\) ) ) ) # ( !\func_unit|_alu|au|Add0~9_sumout\ & ( !\func_unit|_alu|au|Add0~5_sumout\ & ( (\reg_file|A_mul|Mux15~4_combout\ & (\reg_file|A_mul|Mux13~4_combout\ & (\reg_file|A_mul|Mux14~4_combout\ & 
-- \func_unit|_alu|au|Add0~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001001100110011011100000011000100110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux15~4_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux13~4_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux14~4_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~1_sumout\,
	datae => \func_unit|_alu|au|ALT_INV_Add0~9_sumout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~5_sumout\,
	combout => \func_unit|_alu|au|s|s2|SH1~combout\);

-- Location: LABCELL_X31_Y6_N48
\func_unit|_alu|au|s|s5|SH1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s5|SH1~1_combout\ = ( \func_unit|_alu|au|s|s5|SH1~0_combout\ & ( \func_unit|_alu|au|s|s2|SH1~combout\ & ( (!\reg_file|A_mul|Mux11~4_combout\ & (\func_unit|_alu|au|Add0~17_sumout\ & ((\func_unit|_alu|au|Add0~13_sumout\) # 
-- (\reg_file|A_mul|Mux12~4_combout\)))) # (\reg_file|A_mul|Mux11~4_combout\ & (((\func_unit|_alu|au|Add0~17_sumout\) # (\func_unit|_alu|au|Add0~13_sumout\)) # (\reg_file|A_mul|Mux12~4_combout\))) ) ) ) # ( \func_unit|_alu|au|s|s5|SH1~0_combout\ & ( 
-- !\func_unit|_alu|au|s|s2|SH1~combout\ & ( (!\reg_file|A_mul|Mux11~4_combout\ & (\reg_file|A_mul|Mux12~4_combout\ & (\func_unit|_alu|au|Add0~13_sumout\ & \func_unit|_alu|au|Add0~17_sumout\))) # (\reg_file|A_mul|Mux11~4_combout\ & 
-- (((\reg_file|A_mul|Mux12~4_combout\ & \func_unit|_alu|au|Add0~13_sumout\)) # (\func_unit|_alu|au|Add0~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101011100000000000000000001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux11~4_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux12~4_combout\,
	datac => \func_unit|_alu|au|ALT_INV_Add0~13_sumout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~17_sumout\,
	datae => \func_unit|_alu|au|s|s5|ALT_INV_SH1~0_combout\,
	dataf => \func_unit|_alu|au|s|s2|ALT_INV_SH1~combout\,
	combout => \func_unit|_alu|au|s|s5|SH1~1_combout\);

-- Location: LABCELL_X31_Y6_N18
\func_unit|_alu|au|s|s7|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s7|SH1~combout\ = ( \func_unit|_alu|au|s|s5|SH1~2_combout\ & ( \func_unit|_alu|au|s|s5|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux8~4_combout\ & ((!\func_unit|_alu|au|Add0~29_sumout\) # ((!\reg_file|A_mul|Mux9~4_combout\ & 
-- !\func_unit|_alu|au|Add0~25_sumout\)))) # (\reg_file|A_mul|Mux8~4_combout\ & (!\reg_file|A_mul|Mux9~4_combout\ & (!\func_unit|_alu|au|Add0~25_sumout\ & !\func_unit|_alu|au|Add0~29_sumout\))) ) ) ) # ( !\func_unit|_alu|au|s|s5|SH1~2_combout\ & ( 
-- \func_unit|_alu|au|s|s5|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux8~4_combout\ & ((!\func_unit|_alu|au|Add0~29_sumout\) # ((!\reg_file|A_mul|Mux9~4_combout\ & !\func_unit|_alu|au|Add0~25_sumout\)))) # (\reg_file|A_mul|Mux8~4_combout\ & 
-- (!\reg_file|A_mul|Mux9~4_combout\ & (!\func_unit|_alu|au|Add0~25_sumout\ & !\func_unit|_alu|au|Add0~29_sumout\))) ) ) ) # ( \func_unit|_alu|au|s|s5|SH1~2_combout\ & ( !\func_unit|_alu|au|s|s5|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux8~4_combout\ & 
-- ((!\func_unit|_alu|au|Add0~29_sumout\) # ((!\reg_file|A_mul|Mux9~4_combout\ & !\func_unit|_alu|au|Add0~25_sumout\)))) # (\reg_file|A_mul|Mux8~4_combout\ & (!\reg_file|A_mul|Mux9~4_combout\ & (!\func_unit|_alu|au|Add0~25_sumout\ & 
-- !\func_unit|_alu|au|Add0~29_sumout\))) ) ) ) # ( !\func_unit|_alu|au|s|s5|SH1~2_combout\ & ( !\func_unit|_alu|au|s|s5|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux8~4_combout\ & ((!\reg_file|A_mul|Mux9~4_combout\) # ((!\func_unit|_alu|au|Add0~25_sumout\) # 
-- (!\func_unit|_alu|au|Add0~29_sumout\)))) # (\reg_file|A_mul|Mux8~4_combout\ & (!\func_unit|_alu|au|Add0~29_sumout\ & ((!\reg_file|A_mul|Mux9~4_combout\) # (!\func_unit|_alu|au|Add0~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011001000111011001000000011101100100000001110110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux9~4_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux8~4_combout\,
	datac => \func_unit|_alu|au|ALT_INV_Add0~25_sumout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~29_sumout\,
	datae => \func_unit|_alu|au|s|s5|ALT_INV_SH1~2_combout\,
	dataf => \func_unit|_alu|au|s|s5|ALT_INV_SH1~1_combout\,
	combout => \func_unit|_alu|au|s|s7|SH1~combout\);

-- Location: LABCELL_X30_Y6_N12
\func_unit|_alu|au|s|s10|SH1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s10|SH1~1_combout\ = ( \func_unit|_alu|au|s|s9|SH1~1_combout\ & ( \func_unit|_alu|au|s|s7|SH1~combout\ & ( \func_unit|_alu|au|s|s10|SH1~0_combout\ ) ) ) # ( !\func_unit|_alu|au|s|s9|SH1~1_combout\ & ( 
-- \func_unit|_alu|au|s|s7|SH1~combout\ & ( (\func_unit|_alu|au|Add0~33_sumout\ & (\func_unit|_alu|au|s|s10|SH1~0_combout\ & (\reg_file|A_mul|Mux7~4_combout\ & \func_unit|_alu|au|s|s9|SH1~0_combout\))) ) ) ) # ( \func_unit|_alu|au|s|s9|SH1~1_combout\ & ( 
-- !\func_unit|_alu|au|s|s7|SH1~combout\ & ( \func_unit|_alu|au|s|s10|SH1~0_combout\ ) ) ) # ( !\func_unit|_alu|au|s|s9|SH1~1_combout\ & ( !\func_unit|_alu|au|s|s7|SH1~combout\ & ( (\func_unit|_alu|au|s|s10|SH1~0_combout\ & 
-- (\func_unit|_alu|au|s|s9|SH1~0_combout\ & ((\reg_file|A_mul|Mux7~4_combout\) # (\func_unit|_alu|au|Add0~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011001100110011001100000000000000010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|ALT_INV_Add0~33_sumout\,
	datab => \func_unit|_alu|au|s|s10|ALT_INV_SH1~0_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux7~4_combout\,
	datad => \func_unit|_alu|au|s|s9|ALT_INV_SH1~0_combout\,
	datae => \func_unit|_alu|au|s|s9|ALT_INV_SH1~1_combout\,
	dataf => \func_unit|_alu|au|s|s7|ALT_INV_SH1~combout\,
	combout => \func_unit|_alu|au|s|s10|SH1~1_combout\);

-- Location: LABCELL_X30_Y6_N54
\func_unit|_alu|au|s|s12|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s12|SH1~combout\ = ( \reg_file|A_mul|Mux4~4_combout\ & ( \func_unit|_alu|au|s|s10|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux3~4_combout\ & !\func_unit|_alu|au|Add0~49_sumout\) ) ) ) # ( !\reg_file|A_mul|Mux4~4_combout\ & ( 
-- \func_unit|_alu|au|s|s10|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux3~4_combout\ & ((!\func_unit|_alu|au|Add0~45_sumout\) # (!\func_unit|_alu|au|Add0~49_sumout\))) # (\reg_file|A_mul|Mux3~4_combout\ & (!\func_unit|_alu|au|Add0~45_sumout\ & 
-- !\func_unit|_alu|au|Add0~49_sumout\)) ) ) ) # ( \reg_file|A_mul|Mux4~4_combout\ & ( !\func_unit|_alu|au|s|s10|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux3~4_combout\ & ((!\func_unit|_alu|au|Add0~49_sumout\) # ((!\func_unit|_alu|au|s|s10|SH1~2_combout\ & 
-- !\func_unit|_alu|au|Add0~45_sumout\)))) # (\reg_file|A_mul|Mux3~4_combout\ & (!\func_unit|_alu|au|s|s10|SH1~2_combout\ & (!\func_unit|_alu|au|Add0~45_sumout\ & !\func_unit|_alu|au|Add0~49_sumout\))) ) ) ) # ( !\reg_file|A_mul|Mux4~4_combout\ & ( 
-- !\func_unit|_alu|au|s|s10|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux3~4_combout\ & ((!\func_unit|_alu|au|s|s10|SH1~2_combout\) # ((!\func_unit|_alu|au|Add0~45_sumout\) # (!\func_unit|_alu|au|Add0~49_sumout\)))) # (\reg_file|A_mul|Mux3~4_combout\ & 
-- (!\func_unit|_alu|au|Add0~49_sumout\ & ((!\func_unit|_alu|au|s|s10|SH1~2_combout\) # (!\func_unit|_alu|au|Add0~45_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101000111010101000000011111010101000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux3~4_combout\,
	datab => \func_unit|_alu|au|s|s10|ALT_INV_SH1~2_combout\,
	datac => \func_unit|_alu|au|ALT_INV_Add0~45_sumout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~49_sumout\,
	datae => \reg_file|A_mul|ALT_INV_Mux4~4_combout\,
	dataf => \func_unit|_alu|au|s|s10|ALT_INV_SH1~1_combout\,
	combout => \func_unit|_alu|au|s|s12|SH1~combout\);

-- Location: LABCELL_X30_Y6_N48
\func_unit|_alu|au|s|s14|SH1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s14|SH1~0_combout\ = ( !\reg_file|A_mul|Mux1~4_combout\ & ( \func_unit|_alu|au|Add0~57_sumout\ ) ) # ( \reg_file|A_mul|Mux1~4_combout\ & ( !\func_unit|_alu|au|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \reg_file|A_mul|ALT_INV_Mux1~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~57_sumout\,
	combout => \func_unit|_alu|au|s|s14|SH1~0_combout\);

-- Location: LABCELL_X30_Y6_N39
\m1|OUT[14]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[14]~44_combout\ = ( \func_unit|_alu|au|s|s12|SH1~combout\ & ( \func_unit|_alu|au|s|s14|SH1~0_combout\ & ( (!\m1|OUT[14]~43_combout\) # ((\m1|OUT[12]~32_combout\ & ((!\func_unit|_alu|au|Add0~53_sumout\) # (!\reg_file|A_mul|Mux2~4_combout\)))) ) ) ) 
-- # ( !\func_unit|_alu|au|s|s12|SH1~combout\ & ( \func_unit|_alu|au|s|s14|SH1~0_combout\ & ( (!\m1|OUT[14]~43_combout\) # ((\m1|OUT[12]~32_combout\ & (!\func_unit|_alu|au|Add0~53_sumout\ & !\reg_file|A_mul|Mux2~4_combout\))) ) ) ) # ( 
-- \func_unit|_alu|au|s|s12|SH1~combout\ & ( !\func_unit|_alu|au|s|s14|SH1~0_combout\ & ( (!\m1|OUT[14]~43_combout\) # ((\m1|OUT[12]~32_combout\ & (\func_unit|_alu|au|Add0~53_sumout\ & \reg_file|A_mul|Mux2~4_combout\))) ) ) ) # ( 
-- !\func_unit|_alu|au|s|s12|SH1~combout\ & ( !\func_unit|_alu|au|s|s14|SH1~0_combout\ & ( (!\m1|OUT[14]~43_combout\) # ((\m1|OUT[12]~32_combout\ & ((\reg_file|A_mul|Mux2~4_combout\) # (\func_unit|_alu|au|Add0~53_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010101111111110000000111111111010000001111111101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_OUT[12]~32_combout\,
	datab => \func_unit|_alu|au|ALT_INV_Add0~53_sumout\,
	datac => \reg_file|A_mul|ALT_INV_Mux2~4_combout\,
	datad => \m1|ALT_INV_OUT[14]~43_combout\,
	datae => \func_unit|_alu|au|s|s12|ALT_INV_SH1~combout\,
	dataf => \func_unit|_alu|au|s|s14|ALT_INV_SH1~0_combout\,
	combout => \m1|OUT[14]~44_combout\);

-- Location: FF_X30_Y6_N59
\reg_file|reg6|OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[14]~44_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg6|OUT\(14));

-- Location: LABCELL_X28_Y6_N54
\reg_file|B_mul|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux1~1_combout\ = ( \B_SEL[1]~input_o\ & ( \reg_file|reg5|OUT\(14) & ( (!\B_SEL[0]~input_o\ & (\reg_file|reg6|OUT\(14))) # (\B_SEL[0]~input_o\ & ((\reg_file|reg7|OUT\(14)))) ) ) ) # ( !\B_SEL[1]~input_o\ & ( \reg_file|reg5|OUT\(14) & ( 
-- (\reg_file|reg4|OUT\(14)) # (\B_SEL[0]~input_o\) ) ) ) # ( \B_SEL[1]~input_o\ & ( !\reg_file|reg5|OUT\(14) & ( (!\B_SEL[0]~input_o\ & (\reg_file|reg6|OUT\(14))) # (\B_SEL[0]~input_o\ & ((\reg_file|reg7|OUT\(14)))) ) ) ) # ( !\B_SEL[1]~input_o\ & ( 
-- !\reg_file|reg5|OUT\(14) & ( (!\B_SEL[0]~input_o\ & \reg_file|reg4|OUT\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010001110100011100110011111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg6|ALT_INV_OUT\(14),
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \reg_file|reg7|ALT_INV_OUT\(14),
	datad => \reg_file|reg4|ALT_INV_OUT\(14),
	datae => \ALT_INV_B_SEL[1]~input_o\,
	dataf => \reg_file|reg5|ALT_INV_OUT\(14),
	combout => \reg_file|B_mul|Mux1~1_combout\);

-- Location: MLABCELL_X32_Y6_N45
\reg_file|B_mul|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux1~2_combout\ = ( \reg_file|reg8|OUT\(14) & ( \reg_file|reg9|OUT\(14) & ( (!\B_SEL[1]~input_o\) # ((!\B_SEL[0]~input_o\ & ((\reg_file|reg10|OUT\(14)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(14)))) ) ) ) # ( 
-- !\reg_file|reg8|OUT\(14) & ( \reg_file|reg9|OUT\(14) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg10|OUT\(14) & \B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|reg11|OUT\(14)))) ) ) ) # ( \reg_file|reg8|OUT\(14) & ( 
-- !\reg_file|reg9|OUT\(14) & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\) # (\reg_file|reg10|OUT\(14))))) # (\B_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(14) & ((\B_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|reg8|OUT\(14) & ( !\reg_file|reg9|OUT\(14) & ( 
-- (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg10|OUT\(14)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|reg11|ALT_INV_OUT\(14),
	datac => \reg_file|reg10|ALT_INV_OUT\(14),
	datad => \ALT_INV_B_SEL[1]~input_o\,
	datae => \reg_file|reg8|ALT_INV_OUT\(14),
	dataf => \reg_file|reg9|ALT_INV_OUT\(14),
	combout => \reg_file|B_mul|Mux1~2_combout\);

-- Location: LABCELL_X30_Y3_N30
\reg_file|B_mul|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux1~3_combout\ = ( \reg_file|reg15|OUT\(14) & ( \reg_file|reg14|OUT\(14) & ( ((!\B_SEL[0]~input_o\ & ((\reg_file|reg12|OUT\(14)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(14)))) # (\B_SEL[1]~input_o\) ) ) ) # ( 
-- !\reg_file|reg15|OUT\(14) & ( \reg_file|reg14|OUT\(14) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg12|OUT\(14)) # (\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(14) & (!\B_SEL[1]~input_o\))) ) ) ) # ( \reg_file|reg15|OUT\(14) & ( 
-- !\reg_file|reg14|OUT\(14) & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & \reg_file|reg12|OUT\(14))))) # (\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)) # (\reg_file|reg13|OUT\(14)))) ) ) ) # ( !\reg_file|reg15|OUT\(14) & ( !\reg_file|reg14|OUT\(14) & ( 
-- (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg12|OUT\(14)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|reg13|ALT_INV_OUT\(14),
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|reg12|ALT_INV_OUT\(14),
	datae => \reg_file|reg15|ALT_INV_OUT\(14),
	dataf => \reg_file|reg14|ALT_INV_OUT\(14),
	combout => \reg_file|B_mul|Mux1~3_combout\);

-- Location: LABCELL_X30_Y5_N33
\reg_file|B_mul|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux1~0_combout\ = ( \reg_file|reg2|OUT\(14) & ( \reg_file|reg0|OUT\(14) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(14))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(14))))) ) ) ) # ( !\reg_file|reg2|OUT\(14) 
-- & ( \reg_file|reg0|OUT\(14) & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(14))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(14)))))) ) ) ) # ( \reg_file|reg2|OUT\(14) & ( 
-- !\reg_file|reg0|OUT\(14) & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(14))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(14)))))) ) ) ) # ( !\reg_file|reg2|OUT\(14) & ( 
-- !\reg_file|reg0|OUT\(14) & ( (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(14))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|reg1|ALT_INV_OUT\(14),
	datac => \reg_file|reg3|ALT_INV_OUT\(14),
	datad => \ALT_INV_B_SEL[1]~input_o\,
	datae => \reg_file|reg2|ALT_INV_OUT\(14),
	dataf => \reg_file|reg0|ALT_INV_OUT\(14),
	combout => \reg_file|B_mul|Mux1~0_combout\);

-- Location: LABCELL_X28_Y6_N24
\reg_file|B_mul|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux1~4_combout\ = ( \reg_file|B_mul|Mux1~3_combout\ & ( \reg_file|B_mul|Mux1~0_combout\ & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\) # (\reg_file|B_mul|Mux1~2_combout\)))) # (\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\)) # 
-- (\reg_file|B_mul|Mux1~1_combout\))) ) ) ) # ( !\reg_file|B_mul|Mux1~3_combout\ & ( \reg_file|B_mul|Mux1~0_combout\ & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\) # (\reg_file|B_mul|Mux1~2_combout\)))) # (\B_SEL[2]~input_o\ & 
-- (\reg_file|B_mul|Mux1~1_combout\ & ((!\B_SEL[3]~input_o\)))) ) ) ) # ( \reg_file|B_mul|Mux1~3_combout\ & ( !\reg_file|B_mul|Mux1~0_combout\ & ( (!\B_SEL[2]~input_o\ & (((\reg_file|B_mul|Mux1~2_combout\ & \B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & 
-- (((\B_SEL[3]~input_o\)) # (\reg_file|B_mul|Mux1~1_combout\))) ) ) ) # ( !\reg_file|B_mul|Mux1~3_combout\ & ( !\reg_file|B_mul|Mux1~0_combout\ & ( (!\B_SEL[2]~input_o\ & (((\reg_file|B_mul|Mux1~2_combout\ & \B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & 
-- (\reg_file|B_mul|Mux1~1_combout\ & ((!\B_SEL[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|B_mul|ALT_INV_Mux1~1_combout\,
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux1~2_combout\,
	datad => \ALT_INV_B_SEL[3]~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux1~3_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux1~0_combout\,
	combout => \reg_file|B_mul|Mux1~4_combout\);

-- Location: LABCELL_X28_Y4_N51
\m0|OUT[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[14]~14_combout\ = ( \reg_file|B_mul|Mux1~4_combout\ & ( (!\CONST_SEL~input_o\) # (\CONST_IN[14]~input_o\) ) ) # ( !\reg_file|B_mul|Mux1~4_combout\ & ( (\CONST_IN[14]~input_o\ & \CONST_SEL~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CONST_IN[14]~input_o\,
	datad => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux1~4_combout\,
	combout => \m0|OUT[14]~14_combout\);

-- Location: IOIBUF_X15_Y0_N35
\DATA_IN[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(13),
	o => \DATA_IN[13]~input_o\);

-- Location: LABCELL_X28_Y4_N12
\m1|OUT[13]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[13]~38_combout\ = ( \DATA_SEL~input_o\ & ( \m0|OUT[12]~12_combout\ & ( \DATA_IN[13]~input_o\ ) ) ) # ( !\DATA_SEL~input_o\ & ( \m0|OUT[12]~12_combout\ & ( (\OP_SEL[3]~input_o\ & ((!\OP_SEL[0]~input_o\) # (\m0|OUT[14]~14_combout\))) ) ) ) # ( 
-- \DATA_SEL~input_o\ & ( !\m0|OUT[12]~12_combout\ & ( \DATA_IN[13]~input_o\ ) ) ) # ( !\DATA_SEL~input_o\ & ( !\m0|OUT[12]~12_combout\ & ( (\OP_SEL[0]~input_o\ & (\OP_SEL[3]~input_o\ & \m0|OUT[14]~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000001111111100100011001000110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[0]~input_o\,
	datab => \ALT_INV_OP_SEL[3]~input_o\,
	datac => \m0|ALT_INV_OUT[14]~14_combout\,
	datad => \ALT_INV_DATA_IN[13]~input_o\,
	datae => \ALT_INV_DATA_SEL~input_o\,
	dataf => \m0|ALT_INV_OUT[12]~12_combout\,
	combout => \m1|OUT[13]~38_combout\);

-- Location: LABCELL_X28_Y4_N6
\m1|OUT[13]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[13]~39_combout\ = ( !\m1|OUT[13]~38_combout\ & ( ((!\OP_SEL[2]~input_o\) # ((!\m1|OUT[13]~37_combout\) # (\OP_SEL[3]~input_o\))) # (\DATA_SEL~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[2]~input_o\,
	datac => \m1|ALT_INV_OUT[13]~37_combout\,
	datad => \ALT_INV_OP_SEL[3]~input_o\,
	dataf => \m1|ALT_INV_OUT[13]~38_combout\,
	combout => \m1|OUT[13]~39_combout\);

-- Location: LABCELL_X31_Y3_N33
\func_unit|_alu|au|s|s7|SH1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s7|SH1~2_combout\ = ( \func_unit|_alu|au|Add0~29_sumout\ & ( \reg_file|A_mul|Mux8~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \reg_file|A_mul|ALT_INV_Mux8~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~29_sumout\,
	combout => \func_unit|_alu|au|s|s7|SH1~2_combout\);

-- Location: MLABCELL_X32_Y4_N0
\func_unit|_alu|au|s|s4|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s4|SH1~combout\ = ( \func_unit|_alu|au|s|s2|SH1~combout\ & ( (!\reg_file|A_mul|Mux11~4_combout\ & (\func_unit|_alu|au|Add0~17_sumout\ & ((\func_unit|_alu|au|Add0~13_sumout\) # (\reg_file|A_mul|Mux12~4_combout\)))) # 
-- (\reg_file|A_mul|Mux11~4_combout\ & (((\func_unit|_alu|au|Add0~13_sumout\) # (\func_unit|_alu|au|Add0~17_sumout\)) # (\reg_file|A_mul|Mux12~4_combout\))) ) ) # ( !\func_unit|_alu|au|s|s2|SH1~combout\ & ( (!\reg_file|A_mul|Mux11~4_combout\ & 
-- (\reg_file|A_mul|Mux12~4_combout\ & (\func_unit|_alu|au|Add0~17_sumout\ & \func_unit|_alu|au|Add0~13_sumout\))) # (\reg_file|A_mul|Mux11~4_combout\ & (((\reg_file|A_mul|Mux12~4_combout\ & \func_unit|_alu|au|Add0~13_sumout\)) # 
-- (\func_unit|_alu|au|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux12~4_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux11~4_combout\,
	datac => \func_unit|_alu|au|ALT_INV_Add0~17_sumout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~13_sumout\,
	dataf => \func_unit|_alu|au|s|s2|ALT_INV_SH1~combout\,
	combout => \func_unit|_alu|au|s|s4|SH1~combout\);

-- Location: LABCELL_X31_Y6_N45
\func_unit|_alu|au|s|s7|SH1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s7|SH1~0_combout\ = ( !\reg_file|A_mul|Mux8~4_combout\ & ( \func_unit|_alu|au|Add0~29_sumout\ ) ) # ( \reg_file|A_mul|Mux8~4_combout\ & ( !\func_unit|_alu|au|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \reg_file|A_mul|ALT_INV_Mux8~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~29_sumout\,
	combout => \func_unit|_alu|au|s|s7|SH1~0_combout\);

-- Location: MLABCELL_X32_Y4_N6
\func_unit|_alu|au|s|s7|SH1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s7|SH1~1_combout\ = ( \func_unit|_alu|au|s|s4|SH1~combout\ & ( \func_unit|_alu|au|s|s7|SH1~0_combout\ & ( (!\reg_file|A_mul|Mux9~4_combout\ & (\func_unit|_alu|au|Add0~25_sumout\ & ((\func_unit|_alu|au|Add0~21_sumout\) # 
-- (\reg_file|A_mul|Mux10~4_combout\)))) # (\reg_file|A_mul|Mux9~4_combout\ & (((\func_unit|_alu|au|Add0~21_sumout\) # (\reg_file|A_mul|Mux10~4_combout\)) # (\func_unit|_alu|au|Add0~25_sumout\))) ) ) ) # ( !\func_unit|_alu|au|s|s4|SH1~combout\ & ( 
-- \func_unit|_alu|au|s|s7|SH1~0_combout\ & ( (!\reg_file|A_mul|Mux9~4_combout\ & (\func_unit|_alu|au|Add0~25_sumout\ & (\reg_file|A_mul|Mux10~4_combout\ & \func_unit|_alu|au|Add0~21_sumout\))) # (\reg_file|A_mul|Mux9~4_combout\ & 
-- (((\reg_file|A_mul|Mux10~4_combout\ & \func_unit|_alu|au|Add0~21_sumout\)) # (\func_unit|_alu|au|Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux9~4_combout\,
	datab => \func_unit|_alu|au|ALT_INV_Add0~25_sumout\,
	datac => \reg_file|A_mul|ALT_INV_Mux10~4_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~21_sumout\,
	datae => \func_unit|_alu|au|s|s4|ALT_INV_SH1~combout\,
	dataf => \func_unit|_alu|au|s|s7|ALT_INV_SH1~0_combout\,
	combout => \func_unit|_alu|au|s|s7|SH1~1_combout\);

-- Location: MLABCELL_X32_Y4_N48
\func_unit|_alu|au|s|s9|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s9|SH1~combout\ = ( \func_unit|_alu|au|s|s9|SH1~0_combout\ & ( \func_unit|_alu|au|s|s7|SH1~1_combout\ & ( (!\reg_file|A_mul|Mux7~4_combout\ & (!\func_unit|_alu|au|Add0~33_sumout\ & !\func_unit|_alu|au|s|s9|SH1~1_combout\)) ) ) ) # ( 
-- !\func_unit|_alu|au|s|s9|SH1~0_combout\ & ( \func_unit|_alu|au|s|s7|SH1~1_combout\ & ( !\func_unit|_alu|au|s|s9|SH1~1_combout\ ) ) ) # ( \func_unit|_alu|au|s|s9|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s7|SH1~1_combout\ & ( 
-- (!\func_unit|_alu|au|s|s9|SH1~1_combout\ & ((!\reg_file|A_mul|Mux7~4_combout\ & ((!\func_unit|_alu|au|Add0~33_sumout\) # (!\func_unit|_alu|au|s|s7|SH1~2_combout\))) # (\reg_file|A_mul|Mux7~4_combout\ & (!\func_unit|_alu|au|Add0~33_sumout\ & 
-- !\func_unit|_alu|au|s|s7|SH1~2_combout\)))) ) ) ) # ( !\func_unit|_alu|au|s|s9|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s7|SH1~1_combout\ & ( !\func_unit|_alu|au|s|s9|SH1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111000001000000011110000111100001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux7~4_combout\,
	datab => \func_unit|_alu|au|ALT_INV_Add0~33_sumout\,
	datac => \func_unit|_alu|au|s|s9|ALT_INV_SH1~1_combout\,
	datad => \func_unit|_alu|au|s|s7|ALT_INV_SH1~2_combout\,
	datae => \func_unit|_alu|au|s|s9|ALT_INV_SH1~0_combout\,
	dataf => \func_unit|_alu|au|s|s7|ALT_INV_SH1~1_combout\,
	combout => \func_unit|_alu|au|s|s9|SH1~combout\);

-- Location: MLABCELL_X32_Y4_N24
\func_unit|_alu|au|s|s11|SH1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s11|SH1~combout\ = ( \func_unit|_alu|au|Add0~45_sumout\ & ( \func_unit|_alu|au|s|s9|SH1~combout\ & ( ((\reg_file|A_mul|Mux5~4_combout\ & \func_unit|_alu|au|Add0~41_sumout\)) # (\reg_file|A_mul|Mux4~4_combout\) ) ) ) # ( 
-- !\func_unit|_alu|au|Add0~45_sumout\ & ( \func_unit|_alu|au|s|s9|SH1~combout\ & ( (\reg_file|A_mul|Mux4~4_combout\ & (\reg_file|A_mul|Mux5~4_combout\ & \func_unit|_alu|au|Add0~41_sumout\)) ) ) ) # ( \func_unit|_alu|au|Add0~45_sumout\ & ( 
-- !\func_unit|_alu|au|s|s9|SH1~combout\ & ( ((\func_unit|_alu|au|Add0~41_sumout\) # (\reg_file|A_mul|Mux5~4_combout\)) # (\reg_file|A_mul|Mux4~4_combout\) ) ) ) # ( !\func_unit|_alu|au|Add0~45_sumout\ & ( !\func_unit|_alu|au|s|s9|SH1~combout\ & ( 
-- (\reg_file|A_mul|Mux4~4_combout\ & ((\func_unit|_alu|au|Add0~41_sumout\) # (\reg_file|A_mul|Mux5~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101011111110111111100000001000000010101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux4~4_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux5~4_combout\,
	datac => \func_unit|_alu|au|ALT_INV_Add0~41_sumout\,
	datae => \func_unit|_alu|au|ALT_INV_Add0~45_sumout\,
	dataf => \func_unit|_alu|au|s|s9|ALT_INV_SH1~combout\,
	combout => \func_unit|_alu|au|s|s11|SH1~combout\);

-- Location: LABCELL_X33_Y4_N45
\m1|OUT[13]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[13]~40_combout\ = ( \m1|OUT[13]~39_combout\ & ( \func_unit|_alu|au|s|s11|SH1~combout\ & ( (\m1|OUT[12]~32_combout\ & (!\func_unit|_alu|au|s|s13|SH1~0_combout\ $ (((!\reg_file|A_mul|Mux3~4_combout\ & !\func_unit|_alu|au|Add0~49_sumout\))))) ) ) ) # 
-- ( !\m1|OUT[13]~39_combout\ & ( \func_unit|_alu|au|s|s11|SH1~combout\ ) ) # ( \m1|OUT[13]~39_combout\ & ( !\func_unit|_alu|au|s|s11|SH1~combout\ & ( (\m1|OUT[12]~32_combout\ & (!\func_unit|_alu|au|s|s13|SH1~0_combout\ $ (((!\reg_file|A_mul|Mux3~4_combout\) 
-- # (!\func_unit|_alu|au|Add0~49_sumout\))))) ) ) ) # ( !\m1|OUT[13]~39_combout\ & ( !\func_unit|_alu|au|s|s11|SH1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000100010001010011111111111111110001010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_OUT[12]~32_combout\,
	datab => \func_unit|_alu|au|s|s13|ALT_INV_SH1~0_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux3~4_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~49_sumout\,
	datae => \m1|ALT_INV_OUT[13]~39_combout\,
	dataf => \func_unit|_alu|au|s|s11|ALT_INV_SH1~combout\,
	combout => \m1|OUT[13]~40_combout\);

-- Location: FF_X33_Y4_N14
\reg_file|reg14|OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[13]~40_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(13));

-- Location: LABCELL_X33_Y4_N15
\reg_file|B_mul|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux2~2_combout\ = ( \B_SEL[3]~input_o\ & ( \reg_file|reg2|OUT\(13) & ( (!\B_SEL[2]~input_o\ & ((\reg_file|reg10|OUT\(13)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(13))) ) ) ) # ( !\B_SEL[3]~input_o\ & ( \reg_file|reg2|OUT\(13) & ( 
-- (!\B_SEL[2]~input_o\) # (\reg_file|reg6|OUT\(13)) ) ) ) # ( \B_SEL[3]~input_o\ & ( !\reg_file|reg2|OUT\(13) & ( (!\B_SEL[2]~input_o\ & ((\reg_file|reg10|OUT\(13)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(13))) ) ) ) # ( !\B_SEL[3]~input_o\ & ( 
-- !\reg_file|reg2|OUT\(13) & ( (\B_SEL[2]~input_o\ & \reg_file|reg6|OUT\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[2]~input_o\,
	datab => \reg_file|reg14|ALT_INV_OUT\(13),
	datac => \reg_file|reg10|ALT_INV_OUT\(13),
	datad => \reg_file|reg6|ALT_INV_OUT\(13),
	datae => \ALT_INV_B_SEL[3]~input_o\,
	dataf => \reg_file|reg2|ALT_INV_OUT\(13),
	combout => \reg_file|B_mul|Mux2~2_combout\);

-- Location: LABCELL_X33_Y2_N51
\reg_file|B_mul|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux2~1_combout\ = ( \B_SEL[2]~input_o\ & ( \reg_file|reg13|OUT\(13) & ( (\reg_file|reg5|OUT\(13)) # (\B_SEL[3]~input_o\) ) ) ) # ( !\B_SEL[2]~input_o\ & ( \reg_file|reg13|OUT\(13) & ( (!\B_SEL[3]~input_o\ & ((\reg_file|reg1|OUT\(13)))) # 
-- (\B_SEL[3]~input_o\ & (\reg_file|reg9|OUT\(13))) ) ) ) # ( \B_SEL[2]~input_o\ & ( !\reg_file|reg13|OUT\(13) & ( (!\B_SEL[3]~input_o\ & \reg_file|reg5|OUT\(13)) ) ) ) # ( !\B_SEL[2]~input_o\ & ( !\reg_file|reg13|OUT\(13) & ( (!\B_SEL[3]~input_o\ & 
-- ((\reg_file|reg1|OUT\(13)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg9|OUT\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg9|ALT_INV_OUT\(13),
	datab => \reg_file|reg1|ALT_INV_OUT\(13),
	datac => \ALT_INV_B_SEL[3]~input_o\,
	datad => \reg_file|reg5|ALT_INV_OUT\(13),
	datae => \ALT_INV_B_SEL[2]~input_o\,
	dataf => \reg_file|reg13|ALT_INV_OUT\(13),
	combout => \reg_file|B_mul|Mux2~1_combout\);

-- Location: LABCELL_X33_Y3_N24
\reg_file|B_mul|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux2~0_combout\ = ( \reg_file|reg0|OUT\(13) & ( \reg_file|reg8|OUT\(13) & ( (!\B_SEL[2]~input_o\) # ((!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(13)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(13)))) ) ) ) # ( 
-- !\reg_file|reg0|OUT\(13) & ( \reg_file|reg8|OUT\(13) & ( (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(13)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(13))))) ) ) ) # ( 
-- \reg_file|reg0|OUT\(13) & ( !\reg_file|reg8|OUT\(13) & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(13)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(13))))) ) ) ) # ( 
-- !\reg_file|reg0|OUT\(13) & ( !\reg_file|reg8|OUT\(13) & ( (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(13)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[2]~input_o\,
	datab => \reg_file|reg12|ALT_INV_OUT\(13),
	datac => \ALT_INV_B_SEL[3]~input_o\,
	datad => \reg_file|reg4|ALT_INV_OUT\(13),
	datae => \reg_file|reg0|ALT_INV_OUT\(13),
	dataf => \reg_file|reg8|ALT_INV_OUT\(13),
	combout => \reg_file|B_mul|Mux2~0_combout\);

-- Location: MLABCELL_X32_Y2_N18
\reg_file|B_mul|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux2~3_combout\ = ( \reg_file|reg7|OUT\(13) & ( \reg_file|reg15|OUT\(13) & ( ((!\B_SEL[3]~input_o\ & ((\reg_file|reg3|OUT\(13)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg11|OUT\(13)))) # (\B_SEL[2]~input_o\) ) ) ) # ( 
-- !\reg_file|reg7|OUT\(13) & ( \reg_file|reg15|OUT\(13) & ( (!\B_SEL[3]~input_o\ & (((\reg_file|reg3|OUT\(13) & !\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\)) # (\reg_file|reg11|OUT\(13)))) ) ) ) # ( \reg_file|reg7|OUT\(13) & ( 
-- !\reg_file|reg15|OUT\(13) & ( (!\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\) # (\reg_file|reg3|OUT\(13))))) # (\B_SEL[3]~input_o\ & (\reg_file|reg11|OUT\(13) & ((!\B_SEL[2]~input_o\)))) ) ) ) # ( !\reg_file|reg7|OUT\(13) & ( !\reg_file|reg15|OUT\(13) & ( 
-- (!\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg3|OUT\(13)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg11|OUT\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \reg_file|reg11|ALT_INV_OUT\(13),
	datac => \reg_file|reg3|ALT_INV_OUT\(13),
	datad => \ALT_INV_B_SEL[2]~input_o\,
	datae => \reg_file|reg7|ALT_INV_OUT\(13),
	dataf => \reg_file|reg15|ALT_INV_OUT\(13),
	combout => \reg_file|B_mul|Mux2~3_combout\);

-- Location: LABCELL_X33_Y4_N0
\reg_file|B_mul|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux2~4_combout\ = ( \reg_file|B_mul|Mux2~0_combout\ & ( \reg_file|B_mul|Mux2~3_combout\ & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|B_mul|Mux2~2_combout\))) # (\B_SEL[0]~input_o\ & (((\reg_file|B_mul|Mux2~1_combout\) # 
-- (\B_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|B_mul|Mux2~0_combout\ & ( \reg_file|B_mul|Mux2~3_combout\ & ( (!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux2~2_combout\ & (\B_SEL[1]~input_o\))) # (\B_SEL[0]~input_o\ & (((\reg_file|B_mul|Mux2~1_combout\) # 
-- (\B_SEL[1]~input_o\)))) ) ) ) # ( \reg_file|B_mul|Mux2~0_combout\ & ( !\reg_file|B_mul|Mux2~3_combout\ & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|B_mul|Mux2~2_combout\))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & 
-- \reg_file|B_mul|Mux2~1_combout\)))) ) ) ) # ( !\reg_file|B_mul|Mux2~0_combout\ & ( !\reg_file|B_mul|Mux2~3_combout\ & ( (!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux2~2_combout\ & (\B_SEL[1]~input_o\))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & 
-- \reg_file|B_mul|Mux2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|B_mul|ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux2~1_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux2~0_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux2~3_combout\,
	combout => \reg_file|B_mul|Mux2~4_combout\);

-- Location: LABCELL_X36_Y4_N54
\m0|OUT[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[13]~13_combout\ = ( \CONST_IN[13]~input_o\ & ( \reg_file|B_mul|Mux2~4_combout\ ) ) # ( !\CONST_IN[13]~input_o\ & ( \reg_file|B_mul|Mux2~4_combout\ & ( !\CONST_SEL~input_o\ ) ) ) # ( \CONST_IN[13]~input_o\ & ( !\reg_file|B_mul|Mux2~4_combout\ & ( 
-- \CONST_SEL~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CONST_SEL~input_o\,
	datae => \ALT_INV_CONST_IN[13]~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux2~4_combout\,
	combout => \m0|OUT[13]~13_combout\);

-- Location: LABCELL_X36_Y4_N30
\m1|OUT[12]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[12]~34_combout\ = ( \m0|OUT[13]~13_combout\ & ( \m0|OUT[11]~11_combout\ & ( (!\DATA_SEL~input_o\ & ((\OP_SEL[3]~input_o\))) # (\DATA_SEL~input_o\ & (\DATA_IN[12]~input_o\)) ) ) ) # ( !\m0|OUT[13]~13_combout\ & ( \m0|OUT[11]~11_combout\ & ( 
-- (!\DATA_SEL~input_o\ & (((\OP_SEL[3]~input_o\ & !\OP_SEL[0]~input_o\)))) # (\DATA_SEL~input_o\ & (\DATA_IN[12]~input_o\)) ) ) ) # ( \m0|OUT[13]~13_combout\ & ( !\m0|OUT[11]~11_combout\ & ( (!\DATA_SEL~input_o\ & (((\OP_SEL[3]~input_o\ & 
-- \OP_SEL[0]~input_o\)))) # (\DATA_SEL~input_o\ & (\DATA_IN[12]~input_o\)) ) ) ) # ( !\m0|OUT[13]~13_combout\ & ( !\m0|OUT[11]~11_combout\ & ( (\DATA_IN[12]~input_o\ & \DATA_SEL~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000110101010100110000010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_IN[12]~input_o\,
	datab => \ALT_INV_OP_SEL[3]~input_o\,
	datac => \ALT_INV_OP_SEL[0]~input_o\,
	datad => \ALT_INV_DATA_SEL~input_o\,
	datae => \m0|ALT_INV_OUT[13]~13_combout\,
	dataf => \m0|ALT_INV_OUT[11]~11_combout\,
	combout => \m1|OUT[12]~34_combout\);

-- Location: LABCELL_X36_Y4_N27
\m1|OUT[12]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[12]~35_combout\ = ( !\m1|OUT[12]~34_combout\ & ( (!\OP_SEL[2]~input_o\) # (((!\m1|OUT[12]~33_combout\) # (\OP_SEL[3]~input_o\)) # (\DATA_SEL~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111111111111011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[2]~input_o\,
	datab => \ALT_INV_DATA_SEL~input_o\,
	datac => \ALT_INV_OP_SEL[3]~input_o\,
	datad => \m1|ALT_INV_OUT[12]~33_combout\,
	dataf => \m1|ALT_INV_OUT[12]~34_combout\,
	combout => \m1|OUT[12]~35_combout\);

-- Location: LABCELL_X33_Y4_N51
\m1|OUT[12]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[12]~36_combout\ = ( \m1|OUT[12]~35_combout\ & ( \func_unit|_alu|au|s|s11|SH1~1_combout\ & ( (\m1|OUT[12]~32_combout\ & (!\reg_file|A_mul|Mux3~4_combout\ $ (\func_unit|_alu|au|Add0~49_sumout\))) ) ) ) # ( !\m1|OUT[12]~35_combout\ & ( 
-- \func_unit|_alu|au|s|s11|SH1~1_combout\ ) ) # ( \m1|OUT[12]~35_combout\ & ( !\func_unit|_alu|au|s|s11|SH1~1_combout\ & ( (\m1|OUT[12]~32_combout\ & (!\func_unit|_alu|au|s|s11|SH1~2_combout\ $ (!\reg_file|A_mul|Mux3~4_combout\ $ 
-- (\func_unit|_alu|au|Add0~49_sumout\)))) ) ) ) # ( !\m1|OUT[12]~35_combout\ & ( !\func_unit|_alu|au|s|s11|SH1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001100000100111111111111111110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|s|s11|ALT_INV_SH1~2_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux3~4_combout\,
	datac => \m1|ALT_INV_OUT[12]~32_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~49_sumout\,
	datae => \m1|ALT_INV_OUT[12]~35_combout\,
	dataf => \func_unit|_alu|au|s|s11|ALT_INV_SH1~1_combout\,
	combout => \m1|OUT[12]~36_combout\);

-- Location: FF_X30_Y3_N41
\reg_file|reg12|OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[12]~36_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg12|OUT\(12));

-- Location: LABCELL_X33_Y4_N33
\reg_file|B_mul|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux3~3_combout\ = ( \reg_file|reg13|OUT\(12) & ( \reg_file|reg15|OUT\(12) & ( ((!\B_SEL[1]~input_o\ & (\reg_file|reg12|OUT\(12))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg14|OUT\(12))))) # (\B_SEL[0]~input_o\) ) ) ) # ( 
-- !\reg_file|reg13|OUT\(12) & ( \reg_file|reg15|OUT\(12) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg12|OUT\(12))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg14|OUT\(12)))))) # (\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)))) ) ) ) # ( 
-- \reg_file|reg13|OUT\(12) & ( !\reg_file|reg15|OUT\(12) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg12|OUT\(12))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg14|OUT\(12)))))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)))) ) ) ) # ( 
-- !\reg_file|reg13|OUT\(12) & ( !\reg_file|reg15|OUT\(12) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg12|OUT\(12))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg14|OUT\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|reg12|ALT_INV_OUT\(12),
	datac => \reg_file|reg14|ALT_INV_OUT\(12),
	datad => \ALT_INV_B_SEL[1]~input_o\,
	datae => \reg_file|reg13|ALT_INV_OUT\(12),
	dataf => \reg_file|reg15|ALT_INV_OUT\(12),
	combout => \reg_file|B_mul|Mux3~3_combout\);

-- Location: LABCELL_X33_Y1_N9
\reg_file|B_mul|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux3~1_combout\ = ( \reg_file|reg5|OUT\(12) & ( \reg_file|reg6|OUT\(12) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg4|OUT\(12))) # (\B_SEL[1]~input_o\))) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\) # ((\reg_file|reg7|OUT\(12))))) ) ) ) # 
-- ( !\reg_file|reg5|OUT\(12) & ( \reg_file|reg6|OUT\(12) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg4|OUT\(12))) # (\B_SEL[1]~input_o\))) # (\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(12))))) ) ) ) # ( \reg_file|reg5|OUT\(12) & ( 
-- !\reg_file|reg6|OUT\(12) & ( (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\ & (\reg_file|reg4|OUT\(12)))) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\) # ((\reg_file|reg7|OUT\(12))))) ) ) ) # ( !\reg_file|reg5|OUT\(12) & ( !\reg_file|reg6|OUT\(12) & ( 
-- (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\ & (\reg_file|reg4|OUT\(12)))) # (\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg4|ALT_INV_OUT\(12),
	datad => \reg_file|reg7|ALT_INV_OUT\(12),
	datae => \reg_file|reg5|ALT_INV_OUT\(12),
	dataf => \reg_file|reg6|ALT_INV_OUT\(12),
	combout => \reg_file|B_mul|Mux3~1_combout\);

-- Location: MLABCELL_X32_Y6_N51
\reg_file|B_mul|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux3~2_combout\ = ( \reg_file|reg9|OUT\(12) & ( \reg_file|reg10|OUT\(12) & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)) # (\reg_file|reg8|OUT\(12)))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\) # (\reg_file|reg11|OUT\(12))))) ) ) ) 
-- # ( !\reg_file|reg9|OUT\(12) & ( \reg_file|reg10|OUT\(12) & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)) # (\reg_file|reg8|OUT\(12)))) # (\B_SEL[0]~input_o\ & (((\reg_file|reg11|OUT\(12) & \B_SEL[1]~input_o\)))) ) ) ) # ( \reg_file|reg9|OUT\(12) & ( 
-- !\reg_file|reg10|OUT\(12) & ( (!\B_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(12) & ((!\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\) # (\reg_file|reg11|OUT\(12))))) ) ) ) # ( !\reg_file|reg9|OUT\(12) & ( !\reg_file|reg10|OUT\(12) & ( 
-- (!\B_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(12) & ((!\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (((\reg_file|reg11|OUT\(12) & \B_SEL[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|reg8|ALT_INV_OUT\(12),
	datac => \reg_file|reg11|ALT_INV_OUT\(12),
	datad => \ALT_INV_B_SEL[1]~input_o\,
	datae => \reg_file|reg9|ALT_INV_OUT\(12),
	dataf => \reg_file|reg10|ALT_INV_OUT\(12),
	combout => \reg_file|B_mul|Mux3~2_combout\);

-- Location: MLABCELL_X32_Y1_N24
\reg_file|B_mul|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux3~0_combout\ = ( \reg_file|reg3|OUT\(12) & ( \B_SEL[0]~input_o\ & ( (\B_SEL[1]~input_o\) # (\reg_file|reg1|OUT\(12)) ) ) ) # ( !\reg_file|reg3|OUT\(12) & ( \B_SEL[0]~input_o\ & ( (\reg_file|reg1|OUT\(12) & !\B_SEL[1]~input_o\) ) ) ) # ( 
-- \reg_file|reg3|OUT\(12) & ( !\B_SEL[0]~input_o\ & ( (!\B_SEL[1]~input_o\ & (\reg_file|reg0|OUT\(12))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg2|OUT\(12)))) ) ) ) # ( !\reg_file|reg3|OUT\(12) & ( !\B_SEL[0]~input_o\ & ( (!\B_SEL[1]~input_o\ & 
-- (\reg_file|reg0|OUT\(12))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg2|OUT\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg1|ALT_INV_OUT\(12),
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg0|ALT_INV_OUT\(12),
	datad => \reg_file|reg2|ALT_INV_OUT\(12),
	datae => \reg_file|reg3|ALT_INV_OUT\(12),
	dataf => \ALT_INV_B_SEL[0]~input_o\,
	combout => \reg_file|B_mul|Mux3~0_combout\);

-- Location: LABCELL_X33_Y4_N18
\reg_file|B_mul|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux3~4_combout\ = ( \reg_file|B_mul|Mux3~2_combout\ & ( \reg_file|B_mul|Mux3~0_combout\ & ( (!\B_SEL[2]~input_o\) # ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux3~1_combout\))) # (\B_SEL[3]~input_o\ & (\reg_file|B_mul|Mux3~3_combout\))) ) 
-- ) ) # ( !\reg_file|B_mul|Mux3~2_combout\ & ( \reg_file|B_mul|Mux3~0_combout\ & ( (!\B_SEL[2]~input_o\ & (!\B_SEL[3]~input_o\)) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux3~1_combout\))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux3~3_combout\)))) ) ) ) # ( \reg_file|B_mul|Mux3~2_combout\ & ( !\reg_file|B_mul|Mux3~0_combout\ & ( (!\B_SEL[2]~input_o\ & (\B_SEL[3]~input_o\)) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux3~1_combout\))) # 
-- (\B_SEL[3]~input_o\ & (\reg_file|B_mul|Mux3~3_combout\)))) ) ) ) # ( !\reg_file|B_mul|Mux3~2_combout\ & ( !\reg_file|B_mul|Mux3~0_combout\ & ( (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux3~1_combout\))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux3~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[2]~input_o\,
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux3~3_combout\,
	datad => \reg_file|B_mul|ALT_INV_Mux3~1_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux3~2_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux3~0_combout\,
	combout => \reg_file|B_mul|Mux3~4_combout\);

-- Location: LABCELL_X28_Y4_N9
\m0|OUT[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[12]~12_combout\ = ( \reg_file|B_mul|Mux3~4_combout\ & ( (!\CONST_SEL~input_o\) # (\CONST_IN[12]~input_o\) ) ) # ( !\reg_file|B_mul|Mux3~4_combout\ & ( (\CONST_IN[12]~input_o\ & \CONST_SEL~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CONST_IN[12]~input_o\,
	datad => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux3~4_combout\,
	combout => \m0|OUT[12]~12_combout\);

-- Location: LABCELL_X33_Y3_N30
\m1|OUT[11]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[11]~30_combout\ = ( \OP_SEL[1]~input_o\ & ( \reg_file|A_mul|Mux4~4_combout\ & ( (!\OP_SEL[0]~input_o\ & ((!\CONST_SEL~input_o\ & (!\reg_file|B_mul|Mux4~4_combout\)) # (\CONST_SEL~input_o\ & ((!\CONST_IN[11]~input_o\))))) ) ) ) # ( 
-- !\OP_SEL[1]~input_o\ & ( \reg_file|A_mul|Mux4~4_combout\ & ( ((!\CONST_SEL~input_o\ & (\reg_file|B_mul|Mux4~4_combout\)) # (\CONST_SEL~input_o\ & ((\CONST_IN[11]~input_o\)))) # (\OP_SEL[0]~input_o\) ) ) ) # ( \OP_SEL[1]~input_o\ & ( 
-- !\reg_file|A_mul|Mux4~4_combout\ & ( ((!\CONST_SEL~input_o\ & (\reg_file|B_mul|Mux4~4_combout\)) # (\CONST_SEL~input_o\ & ((\CONST_IN[11]~input_o\)))) # (\OP_SEL[0]~input_o\) ) ) ) # ( !\OP_SEL[1]~input_o\ & ( !\reg_file|A_mul|Mux4~4_combout\ & ( 
-- (\OP_SEL[0]~input_o\ & ((!\CONST_SEL~input_o\ & (\reg_file|B_mul|Mux4~4_combout\)) # (\CONST_SEL~input_o\ & ((\CONST_IN[11]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111010001111111111101000111111111111011100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|B_mul|ALT_INV_Mux4~4_combout\,
	datab => \ALT_INV_CONST_SEL~input_o\,
	datac => \ALT_INV_CONST_IN[11]~input_o\,
	datad => \ALT_INV_OP_SEL[0]~input_o\,
	datae => \ALT_INV_OP_SEL[1]~input_o\,
	dataf => \reg_file|A_mul|ALT_INV_Mux4~4_combout\,
	combout => \m1|OUT[11]~30_combout\);

-- Location: LABCELL_X33_Y3_N54
\m1|OUT[11]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[11]~31_combout\ = ( \func_unit|_alu|au|s|s11|SH1~0_combout\ & ( \func_unit|_alu|au|s|s9|SH1~combout\ & ( (!\m1|OUT[13]~5_combout\ & ((!\func_unit|_alu|au|Add0~41_sumout\) # ((!\reg_file|A_mul|Mux5~4_combout\)))) # (\m1|OUT[13]~5_combout\ & 
-- (((\m1|OUT[11]~30_combout\)))) ) ) ) # ( !\func_unit|_alu|au|s|s11|SH1~0_combout\ & ( \func_unit|_alu|au|s|s9|SH1~combout\ & ( (!\m1|OUT[13]~5_combout\ & (\func_unit|_alu|au|Add0~41_sumout\ & (\reg_file|A_mul|Mux5~4_combout\))) # (\m1|OUT[13]~5_combout\ & 
-- (((\m1|OUT[11]~30_combout\)))) ) ) ) # ( \func_unit|_alu|au|s|s11|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s9|SH1~combout\ & ( (!\m1|OUT[13]~5_combout\ & (!\func_unit|_alu|au|Add0~41_sumout\ & (!\reg_file|A_mul|Mux5~4_combout\))) # (\m1|OUT[13]~5_combout\ 
-- & (((\m1|OUT[11]~30_combout\)))) ) ) ) # ( !\func_unit|_alu|au|s|s11|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s9|SH1~combout\ & ( (!\m1|OUT[13]~5_combout\ & (((\reg_file|A_mul|Mux5~4_combout\)) # (\func_unit|_alu|au|Add0~41_sumout\))) # 
-- (\m1|OUT[13]~5_combout\ & (((\m1|OUT[11]~30_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001111111100000001101010100000010010101111010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_OUT[13]~5_combout\,
	datab => \func_unit|_alu|au|ALT_INV_Add0~41_sumout\,
	datac => \reg_file|A_mul|ALT_INV_Mux5~4_combout\,
	datad => \m1|ALT_INV_OUT[11]~30_combout\,
	datae => \func_unit|_alu|au|s|s11|ALT_INV_SH1~0_combout\,
	dataf => \func_unit|_alu|au|s|s9|ALT_INV_SH1~combout\,
	combout => \m1|OUT[11]~31_combout\);

-- Location: LABCELL_X33_Y3_N36
\m1|OUT[11]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[11]~49_combout\ = ( !\OP_SEL[3]~input_o\ & ( (!\DATA_SEL~input_o\ & (((\m1|OUT[11]~31_combout\)))) # (\DATA_SEL~input_o\ & ((((\DATA_IN[11]~input_o\))))) ) ) # ( \OP_SEL[3]~input_o\ & ( (!\DATA_SEL~input_o\ & ((!\OP_SEL[0]~input_o\ & 
-- (\m0|OUT[10]~10_combout\)) # (\OP_SEL[0]~input_o\ & (((\m0|OUT[12]~12_combout\)))))) # (\DATA_SEL~input_o\ & ((((\DATA_IN[11]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000010000101110100001010010111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \m0|ALT_INV_OUT[10]~10_combout\,
	datad => \ALT_INV_DATA_IN[11]~input_o\,
	datae => \ALT_INV_OP_SEL[3]~input_o\,
	dataf => \m0|ALT_INV_OUT[12]~12_combout\,
	datag => \m1|ALT_INV_OUT[11]~31_combout\,
	combout => \m1|OUT[11]~49_combout\);

-- Location: FF_X33_Y3_N20
\reg_file|reg11|OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[11]~49_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(11));

-- Location: LABCELL_X33_Y3_N21
\reg_file|B_mul|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux4~3_combout\ = ( \reg_file|reg3|OUT\(11) & ( \reg_file|reg7|OUT\(11) & ( (!\B_SEL[3]~input_o\) # ((!\B_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(11))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(11))))) ) ) ) # ( 
-- !\reg_file|reg3|OUT\(11) & ( \reg_file|reg7|OUT\(11) & ( (!\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(11))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(11)))))) ) ) ) # ( 
-- \reg_file|reg3|OUT\(11) & ( !\reg_file|reg7|OUT\(11) & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(11))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(11)))))) ) ) ) # ( 
-- !\reg_file|reg3|OUT\(11) & ( !\reg_file|reg7|OUT\(11) & ( (\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & (\reg_file|reg11|OUT\(11))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg15|OUT\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg11|ALT_INV_OUT\(11),
	datab => \reg_file|reg15|ALT_INV_OUT\(11),
	datac => \ALT_INV_B_SEL[3]~input_o\,
	datad => \ALT_INV_B_SEL[2]~input_o\,
	datae => \reg_file|reg3|ALT_INV_OUT\(11),
	dataf => \reg_file|reg7|ALT_INV_OUT\(11),
	combout => \reg_file|B_mul|Mux4~3_combout\);

-- Location: LABCELL_X33_Y3_N51
\reg_file|B_mul|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux4~2_combout\ = ( \reg_file|reg6|OUT\(11) & ( \reg_file|reg10|OUT\(11) & ( (!\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\) # (\reg_file|reg2|OUT\(11))))) # (\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\)) # (\reg_file|reg14|OUT\(11)))) ) ) ) 
-- # ( !\reg_file|reg6|OUT\(11) & ( \reg_file|reg10|OUT\(11) & ( (!\B_SEL[3]~input_o\ & (((\reg_file|reg2|OUT\(11) & !\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\)) # (\reg_file|reg14|OUT\(11)))) ) ) ) # ( \reg_file|reg6|OUT\(11) & ( 
-- !\reg_file|reg10|OUT\(11) & ( (!\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\) # (\reg_file|reg2|OUT\(11))))) # (\B_SEL[3]~input_o\ & (\reg_file|reg14|OUT\(11) & ((\B_SEL[2]~input_o\)))) ) ) ) # ( !\reg_file|reg6|OUT\(11) & ( !\reg_file|reg10|OUT\(11) & ( 
-- (!\B_SEL[3]~input_o\ & (((\reg_file|reg2|OUT\(11) & !\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg14|OUT\(11) & ((\B_SEL[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg14|ALT_INV_OUT\(11),
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \reg_file|reg2|ALT_INV_OUT\(11),
	datad => \ALT_INV_B_SEL[2]~input_o\,
	datae => \reg_file|reg6|ALT_INV_OUT\(11),
	dataf => \reg_file|reg10|ALT_INV_OUT\(11),
	combout => \reg_file|B_mul|Mux4~2_combout\);

-- Location: LABCELL_X33_Y6_N57
\reg_file|B_mul|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux4~0_combout\ = ( \reg_file|reg4|OUT\(11) & ( \reg_file|reg0|OUT\(11) & ( (!\B_SEL[3]~input_o\) # ((!\B_SEL[2]~input_o\ & (\reg_file|reg8|OUT\(11))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg12|OUT\(11))))) ) ) ) # ( 
-- !\reg_file|reg4|OUT\(11) & ( \reg_file|reg0|OUT\(11) & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)) # (\reg_file|reg8|OUT\(11)))) # (\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\ & \reg_file|reg12|OUT\(11))))) ) ) ) # ( \reg_file|reg4|OUT\(11) & ( 
-- !\reg_file|reg0|OUT\(11) & ( (!\B_SEL[2]~input_o\ & (\reg_file|reg8|OUT\(11) & (\B_SEL[3]~input_o\))) # (\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\) # (\reg_file|reg12|OUT\(11))))) ) ) ) # ( !\reg_file|reg4|OUT\(11) & ( !\reg_file|reg0|OUT\(11) & ( 
-- (\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & (\reg_file|reg8|OUT\(11))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg12|OUT\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[2]~input_o\,
	datab => \reg_file|reg8|ALT_INV_OUT\(11),
	datac => \ALT_INV_B_SEL[3]~input_o\,
	datad => \reg_file|reg12|ALT_INV_OUT\(11),
	datae => \reg_file|reg4|ALT_INV_OUT\(11),
	dataf => \reg_file|reg0|ALT_INV_OUT\(11),
	combout => \reg_file|B_mul|Mux4~0_combout\);

-- Location: LABCELL_X33_Y5_N15
\reg_file|B_mul|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux4~1_combout\ = ( \reg_file|reg13|OUT\(11) & ( \reg_file|reg9|OUT\(11) & ( ((!\B_SEL[2]~input_o\ & ((\reg_file|reg1|OUT\(11)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(11)))) # (\B_SEL[3]~input_o\) ) ) ) # ( 
-- !\reg_file|reg13|OUT\(11) & ( \reg_file|reg9|OUT\(11) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & ((\reg_file|reg1|OUT\(11)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(11))))) # (\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\)))) ) ) ) # ( 
-- \reg_file|reg13|OUT\(11) & ( !\reg_file|reg9|OUT\(11) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & ((\reg_file|reg1|OUT\(11)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(11))))) # (\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\)))) ) ) ) # ( 
-- !\reg_file|reg13|OUT\(11) & ( !\reg_file|reg9|OUT\(11) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & ((\reg_file|reg1|OUT\(11)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg5|ALT_INV_OUT\(11),
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \ALT_INV_B_SEL[2]~input_o\,
	datad => \reg_file|reg1|ALT_INV_OUT\(11),
	datae => \reg_file|reg13|ALT_INV_OUT\(11),
	dataf => \reg_file|reg9|ALT_INV_OUT\(11),
	combout => \reg_file|B_mul|Mux4~1_combout\);

-- Location: MLABCELL_X32_Y3_N21
\reg_file|B_mul|Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux4~4_combout\ = ( \reg_file|B_mul|Mux4~0_combout\ & ( \reg_file|B_mul|Mux4~1_combout\ & ( (!\B_SEL[1]~input_o\) # ((!\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux4~2_combout\))) # (\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux4~3_combout\))) ) 
-- ) ) # ( !\reg_file|B_mul|Mux4~0_combout\ & ( \reg_file|B_mul|Mux4~1_combout\ & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\ & \reg_file|B_mul|Mux4~2_combout\)))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|B_mul|Mux4~3_combout\))) ) ) 
-- ) # ( \reg_file|B_mul|Mux4~0_combout\ & ( !\reg_file|B_mul|Mux4~1_combout\ & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\) # (\reg_file|B_mul|Mux4~2_combout\)))) # (\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux4~3_combout\ & (\B_SEL[1]~input_o\))) ) ) ) # 
-- ( !\reg_file|B_mul|Mux4~0_combout\ & ( !\reg_file|B_mul|Mux4~1_combout\ & ( (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux4~2_combout\))) # (\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux4~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|B_mul|ALT_INV_Mux4~3_combout\,
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux4~2_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux4~0_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux4~1_combout\,
	combout => \reg_file|B_mul|Mux4~4_combout\);

-- Location: LABCELL_X33_Y3_N42
\m0|OUT[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[11]~11_combout\ = ( \reg_file|B_mul|Mux4~4_combout\ & ( (!\CONST_SEL~input_o\) # (\CONST_IN[11]~input_o\) ) ) # ( !\reg_file|B_mul|Mux4~4_combout\ & ( (\CONST_SEL~input_o\ & \CONST_IN[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CONST_SEL~input_o\,
	datac => \ALT_INV_CONST_IN[11]~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux4~4_combout\,
	combout => \m0|OUT[11]~11_combout\);

-- Location: LABCELL_X31_Y3_N42
\m1|OUT[10]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[10]~28_combout\ = ( \func_unit|_alu|au|s|s10|SH1~0_combout\ & ( \func_unit|_alu|au|s|s9|SH1~combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\) # ((\m1|OUT[10]~27_combout\)))) # (\OP_SEL[3]~input_o\ & (((\m0|OUT[11]~11_combout\)))) ) ) 
-- ) # ( !\func_unit|_alu|au|s|s10|SH1~0_combout\ & ( \func_unit|_alu|au|s|s9|SH1~combout\ & ( (!\OP_SEL[3]~input_o\ & (\m1|OUT[13]~5_combout\ & (\m1|OUT[10]~27_combout\))) # (\OP_SEL[3]~input_o\ & (((\m0|OUT[11]~11_combout\)))) ) ) ) # ( 
-- \func_unit|_alu|au|s|s10|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s9|SH1~combout\ & ( (!\OP_SEL[3]~input_o\ & (\m1|OUT[13]~5_combout\ & (\m1|OUT[10]~27_combout\))) # (\OP_SEL[3]~input_o\ & (((\m0|OUT[11]~11_combout\)))) ) ) ) # ( 
-- !\func_unit|_alu|au|s|s10|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s9|SH1~combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\) # ((\m1|OUT[10]~27_combout\)))) # (\OP_SEL[3]~input_o\ & (((\m0|OUT[11]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100001111000100010000111100010001000011111011101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_OUT[13]~5_combout\,
	datab => \m1|ALT_INV_OUT[10]~27_combout\,
	datac => \m0|ALT_INV_OUT[11]~11_combout\,
	datad => \ALT_INV_OP_SEL[3]~input_o\,
	datae => \func_unit|_alu|au|s|s10|ALT_INV_SH1~0_combout\,
	dataf => \func_unit|_alu|au|s|s9|ALT_INV_SH1~combout\,
	combout => \m1|OUT[10]~28_combout\);

-- Location: LABCELL_X31_Y3_N27
\m1|OUT[10]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[10]~29_combout\ = ( \m1|OUT[10]~28_combout\ & ( (!\DATA_SEL~input_o\ & ((!\m1|OUT[13]~3_combout\) # ((\m0|OUT[9]~9_combout\)))) # (\DATA_SEL~input_o\ & (((\DATA_IN[10]~input_o\)))) ) ) # ( !\m1|OUT[10]~28_combout\ & ( (!\DATA_SEL~input_o\ & 
-- (\m1|OUT[13]~3_combout\ & ((\m0|OUT[9]~9_combout\)))) # (\DATA_SEL~input_o\ & (((\DATA_IN[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_OUT[13]~3_combout\,
	datab => \ALT_INV_DATA_SEL~input_o\,
	datac => \ALT_INV_DATA_IN[10]~input_o\,
	datad => \m0|ALT_INV_OUT[9]~9_combout\,
	dataf => \m1|ALT_INV_OUT[10]~28_combout\,
	combout => \m1|OUT[10]~29_combout\);

-- Location: FF_X30_Y3_N23
\reg_file|reg13|OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[10]~29_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg13|OUT\(10));

-- Location: LABCELL_X31_Y3_N51
\reg_file|B_mul|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux5~3_combout\ = ( \reg_file|reg12|OUT\(10) & ( \reg_file|reg15|OUT\(10) & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\) # (\reg_file|reg14|OUT\(10))))) # (\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)) # (\reg_file|reg13|OUT\(10)))) ) ) 
-- ) # ( !\reg_file|reg12|OUT\(10) & ( \reg_file|reg15|OUT\(10) & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\ & \reg_file|reg14|OUT\(10))))) # (\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)) # (\reg_file|reg13|OUT\(10)))) ) ) ) # ( \reg_file|reg12|OUT\(10) 
-- & ( !\reg_file|reg15|OUT\(10) & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\) # (\reg_file|reg14|OUT\(10))))) # (\B_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(10) & (!\B_SEL[1]~input_o\))) ) ) ) # ( !\reg_file|reg12|OUT\(10) & ( !\reg_file|reg15|OUT\(10) 
-- & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\ & \reg_file|reg14|OUT\(10))))) # (\B_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(10) & (!\B_SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg13|ALT_INV_OUT\(10),
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|reg14|ALT_INV_OUT\(10),
	datae => \reg_file|reg12|ALT_INV_OUT\(10),
	dataf => \reg_file|reg15|ALT_INV_OUT\(10),
	combout => \reg_file|B_mul|Mux5~3_combout\);

-- Location: LABCELL_X31_Y1_N15
\reg_file|B_mul|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux5~1_combout\ = ( \reg_file|reg6|OUT\(10) & ( \reg_file|reg4|OUT\(10) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & (\reg_file|reg5|OUT\(10))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(10))))) ) ) ) # ( !\reg_file|reg6|OUT\(10) 
-- & ( \reg_file|reg4|OUT\(10) & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg5|OUT\(10))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(10)))))) ) ) ) # ( \reg_file|reg6|OUT\(10) & ( 
-- !\reg_file|reg4|OUT\(10) & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg5|OUT\(10))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(10)))))) ) ) ) # ( !\reg_file|reg6|OUT\(10) & ( 
-- !\reg_file|reg4|OUT\(10) & ( (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg5|OUT\(10))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|reg5|ALT_INV_OUT\(10),
	datac => \reg_file|reg7|ALT_INV_OUT\(10),
	datad => \ALT_INV_B_SEL[1]~input_o\,
	datae => \reg_file|reg6|ALT_INV_OUT\(10),
	dataf => \reg_file|reg4|ALT_INV_OUT\(10),
	combout => \reg_file|B_mul|Mux5~1_combout\);

-- Location: LABCELL_X31_Y3_N3
\reg_file|B_mul|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux5~2_combout\ = ( \reg_file|reg8|OUT\(10) & ( \reg_file|reg9|OUT\(10) & ( (!\B_SEL[1]~input_o\) # ((!\B_SEL[0]~input_o\ & ((\reg_file|reg10|OUT\(10)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(10)))) ) ) ) # ( 
-- !\reg_file|reg8|OUT\(10) & ( \reg_file|reg9|OUT\(10) & ( (!\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\ & \reg_file|reg10|OUT\(10))))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|reg11|OUT\(10)))) ) ) ) # ( \reg_file|reg8|OUT\(10) & ( 
-- !\reg_file|reg9|OUT\(10) & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\) # (\reg_file|reg10|OUT\(10))))) # (\B_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(10) & (\B_SEL[1]~input_o\))) ) ) ) # ( !\reg_file|reg8|OUT\(10) & ( !\reg_file|reg9|OUT\(10) & ( 
-- (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg10|OUT\(10)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg11|ALT_INV_OUT\(10),
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|reg10|ALT_INV_OUT\(10),
	datae => \reg_file|reg8|ALT_INV_OUT\(10),
	dataf => \reg_file|reg9|ALT_INV_OUT\(10),
	combout => \reg_file|B_mul|Mux5~2_combout\);

-- Location: LABCELL_X31_Y1_N51
\reg_file|B_mul|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux5~0_combout\ = ( \reg_file|reg3|OUT\(10) & ( \reg_file|reg1|OUT\(10) & ( ((!\B_SEL[1]~input_o\ & (\reg_file|reg0|OUT\(10))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg2|OUT\(10))))) # (\B_SEL[0]~input_o\) ) ) ) # ( !\reg_file|reg3|OUT\(10) 
-- & ( \reg_file|reg1|OUT\(10) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg0|OUT\(10))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg2|OUT\(10)))))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)))) ) ) ) # ( \reg_file|reg3|OUT\(10) & ( 
-- !\reg_file|reg1|OUT\(10) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg0|OUT\(10))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg2|OUT\(10)))))) # (\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|reg3|OUT\(10) & ( 
-- !\reg_file|reg1|OUT\(10) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg0|OUT\(10))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg2|OUT\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg0|ALT_INV_OUT\(10),
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|reg2|ALT_INV_OUT\(10),
	datae => \reg_file|reg3|ALT_INV_OUT\(10),
	dataf => \reg_file|reg1|ALT_INV_OUT\(10),
	combout => \reg_file|B_mul|Mux5~0_combout\);

-- Location: LABCELL_X31_Y3_N6
\reg_file|B_mul|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux5~4_combout\ = ( \reg_file|B_mul|Mux5~2_combout\ & ( \reg_file|B_mul|Mux5~0_combout\ & ( (!\B_SEL[2]~input_o\) # ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux5~1_combout\))) # (\B_SEL[3]~input_o\ & (\reg_file|B_mul|Mux5~3_combout\))) ) 
-- ) ) # ( !\reg_file|B_mul|Mux5~2_combout\ & ( \reg_file|B_mul|Mux5~0_combout\ & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux5~1_combout\))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux5~3_combout\)))) ) ) ) # ( \reg_file|B_mul|Mux5~2_combout\ & ( !\reg_file|B_mul|Mux5~0_combout\ & ( (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux5~1_combout\))) # 
-- (\B_SEL[3]~input_o\ & (\reg_file|B_mul|Mux5~3_combout\)))) ) ) ) # ( !\reg_file|B_mul|Mux5~2_combout\ & ( !\reg_file|B_mul|Mux5~0_combout\ & ( (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux5~1_combout\))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux5~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|B_mul|ALT_INV_Mux5~3_combout\,
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux5~1_combout\,
	datad => \ALT_INV_B_SEL[3]~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux5~2_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux5~0_combout\,
	combout => \reg_file|B_mul|Mux5~4_combout\);

-- Location: LABCELL_X31_Y3_N30
\m0|OUT[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[10]~10_combout\ = ( \CONST_IN[10]~input_o\ & ( (\reg_file|B_mul|Mux5~4_combout\) # (\CONST_SEL~input_o\) ) ) # ( !\CONST_IN[10]~input_o\ & ( (!\CONST_SEL~input_o\ & \reg_file|B_mul|Mux5~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \reg_file|B_mul|ALT_INV_Mux5~4_combout\,
	dataf => \ALT_INV_CONST_IN[10]~input_o\,
	combout => \m0|OUT[10]~10_combout\);

-- Location: LABCELL_X30_Y4_N0
\m1|OUT[9]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[9]~25_combout\ = ( \m0|OUT[10]~10_combout\ & ( \func_unit|_alu|au|s|s8|SH1~combout\ & ( ((!\m1|OUT[13]~5_combout\ & (\func_unit|_alu|au|s|s9|SH1~0_combout\)) # (\m1|OUT[13]~5_combout\ & ((\m1|OUT[9]~24_combout\)))) # (\OP_SEL[3]~input_o\) ) ) ) # 
-- ( !\m0|OUT[10]~10_combout\ & ( \func_unit|_alu|au|s|s8|SH1~combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\ & (\func_unit|_alu|au|s|s9|SH1~0_combout\)) # (\m1|OUT[13]~5_combout\ & ((\m1|OUT[9]~24_combout\))))) ) ) ) # ( 
-- \m0|OUT[10]~10_combout\ & ( !\func_unit|_alu|au|s|s8|SH1~combout\ & ( ((!\m1|OUT[13]~5_combout\ & (!\func_unit|_alu|au|s|s9|SH1~0_combout\)) # (\m1|OUT[13]~5_combout\ & ((\m1|OUT[9]~24_combout\)))) # (\OP_SEL[3]~input_o\) ) ) ) # ( 
-- !\m0|OUT[10]~10_combout\ & ( !\func_unit|_alu|au|s|s8|SH1~combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\ & (!\func_unit|_alu|au|s|s9|SH1~0_combout\)) # (\m1|OUT[13]~5_combout\ & ((\m1|OUT[9]~24_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100010110101011111011100001000001010100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[3]~input_o\,
	datab => \m1|ALT_INV_OUT[13]~5_combout\,
	datac => \func_unit|_alu|au|s|s9|ALT_INV_SH1~0_combout\,
	datad => \m1|ALT_INV_OUT[9]~24_combout\,
	datae => \m0|ALT_INV_OUT[10]~10_combout\,
	dataf => \func_unit|_alu|au|s|s8|ALT_INV_SH1~combout\,
	combout => \m1|OUT[9]~25_combout\);

-- Location: LABCELL_X31_Y2_N54
\m1|OUT[9]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[9]~26_combout\ = ( \m0|OUT[8]~8_combout\ & ( \m1|OUT[9]~25_combout\ & ( (!\DATA_SEL~input_o\) # (\DATA_IN[9]~input_o\) ) ) ) # ( !\m0|OUT[8]~8_combout\ & ( \m1|OUT[9]~25_combout\ & ( (!\DATA_SEL~input_o\ & (!\m1|OUT[13]~3_combout\)) # 
-- (\DATA_SEL~input_o\ & ((\DATA_IN[9]~input_o\))) ) ) ) # ( \m0|OUT[8]~8_combout\ & ( !\m1|OUT[9]~25_combout\ & ( (!\DATA_SEL~input_o\ & (\m1|OUT[13]~3_combout\)) # (\DATA_SEL~input_o\ & ((\DATA_IN[9]~input_o\))) ) ) ) # ( !\m0|OUT[8]~8_combout\ & ( 
-- !\m1|OUT[9]~25_combout\ & ( (\DATA_SEL~input_o\ & \DATA_IN[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001110100011110001011100010111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_OUT[13]~3_combout\,
	datab => \ALT_INV_DATA_SEL~input_o\,
	datac => \ALT_INV_DATA_IN[9]~input_o\,
	datae => \m0|ALT_INV_OUT[8]~8_combout\,
	dataf => \m1|ALT_INV_OUT[9]~25_combout\,
	combout => \m1|OUT[9]~26_combout\);

-- Location: FF_X31_Y2_N32
\reg_file|reg14|OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[9]~26_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(9));

-- Location: LABCELL_X31_Y2_N33
\reg_file|B_mul|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux6~2_combout\ = ( \reg_file|reg2|OUT\(9) & ( \reg_file|reg10|OUT\(9) & ( (!\B_SEL[2]~input_o\) # ((!\B_SEL[3]~input_o\ & ((\reg_file|reg6|OUT\(9)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg14|OUT\(9)))) ) ) ) # ( !\reg_file|reg2|OUT\(9) & 
-- ( \reg_file|reg10|OUT\(9) & ( (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg6|OUT\(9)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg14|OUT\(9))))) ) ) ) # ( \reg_file|reg2|OUT\(9) & ( 
-- !\reg_file|reg10|OUT\(9) & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg6|OUT\(9)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg14|OUT\(9))))) ) ) ) # ( !\reg_file|reg2|OUT\(9) & ( 
-- !\reg_file|reg10|OUT\(9) & ( (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg6|OUT\(9)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg14|OUT\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[2]~input_o\,
	datab => \reg_file|reg14|ALT_INV_OUT\(9),
	datac => \reg_file|reg6|ALT_INV_OUT\(9),
	datad => \ALT_INV_B_SEL[3]~input_o\,
	datae => \reg_file|reg2|ALT_INV_OUT\(9),
	dataf => \reg_file|reg10|ALT_INV_OUT\(9),
	combout => \reg_file|B_mul|Mux6~2_combout\);

-- Location: LABCELL_X31_Y2_N3
\reg_file|B_mul|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux6~3_combout\ = ( \reg_file|reg7|OUT\(9) & ( \reg_file|reg3|OUT\(9) & ( (!\B_SEL[3]~input_o\) # ((!\B_SEL[2]~input_o\ & ((\reg_file|reg11|OUT\(9)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg15|OUT\(9)))) ) ) ) # ( !\reg_file|reg7|OUT\(9) & 
-- ( \reg_file|reg3|OUT\(9) & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\) # (\reg_file|reg11|OUT\(9))))) # (\B_SEL[2]~input_o\ & (\reg_file|reg15|OUT\(9) & (\B_SEL[3]~input_o\))) ) ) ) # ( \reg_file|reg7|OUT\(9) & ( !\reg_file|reg3|OUT\(9) & ( 
-- (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\ & \reg_file|reg11|OUT\(9))))) # (\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)) # (\reg_file|reg15|OUT\(9)))) ) ) ) # ( !\reg_file|reg7|OUT\(9) & ( !\reg_file|reg3|OUT\(9) & ( (\B_SEL[3]~input_o\ & 
-- ((!\B_SEL[2]~input_o\ & ((\reg_file|reg11|OUT\(9)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg15|OUT\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg15|ALT_INV_OUT\(9),
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \ALT_INV_B_SEL[3]~input_o\,
	datad => \reg_file|reg11|ALT_INV_OUT\(9),
	datae => \reg_file|reg7|ALT_INV_OUT\(9),
	dataf => \reg_file|reg3|ALT_INV_OUT\(9),
	combout => \reg_file|B_mul|Mux6~3_combout\);

-- Location: LABCELL_X33_Y2_N27
\reg_file|B_mul|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux6~1_combout\ = ( \B_SEL[2]~input_o\ & ( \reg_file|reg13|OUT\(9) & ( (\B_SEL[3]~input_o\) # (\reg_file|reg5|OUT\(9)) ) ) ) # ( !\B_SEL[2]~input_o\ & ( \reg_file|reg13|OUT\(9) & ( (!\B_SEL[3]~input_o\ & (\reg_file|reg1|OUT\(9))) # 
-- (\B_SEL[3]~input_o\ & ((\reg_file|reg9|OUT\(9)))) ) ) ) # ( \B_SEL[2]~input_o\ & ( !\reg_file|reg13|OUT\(9) & ( (\reg_file|reg5|OUT\(9) & !\B_SEL[3]~input_o\) ) ) ) # ( !\B_SEL[2]~input_o\ & ( !\reg_file|reg13|OUT\(9) & ( (!\B_SEL[3]~input_o\ & 
-- (\reg_file|reg1|OUT\(9))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg9|OUT\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg5|ALT_INV_OUT\(9),
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \reg_file|reg1|ALT_INV_OUT\(9),
	datad => \reg_file|reg9|ALT_INV_OUT\(9),
	datae => \ALT_INV_B_SEL[2]~input_o\,
	dataf => \reg_file|reg13|ALT_INV_OUT\(9),
	combout => \reg_file|B_mul|Mux6~1_combout\);

-- Location: MLABCELL_X32_Y3_N33
\reg_file|B_mul|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux6~0_combout\ = ( \B_SEL[2]~input_o\ & ( \reg_file|reg8|OUT\(9) & ( (!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(9)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(9))) ) ) ) # ( !\B_SEL[2]~input_o\ & ( \reg_file|reg8|OUT\(9) & ( 
-- (\B_SEL[3]~input_o\) # (\reg_file|reg0|OUT\(9)) ) ) ) # ( \B_SEL[2]~input_o\ & ( !\reg_file|reg8|OUT\(9) & ( (!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(9)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(9))) ) ) ) # ( !\B_SEL[2]~input_o\ & ( 
-- !\reg_file|reg8|OUT\(9) & ( (\reg_file|reg0|OUT\(9) & !\B_SEL[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg12|ALT_INV_OUT\(9),
	datab => \reg_file|reg4|ALT_INV_OUT\(9),
	datac => \reg_file|reg0|ALT_INV_OUT\(9),
	datad => \ALT_INV_B_SEL[3]~input_o\,
	datae => \ALT_INV_B_SEL[2]~input_o\,
	dataf => \reg_file|reg8|ALT_INV_OUT\(9),
	combout => \reg_file|B_mul|Mux6~0_combout\);

-- Location: MLABCELL_X32_Y2_N33
\reg_file|B_mul|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux6~4_combout\ = ( \reg_file|B_mul|Mux6~1_combout\ & ( \reg_file|B_mul|Mux6~0_combout\ & ( (!\B_SEL[1]~input_o\) # ((!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux6~2_combout\)) # (\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux6~3_combout\)))) ) 
-- ) ) # ( !\reg_file|B_mul|Mux6~1_combout\ & ( \reg_file|B_mul|Mux6~0_combout\ & ( (!\B_SEL[1]~input_o\ & (((!\B_SEL[0]~input_o\)))) # (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux6~2_combout\)) # (\B_SEL[0]~input_o\ & 
-- ((\reg_file|B_mul|Mux6~3_combout\))))) ) ) ) # ( \reg_file|B_mul|Mux6~1_combout\ & ( !\reg_file|B_mul|Mux6~0_combout\ & ( (!\B_SEL[1]~input_o\ & (((\B_SEL[0]~input_o\)))) # (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux6~2_combout\)) # 
-- (\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux6~3_combout\))))) ) ) ) # ( !\reg_file|B_mul|Mux6~1_combout\ & ( !\reg_file|B_mul|Mux6~0_combout\ & ( (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux6~2_combout\)) # (\B_SEL[0]~input_o\ & 
-- ((\reg_file|B_mul|Mux6~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[1]~input_o\,
	datab => \reg_file|B_mul|ALT_INV_Mux6~2_combout\,
	datac => \reg_file|B_mul|ALT_INV_Mux6~3_combout\,
	datad => \ALT_INV_B_SEL[0]~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux6~1_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux6~0_combout\,
	combout => \reg_file|B_mul|Mux6~4_combout\);

-- Location: MLABCELL_X32_Y1_N9
\m0|OUT[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[9]~9_combout\ = ( \reg_file|B_mul|Mux6~4_combout\ & ( (!\CONST_SEL~input_o\) # (\CONST_IN[9]~input_o\) ) ) # ( !\reg_file|B_mul|Mux6~4_combout\ & ( (\CONST_IN[9]~input_o\ & \CONST_SEL~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_IN[9]~input_o\,
	datac => \ALT_INV_CONST_SEL~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux6~4_combout\,
	combout => \m0|OUT[9]~9_combout\);

-- Location: LABCELL_X30_Y1_N54
\m1|OUT[8]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[8]~22_combout\ = ( \CONST_IN[8]~input_o\ & ( \OP_SEL[0]~input_o\ & ( (!\OP_SEL[1]~input_o\ & (((\reg_file|A_mul|Mux7~4_combout\) # (\CONST_SEL~input_o\)) # (\reg_file|B_mul|Mux7~4_combout\))) # (\OP_SEL[1]~input_o\ & 
-- (((!\reg_file|A_mul|Mux7~4_combout\)))) ) ) ) # ( !\CONST_IN[8]~input_o\ & ( \OP_SEL[0]~input_o\ & ( (!\OP_SEL[1]~input_o\ & (((\reg_file|B_mul|Mux7~4_combout\ & !\CONST_SEL~input_o\)) # (\reg_file|A_mul|Mux7~4_combout\))) # (\OP_SEL[1]~input_o\ & 
-- (((!\reg_file|A_mul|Mux7~4_combout\)))) ) ) ) # ( \CONST_IN[8]~input_o\ & ( !\OP_SEL[0]~input_o\ & ( (!\OP_SEL[1]~input_o\ & (\reg_file|A_mul|Mux7~4_combout\ & ((\CONST_SEL~input_o\) # (\reg_file|B_mul|Mux7~4_combout\)))) # (\OP_SEL[1]~input_o\ & 
-- (!\reg_file|A_mul|Mux7~4_combout\ $ (((!\reg_file|B_mul|Mux7~4_combout\ & !\CONST_SEL~input_o\))))) ) ) ) # ( !\CONST_IN[8]~input_o\ & ( !\OP_SEL[0]~input_o\ & ( (!\OP_SEL[1]~input_o\ & (\reg_file|B_mul|Mux7~4_combout\ & (!\CONST_SEL~input_o\ & 
-- \reg_file|A_mul|Mux7~4_combout\))) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux7~4_combout\ $ (((!\reg_file|B_mul|Mux7~4_combout\) # (\CONST_SEL~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001011000001110111100001001111111100000111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|B_mul|ALT_INV_Mux7~4_combout\,
	datab => \ALT_INV_CONST_SEL~input_o\,
	datac => \ALT_INV_OP_SEL[1]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux7~4_combout\,
	datae => \ALT_INV_CONST_IN[8]~input_o\,
	dataf => \ALT_INV_OP_SEL[0]~input_o\,
	combout => \m1|OUT[8]~22_combout\);

-- Location: MLABCELL_X32_Y4_N3
\func_unit|_alu|au|s|s8|SH1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s8|SH1~0_combout\ = ( \func_unit|_alu|au|Add0~33_sumout\ & ( !\reg_file|A_mul|Mux7~4_combout\ ) ) # ( !\func_unit|_alu|au|Add0~33_sumout\ & ( \reg_file|A_mul|Mux7~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_file|A_mul|ALT_INV_Mux7~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~33_sumout\,
	combout => \func_unit|_alu|au|s|s8|SH1~0_combout\);

-- Location: LABCELL_X31_Y3_N18
\m1|OUT[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[8]~23_combout\ = ( \func_unit|_alu|au|s|s8|SH1~0_combout\ & ( \func_unit|_alu|au|s|s7|SH1~1_combout\ & ( (\m1|OUT[8]~22_combout\ & (!\OP_SEL[3]~input_o\ & \m1|OUT[13]~5_combout\)) ) ) ) # ( !\func_unit|_alu|au|s|s8|SH1~0_combout\ & ( 
-- \func_unit|_alu|au|s|s7|SH1~1_combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\) # (\m1|OUT[8]~22_combout\))) ) ) ) # ( \func_unit|_alu|au|s|s8|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s7|SH1~1_combout\ & ( (!\OP_SEL[3]~input_o\ & 
-- ((!\m1|OUT[13]~5_combout\ & ((!\func_unit|_alu|au|s|s7|SH1~2_combout\))) # (\m1|OUT[13]~5_combout\ & (\m1|OUT[8]~22_combout\)))) ) ) ) # ( !\func_unit|_alu|au|s|s8|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s7|SH1~1_combout\ & ( (!\OP_SEL[3]~input_o\ & 
-- ((!\m1|OUT[13]~5_combout\ & ((\func_unit|_alu|au|s|s7|SH1~2_combout\))) # (\m1|OUT[13]~5_combout\ & (\m1|OUT[8]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100110000000100010011001100010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_OUT[8]~22_combout\,
	datab => \ALT_INV_OP_SEL[3]~input_o\,
	datac => \func_unit|_alu|au|s|s7|ALT_INV_SH1~2_combout\,
	datad => \m1|ALT_INV_OUT[13]~5_combout\,
	datae => \func_unit|_alu|au|s|s8|ALT_INV_SH1~0_combout\,
	dataf => \func_unit|_alu|au|s|s7|ALT_INV_SH1~1_combout\,
	combout => \m1|OUT[8]~23_combout\);

-- Location: LABCELL_X31_Y3_N36
\m1|OUT[8]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[8]~53_combout\ = ( !\OP_SEL[0]~input_o\ & ( (!\DATA_SEL~input_o\ & (((!\OP_SEL[3]~input_o\ & ((\m1|OUT[8]~23_combout\))) # (\OP_SEL[3]~input_o\ & (\m0|OUT[7]~7_combout\))))) # (\DATA_SEL~input_o\ & (\DATA_IN[8]~input_o\)) ) ) # ( 
-- \OP_SEL[0]~input_o\ & ( (!\DATA_SEL~input_o\ & ((((\OP_SEL[3]~input_o\ & \m0|OUT[9]~9_combout\)) # (\m1|OUT[8]~23_combout\)))) # (\DATA_SEL~input_o\ & (\DATA_IN[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000000110101010111001111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_IN[8]~input_o\,
	datab => \ALT_INV_OP_SEL[3]~input_o\,
	datac => \m0|ALT_INV_OUT[9]~9_combout\,
	datad => \ALT_INV_DATA_SEL~input_o\,
	datae => \ALT_INV_OP_SEL[0]~input_o\,
	dataf => \m1|ALT_INV_OUT[8]~23_combout\,
	datag => \m0|ALT_INV_OUT[7]~7_combout\,
	combout => \m1|OUT[8]~53_combout\);

-- Location: FF_X31_Y3_N56
\reg_file|reg15|OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[8]~53_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg15|OUT\(8));

-- Location: LABCELL_X31_Y3_N15
\reg_file|B_mul|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux7~3_combout\ = ( \reg_file|reg13|OUT\(8) & ( \reg_file|reg12|OUT\(8) & ( (!\B_SEL[1]~input_o\) # ((!\B_SEL[0]~input_o\ & ((\reg_file|reg14|OUT\(8)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(8)))) ) ) ) # ( !\reg_file|reg13|OUT\(8) 
-- & ( \reg_file|reg12|OUT\(8) & ( (!\B_SEL[1]~input_o\ & (((!\B_SEL[0]~input_o\)))) # (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg14|OUT\(8)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(8))))) ) ) ) # ( \reg_file|reg13|OUT\(8) & ( 
-- !\reg_file|reg12|OUT\(8) & ( (!\B_SEL[1]~input_o\ & (((\B_SEL[0]~input_o\)))) # (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg14|OUT\(8)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(8))))) ) ) ) # ( !\reg_file|reg13|OUT\(8) & ( 
-- !\reg_file|reg12|OUT\(8) & ( (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg14|OUT\(8)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg15|ALT_INV_OUT\(8),
	datab => \reg_file|reg14|ALT_INV_OUT\(8),
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \ALT_INV_B_SEL[0]~input_o\,
	datae => \reg_file|reg13|ALT_INV_OUT\(8),
	dataf => \reg_file|reg12|ALT_INV_OUT\(8),
	combout => \reg_file|B_mul|Mux7~3_combout\);

-- Location: LABCELL_X31_Y1_N45
\reg_file|B_mul|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux7~0_combout\ = ( \reg_file|reg3|OUT\(8) & ( \reg_file|reg1|OUT\(8) & ( ((!\B_SEL[1]~input_o\ & ((\reg_file|reg0|OUT\(8)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg2|OUT\(8)))) # (\B_SEL[0]~input_o\) ) ) ) # ( !\reg_file|reg3|OUT\(8) & ( 
-- \reg_file|reg1|OUT\(8) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg0|OUT\(8)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg2|OUT\(8))))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)))) ) ) ) # ( \reg_file|reg3|OUT\(8) & ( 
-- !\reg_file|reg1|OUT\(8) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg0|OUT\(8)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg2|OUT\(8))))) # (\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|reg3|OUT\(8) & ( 
-- !\reg_file|reg1|OUT\(8) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg0|OUT\(8)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg2|OUT\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg2|ALT_INV_OUT\(8),
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \reg_file|reg0|ALT_INV_OUT\(8),
	datad => \ALT_INV_B_SEL[1]~input_o\,
	datae => \reg_file|reg3|ALT_INV_OUT\(8),
	dataf => \reg_file|reg1|ALT_INV_OUT\(8),
	combout => \reg_file|B_mul|Mux7~0_combout\);

-- Location: LABCELL_X33_Y3_N0
\reg_file|B_mul|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux7~2_combout\ = ( \B_SEL[1]~input_o\ & ( \reg_file|reg8|OUT\(8) & ( (!\B_SEL[0]~input_o\ & ((\reg_file|reg10|OUT\(8)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(8))) ) ) ) # ( !\B_SEL[1]~input_o\ & ( \reg_file|reg8|OUT\(8) & ( 
-- (!\B_SEL[0]~input_o\) # (\reg_file|reg9|OUT\(8)) ) ) ) # ( \B_SEL[1]~input_o\ & ( !\reg_file|reg8|OUT\(8) & ( (!\B_SEL[0]~input_o\ & ((\reg_file|reg10|OUT\(8)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg11|OUT\(8))) ) ) ) # ( !\B_SEL[1]~input_o\ & ( 
-- !\reg_file|reg8|OUT\(8) & ( (\B_SEL[0]~input_o\ & \reg_file|reg9|OUT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|reg11|ALT_INV_OUT\(8),
	datac => \reg_file|reg9|ALT_INV_OUT\(8),
	datad => \reg_file|reg10|ALT_INV_OUT\(8),
	datae => \ALT_INV_B_SEL[1]~input_o\,
	dataf => \reg_file|reg8|ALT_INV_OUT\(8),
	combout => \reg_file|B_mul|Mux7~2_combout\);

-- Location: LABCELL_X31_Y1_N39
\reg_file|B_mul|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux7~1_combout\ = ( \reg_file|reg6|OUT\(8) & ( \reg_file|reg4|OUT\(8) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & (\reg_file|reg5|OUT\(8))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(8))))) ) ) ) # ( !\reg_file|reg6|OUT\(8) & ( 
-- \reg_file|reg4|OUT\(8) & ( (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg5|OUT\(8))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(8)))))) ) ) ) # ( \reg_file|reg6|OUT\(8) & ( 
-- !\reg_file|reg4|OUT\(8) & ( (!\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg5|OUT\(8))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(8)))))) ) ) ) # ( !\reg_file|reg6|OUT\(8) & ( 
-- !\reg_file|reg4|OUT\(8) & ( (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg5|OUT\(8))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg7|OUT\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg5|ALT_INV_OUT\(8),
	datad => \reg_file|reg7|ALT_INV_OUT\(8),
	datae => \reg_file|reg6|ALT_INV_OUT\(8),
	dataf => \reg_file|reg4|ALT_INV_OUT\(8),
	combout => \reg_file|B_mul|Mux7~1_combout\);

-- Location: MLABCELL_X32_Y3_N9
\reg_file|B_mul|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux7~4_combout\ = ( \reg_file|B_mul|Mux7~2_combout\ & ( \reg_file|B_mul|Mux7~1_combout\ & ( (!\B_SEL[3]~input_o\ & (((\reg_file|B_mul|Mux7~0_combout\) # (\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\)) # 
-- (\reg_file|B_mul|Mux7~3_combout\))) ) ) ) # ( !\reg_file|B_mul|Mux7~2_combout\ & ( \reg_file|B_mul|Mux7~1_combout\ & ( (!\B_SEL[3]~input_o\ & (((\reg_file|B_mul|Mux7~0_combout\) # (\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux7~3_combout\ & (\B_SEL[2]~input_o\))) ) ) ) # ( \reg_file|B_mul|Mux7~2_combout\ & ( !\reg_file|B_mul|Mux7~1_combout\ & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\ & \reg_file|B_mul|Mux7~0_combout\)))) # (\B_SEL[3]~input_o\ & 
-- (((!\B_SEL[2]~input_o\)) # (\reg_file|B_mul|Mux7~3_combout\))) ) ) ) # ( !\reg_file|B_mul|Mux7~2_combout\ & ( !\reg_file|B_mul|Mux7~1_combout\ & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\ & \reg_file|B_mul|Mux7~0_combout\)))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux7~3_combout\ & (\B_SEL[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \reg_file|B_mul|ALT_INV_Mux7~3_combout\,
	datac => \ALT_INV_B_SEL[2]~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux7~0_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux7~2_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux7~1_combout\,
	combout => \reg_file|B_mul|Mux7~4_combout\);

-- Location: LABCELL_X28_Y2_N12
\m0|OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[8]~8_combout\ = ( \CONST_IN[8]~input_o\ & ( \reg_file|B_mul|Mux7~4_combout\ ) ) # ( !\CONST_IN[8]~input_o\ & ( \reg_file|B_mul|Mux7~4_combout\ & ( !\CONST_SEL~input_o\ ) ) ) # ( \CONST_IN[8]~input_o\ & ( !\reg_file|B_mul|Mux7~4_combout\ & ( 
-- \CONST_SEL~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CONST_SEL~input_o\,
	datae => \ALT_INV_CONST_IN[8]~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux7~4_combout\,
	combout => \m0|OUT[8]~8_combout\);

-- Location: IOIBUF_X6_Y0_N35
\DATA_IN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(7),
	o => \DATA_IN[7]~input_o\);

-- Location: LABCELL_X35_Y3_N6
\m1|OUT[7]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[7]~20_combout\ = ( \CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux8~4_combout\ & ( (!\OP_SEL[1]~input_o\ & ((!\OP_SEL[0]~input_o\ & (\CONST_IN[7]~input_o\ & \reg_file|A_mul|Mux8~4_combout\)) # (\OP_SEL[0]~input_o\ & ((\reg_file|A_mul|Mux8~4_combout\) 
-- # (\CONST_IN[7]~input_o\))))) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux8~4_combout\ $ (((!\OP_SEL[0]~input_o\ & !\CONST_IN[7]~input_o\))))) ) ) ) # ( !\CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux8~4_combout\ & ( (!\OP_SEL[1]~input_o\ & 
-- ((\reg_file|A_mul|Mux8~4_combout\) # (\OP_SEL[0]~input_o\))) # (\OP_SEL[1]~input_o\ & ((!\reg_file|A_mul|Mux8~4_combout\))) ) ) ) # ( \CONST_SEL~input_o\ & ( !\reg_file|B_mul|Mux8~4_combout\ & ( (!\OP_SEL[1]~input_o\ & ((!\OP_SEL[0]~input_o\ & 
-- (\CONST_IN[7]~input_o\ & \reg_file|A_mul|Mux8~4_combout\)) # (\OP_SEL[0]~input_o\ & ((\reg_file|A_mul|Mux8~4_combout\) # (\CONST_IN[7]~input_o\))))) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux8~4_combout\ $ (((!\OP_SEL[0]~input_o\ & 
-- !\CONST_IN[7]~input_o\))))) ) ) ) # ( !\CONST_SEL~input_o\ & ( !\reg_file|B_mul|Mux8~4_combout\ & ( (!\OP_SEL[1]~input_o\ & (\OP_SEL[0]~input_o\ & \reg_file|A_mul|Mux8~4_combout\)) # (\OP_SEL[1]~input_o\ & (!\OP_SEL[0]~input_o\ $ 
-- (!\reg_file|A_mul|Mux8~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101100110000101110110101001110111101010100001011101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[1]~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \ALT_INV_CONST_IN[7]~input_o\,
	datad => \reg_file|A_mul|ALT_INV_Mux8~4_combout\,
	datae => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux8~4_combout\,
	combout => \m1|OUT[7]~20_combout\);

-- Location: LABCELL_X30_Y2_N3
\m1|OUT[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[7]~21_combout\ = ( \func_unit|_alu|au|s|s7|SH1~0_combout\ & ( \func_unit|_alu|au|s|s6|SH1~2_combout\ & ( (\m1|OUT[7]~20_combout\ & (\m1|OUT[13]~5_combout\ & !\OP_SEL[3]~input_o\)) ) ) ) # ( !\func_unit|_alu|au|s|s7|SH1~0_combout\ & ( 
-- \func_unit|_alu|au|s|s6|SH1~2_combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\) # (\m1|OUT[7]~20_combout\))) ) ) ) # ( \func_unit|_alu|au|s|s7|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s6|SH1~2_combout\ & ( (!\OP_SEL[3]~input_o\ & 
-- ((!\m1|OUT[13]~5_combout\ & (!\func_unit|_alu|au|s|s6|SH1~1_combout\)) # (\m1|OUT[13]~5_combout\ & ((\m1|OUT[7]~20_combout\))))) ) ) ) # ( !\func_unit|_alu|au|s|s7|SH1~0_combout\ & ( !\func_unit|_alu|au|s|s6|SH1~2_combout\ & ( (!\OP_SEL[3]~input_o\ & 
-- ((!\m1|OUT[13]~5_combout\ & (\func_unit|_alu|au|s|s6|SH1~1_combout\)) # (\m1|OUT[13]~5_combout\ & ((\m1|OUT[7]~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000101000110000000011110011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|s|s6|ALT_INV_SH1~1_combout\,
	datab => \m1|ALT_INV_OUT[7]~20_combout\,
	datac => \m1|ALT_INV_OUT[13]~5_combout\,
	datad => \ALT_INV_OP_SEL[3]~input_o\,
	datae => \func_unit|_alu|au|s|s7|ALT_INV_SH1~0_combout\,
	dataf => \func_unit|_alu|au|s|s6|ALT_INV_SH1~2_combout\,
	combout => \m1|OUT[7]~21_combout\);

-- Location: LABCELL_X31_Y2_N48
\m1|OUT[7]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[7]~57_combout\ = ( !\OP_SEL[0]~input_o\ & ( (!\DATA_SEL~input_o\ & ((!\OP_SEL[3]~input_o\ & (((\m1|OUT[7]~21_combout\)))) # (\OP_SEL[3]~input_o\ & (\m0|OUT[6]~6_combout\)))) # (\DATA_SEL~input_o\ & ((((\DATA_IN[7]~input_o\))))) ) ) # ( 
-- \OP_SEL[0]~input_o\ & ( (!\DATA_SEL~input_o\ & ((((\OP_SEL[3]~input_o\ & \m0|OUT[8]~8_combout\)) # (\m1|OUT[7]~21_combout\)))) # (\DATA_SEL~input_o\ & ((((\DATA_IN[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000110111000001000011011110001100101111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[3]~input_o\,
	datab => \ALT_INV_DATA_SEL~input_o\,
	datac => \m0|ALT_INV_OUT[8]~8_combout\,
	datad => \ALT_INV_DATA_IN[7]~input_o\,
	datae => \ALT_INV_OP_SEL[0]~input_o\,
	dataf => \m1|ALT_INV_OUT[7]~21_combout\,
	datag => \m0|ALT_INV_OUT[6]~6_combout\,
	combout => \m1|OUT[7]~57_combout\);

-- Location: FF_X31_Y2_N14
\reg_file|reg14|OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[7]~57_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(7));

-- Location: LABCELL_X31_Y2_N15
\reg_file|B_mul|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux8~2_combout\ = ( \reg_file|reg10|OUT\(7) & ( \reg_file|reg6|OUT\(7) & ( (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\) # (\reg_file|reg2|OUT\(7))))) # (\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)) # (\reg_file|reg14|OUT\(7)))) ) ) ) # ( 
-- !\reg_file|reg10|OUT\(7) & ( \reg_file|reg6|OUT\(7) & ( (!\B_SEL[2]~input_o\ & (((\reg_file|reg2|OUT\(7) & !\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)) # (\reg_file|reg14|OUT\(7)))) ) ) ) # ( \reg_file|reg10|OUT\(7) & ( 
-- !\reg_file|reg6|OUT\(7) & ( (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\) # (\reg_file|reg2|OUT\(7))))) # (\B_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(7) & ((\B_SEL[3]~input_o\)))) ) ) ) # ( !\reg_file|reg10|OUT\(7) & ( !\reg_file|reg6|OUT\(7) & ( 
-- (!\B_SEL[2]~input_o\ & (((\reg_file|reg2|OUT\(7) & !\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(7) & ((\B_SEL[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[2]~input_o\,
	datab => \reg_file|reg14|ALT_INV_OUT\(7),
	datac => \reg_file|reg2|ALT_INV_OUT\(7),
	datad => \ALT_INV_B_SEL[3]~input_o\,
	datae => \reg_file|reg10|ALT_INV_OUT\(7),
	dataf => \reg_file|reg6|ALT_INV_OUT\(7),
	combout => \reg_file|B_mul|Mux8~2_combout\);

-- Location: MLABCELL_X32_Y2_N27
\reg_file|B_mul|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux8~3_combout\ = ( \reg_file|reg7|OUT\(7) & ( \reg_file|reg15|OUT\(7) & ( ((!\B_SEL[3]~input_o\ & ((\reg_file|reg3|OUT\(7)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg11|OUT\(7)))) # (\B_SEL[2]~input_o\) ) ) ) # ( !\reg_file|reg7|OUT\(7) & ( 
-- \reg_file|reg15|OUT\(7) & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\ & \reg_file|reg3|OUT\(7))))) # (\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\)) # (\reg_file|reg11|OUT\(7)))) ) ) ) # ( \reg_file|reg7|OUT\(7) & ( !\reg_file|reg15|OUT\(7) & ( 
-- (!\B_SEL[3]~input_o\ & (((\reg_file|reg3|OUT\(7)) # (\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg11|OUT\(7) & (!\B_SEL[2]~input_o\))) ) ) ) # ( !\reg_file|reg7|OUT\(7) & ( !\reg_file|reg15|OUT\(7) & ( (!\B_SEL[2]~input_o\ & 
-- ((!\B_SEL[3]~input_o\ & ((\reg_file|reg3|OUT\(7)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg11|OUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg11|ALT_INV_OUT\(7),
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \ALT_INV_B_SEL[2]~input_o\,
	datad => \reg_file|reg3|ALT_INV_OUT\(7),
	datae => \reg_file|reg7|ALT_INV_OUT\(7),
	dataf => \reg_file|reg15|ALT_INV_OUT\(7),
	combout => \reg_file|B_mul|Mux8~3_combout\);

-- Location: LABCELL_X33_Y2_N3
\reg_file|B_mul|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux8~1_combout\ = ( \reg_file|reg1|OUT\(7) & ( \reg_file|reg13|OUT\(7) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\) # ((\reg_file|reg5|OUT\(7))))) # (\B_SEL[3]~input_o\ & (((\reg_file|reg9|OUT\(7))) # (\B_SEL[2]~input_o\))) ) ) ) # ( 
-- !\reg_file|reg1|OUT\(7) & ( \reg_file|reg13|OUT\(7) & ( (!\B_SEL[3]~input_o\ & (\B_SEL[2]~input_o\ & ((\reg_file|reg5|OUT\(7))))) # (\B_SEL[3]~input_o\ & (((\reg_file|reg9|OUT\(7))) # (\B_SEL[2]~input_o\))) ) ) ) # ( \reg_file|reg1|OUT\(7) & ( 
-- !\reg_file|reg13|OUT\(7) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\) # ((\reg_file|reg5|OUT\(7))))) # (\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\ & (\reg_file|reg9|OUT\(7)))) ) ) ) # ( !\reg_file|reg1|OUT\(7) & ( !\reg_file|reg13|OUT\(7) & ( 
-- (!\B_SEL[3]~input_o\ & (\B_SEL[2]~input_o\ & ((\reg_file|reg5|OUT\(7))))) # (\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\ & (\reg_file|reg9|OUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|reg9|ALT_INV_OUT\(7),
	datad => \reg_file|reg5|ALT_INV_OUT\(7),
	datae => \reg_file|reg1|ALT_INV_OUT\(7),
	dataf => \reg_file|reg13|ALT_INV_OUT\(7),
	combout => \reg_file|B_mul|Mux8~1_combout\);

-- Location: MLABCELL_X32_Y3_N45
\reg_file|B_mul|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux8~0_combout\ = ( \reg_file|reg0|OUT\(7) & ( \reg_file|reg8|OUT\(7) & ( (!\B_SEL[2]~input_o\) # ((!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(7)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(7)))) ) ) ) # ( !\reg_file|reg0|OUT\(7) & ( 
-- \reg_file|reg8|OUT\(7) & ( (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(7)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(7))))) ) ) ) # ( \reg_file|reg0|OUT\(7) & ( 
-- !\reg_file|reg8|OUT\(7) & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(7)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(7))))) ) ) ) # ( !\reg_file|reg0|OUT\(7) & ( 
-- !\reg_file|reg8|OUT\(7) & ( (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|reg4|OUT\(7)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg12|OUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[2]~input_o\,
	datab => \reg_file|reg12|ALT_INV_OUT\(7),
	datac => \reg_file|reg4|ALT_INV_OUT\(7),
	datad => \ALT_INV_B_SEL[3]~input_o\,
	datae => \reg_file|reg0|ALT_INV_OUT\(7),
	dataf => \reg_file|reg8|ALT_INV_OUT\(7),
	combout => \reg_file|B_mul|Mux8~0_combout\);

-- Location: MLABCELL_X32_Y2_N39
\reg_file|B_mul|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux8~4_combout\ = ( \reg_file|B_mul|Mux8~1_combout\ & ( \reg_file|B_mul|Mux8~0_combout\ & ( (!\B_SEL[1]~input_o\) # ((!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux8~2_combout\)) # (\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux8~3_combout\)))) ) 
-- ) ) # ( !\reg_file|B_mul|Mux8~1_combout\ & ( \reg_file|B_mul|Mux8~0_combout\ & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\) # ((\reg_file|B_mul|Mux8~2_combout\)))) # (\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\ & ((\reg_file|B_mul|Mux8~3_combout\)))) ) ) 
-- ) # ( \reg_file|B_mul|Mux8~1_combout\ & ( !\reg_file|B_mul|Mux8~0_combout\ & ( (!\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\ & (\reg_file|B_mul|Mux8~2_combout\))) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\) # ((\reg_file|B_mul|Mux8~3_combout\)))) ) ) ) # 
-- ( !\reg_file|B_mul|Mux8~1_combout\ & ( !\reg_file|B_mul|Mux8~0_combout\ & ( (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux8~2_combout\)) # (\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux8~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux8~2_combout\,
	datad => \reg_file|B_mul|ALT_INV_Mux8~3_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux8~1_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux8~0_combout\,
	combout => \reg_file|B_mul|Mux8~4_combout\);

-- Location: LABCELL_X33_Y5_N42
\m0|OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[7]~7_combout\ = ( \CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux8~4_combout\ & ( \CONST_IN[7]~input_o\ ) ) ) # ( !\CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux8~4_combout\ ) ) # ( \CONST_SEL~input_o\ & ( !\reg_file|B_mul|Mux8~4_combout\ & ( 
-- \CONST_IN[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CONST_IN[7]~input_o\,
	datae => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux8~4_combout\,
	combout => \m0|OUT[7]~7_combout\);

-- Location: MLABCELL_X32_Y3_N39
\m1|OUT[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[6]~18_combout\ = ( \OP_SEL[1]~input_o\ & ( \reg_file|A_mul|Mux9~4_combout\ & ( (!\OP_SEL[0]~input_o\ & ((!\CONST_SEL~input_o\ & ((!\reg_file|B_mul|Mux9~4_combout\))) # (\CONST_SEL~input_o\ & (!\CONST_IN[6]~input_o\)))) ) ) ) # ( 
-- !\OP_SEL[1]~input_o\ & ( \reg_file|A_mul|Mux9~4_combout\ & ( ((!\CONST_SEL~input_o\ & ((\reg_file|B_mul|Mux9~4_combout\))) # (\CONST_SEL~input_o\ & (\CONST_IN[6]~input_o\))) # (\OP_SEL[0]~input_o\) ) ) ) # ( \OP_SEL[1]~input_o\ & ( 
-- !\reg_file|A_mul|Mux9~4_combout\ & ( ((!\CONST_SEL~input_o\ & ((\reg_file|B_mul|Mux9~4_combout\))) # (\CONST_SEL~input_o\ & (\CONST_IN[6]~input_o\))) # (\OP_SEL[0]~input_o\) ) ) ) # ( !\OP_SEL[1]~input_o\ & ( !\reg_file|A_mul|Mux9~4_combout\ & ( 
-- (\OP_SEL[0]~input_o\ & ((!\CONST_SEL~input_o\ & ((\reg_file|B_mul|Mux9~4_combout\))) # (\CONST_SEL~input_o\ & (\CONST_IN[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011001101111011111100110111101111111100100001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \ALT_INV_CONST_IN[6]~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux9~4_combout\,
	datae => \ALT_INV_OP_SEL[1]~input_o\,
	dataf => \reg_file|A_mul|ALT_INV_Mux9~4_combout\,
	combout => \m1|OUT[6]~18_combout\);

-- Location: LABCELL_X31_Y6_N24
\m1|OUT[6]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[6]~19_combout\ = ( \func_unit|_alu|au|s|s5|SH1~2_combout\ & ( \func_unit|_alu|au|s|s5|SH1~1_combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\ & ((!\func_unit|_alu|au|s|s6|SH1~0_combout\))) # (\m1|OUT[13]~5_combout\ & 
-- (\m1|OUT[6]~18_combout\)))) ) ) ) # ( !\func_unit|_alu|au|s|s5|SH1~2_combout\ & ( \func_unit|_alu|au|s|s5|SH1~1_combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\ & ((!\func_unit|_alu|au|s|s6|SH1~0_combout\))) # (\m1|OUT[13]~5_combout\ & 
-- (\m1|OUT[6]~18_combout\)))) ) ) ) # ( \func_unit|_alu|au|s|s5|SH1~2_combout\ & ( !\func_unit|_alu|au|s|s5|SH1~1_combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\ & ((!\func_unit|_alu|au|s|s6|SH1~0_combout\))) # (\m1|OUT[13]~5_combout\ & 
-- (\m1|OUT[6]~18_combout\)))) ) ) ) # ( !\func_unit|_alu|au|s|s5|SH1~2_combout\ & ( !\func_unit|_alu|au|s|s5|SH1~1_combout\ & ( (!\OP_SEL[3]~input_o\ & ((!\m1|OUT[13]~5_combout\ & ((\func_unit|_alu|au|s|s6|SH1~0_combout\))) # (\m1|OUT[13]~5_combout\ & 
-- (\m1|OUT[6]~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010101000000010001010100000001000101010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[3]~input_o\,
	datab => \m1|ALT_INV_OUT[6]~18_combout\,
	datac => \func_unit|_alu|au|s|s6|ALT_INV_SH1~0_combout\,
	datad => \m1|ALT_INV_OUT[13]~5_combout\,
	datae => \func_unit|_alu|au|s|s5|ALT_INV_SH1~2_combout\,
	dataf => \func_unit|_alu|au|s|s5|ALT_INV_SH1~1_combout\,
	combout => \m1|OUT[6]~19_combout\);

-- Location: LABCELL_X30_Y6_N0
\m1|OUT[6]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[6]~61_combout\ = ( !\OP_SEL[0]~input_o\ & ( (!\DATA_SEL~input_o\ & (((!\OP_SEL[3]~input_o\ & ((\m1|OUT[6]~19_combout\))) # (\OP_SEL[3]~input_o\ & (\m0|OUT[5]~5_combout\))))) # (\DATA_SEL~input_o\ & (\DATA_IN[6]~input_o\)) ) ) # ( 
-- \OP_SEL[0]~input_o\ & ( (!\DATA_SEL~input_o\ & ((((\OP_SEL[3]~input_o\ & \m0|OUT[7]~7_combout\)) # (\m1|OUT[6]~19_combout\)))) # (\DATA_SEL~input_o\ & (\DATA_IN[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000000110101010111001111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_IN[6]~input_o\,
	datab => \ALT_INV_OP_SEL[3]~input_o\,
	datac => \m0|ALT_INV_OUT[7]~7_combout\,
	datad => \ALT_INV_DATA_SEL~input_o\,
	datae => \ALT_INV_OP_SEL[0]~input_o\,
	dataf => \m1|ALT_INV_OUT[6]~19_combout\,
	datag => \m0|ALT_INV_OUT[5]~5_combout\,
	combout => \m1|OUT[6]~61_combout\);

-- Location: FF_X32_Y2_N44
\reg_file|reg11|OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[6]~61_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg11|OUT\(6));

-- Location: MLABCELL_X32_Y2_N3
\reg_file|B_mul|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux9~2_combout\ = ( \reg_file|reg10|OUT\(6) & ( \reg_file|reg8|OUT\(6) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & ((\reg_file|reg9|OUT\(6)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg11|OUT\(6)))) ) ) ) # ( !\reg_file|reg10|OUT\(6) & 
-- ( \reg_file|reg8|OUT\(6) & ( (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg9|OUT\(6)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg11|OUT\(6))))) ) ) ) # ( \reg_file|reg10|OUT\(6) & ( 
-- !\reg_file|reg8|OUT\(6) & ( (!\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg9|OUT\(6)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg11|OUT\(6))))) ) ) ) # ( !\reg_file|reg10|OUT\(6) & ( 
-- !\reg_file|reg8|OUT\(6) & ( (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg9|OUT\(6)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg11|OUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg11|ALT_INV_OUT\(6),
	datad => \reg_file|reg9|ALT_INV_OUT\(6),
	datae => \reg_file|reg10|ALT_INV_OUT\(6),
	dataf => \reg_file|reg8|ALT_INV_OUT\(6),
	combout => \reg_file|B_mul|Mux9~2_combout\);

-- Location: LABCELL_X30_Y3_N9
\reg_file|B_mul|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux9~3_combout\ = ( \reg_file|reg14|OUT\(6) & ( \reg_file|reg15|OUT\(6) & ( ((!\B_SEL[0]~input_o\ & ((\reg_file|reg12|OUT\(6)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(6)))) # (\B_SEL[1]~input_o\) ) ) ) # ( !\reg_file|reg14|OUT\(6) 
-- & ( \reg_file|reg15|OUT\(6) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg12|OUT\(6)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(6))))) # (\B_SEL[1]~input_o\ & (((\B_SEL[0]~input_o\)))) ) ) ) # ( \reg_file|reg14|OUT\(6) & ( 
-- !\reg_file|reg15|OUT\(6) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg12|OUT\(6)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(6))))) # (\B_SEL[1]~input_o\ & (((!\B_SEL[0]~input_o\)))) ) ) ) # ( !\reg_file|reg14|OUT\(6) & ( 
-- !\reg_file|reg15|OUT\(6) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg12|OUT\(6)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg13|OUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[1]~input_o\,
	datab => \reg_file|reg13|ALT_INV_OUT\(6),
	datac => \reg_file|reg12|ALT_INV_OUT\(6),
	datad => \ALT_INV_B_SEL[0]~input_o\,
	datae => \reg_file|reg14|ALT_INV_OUT\(6),
	dataf => \reg_file|reg15|ALT_INV_OUT\(6),
	combout => \reg_file|B_mul|Mux9~3_combout\);

-- Location: MLABCELL_X32_Y1_N3
\reg_file|B_mul|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux9~0_combout\ = ( \reg_file|reg1|OUT\(6) & ( \reg_file|reg2|OUT\(6) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg0|OUT\(6))) # (\B_SEL[1]~input_o\))) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\) # ((\reg_file|reg3|OUT\(6))))) ) ) ) # ( 
-- !\reg_file|reg1|OUT\(6) & ( \reg_file|reg2|OUT\(6) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg0|OUT\(6))) # (\B_SEL[1]~input_o\))) # (\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\ & (\reg_file|reg3|OUT\(6)))) ) ) ) # ( \reg_file|reg1|OUT\(6) & ( 
-- !\reg_file|reg2|OUT\(6) & ( (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\ & ((\reg_file|reg0|OUT\(6))))) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\) # ((\reg_file|reg3|OUT\(6))))) ) ) ) # ( !\reg_file|reg1|OUT\(6) & ( !\reg_file|reg2|OUT\(6) & ( 
-- (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\ & ((\reg_file|reg0|OUT\(6))))) # (\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\ & (\reg_file|reg3|OUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg3|ALT_INV_OUT\(6),
	datad => \reg_file|reg0|ALT_INV_OUT\(6),
	datae => \reg_file|reg1|ALT_INV_OUT\(6),
	dataf => \reg_file|reg2|ALT_INV_OUT\(6),
	combout => \reg_file|B_mul|Mux9~0_combout\);

-- Location: LABCELL_X31_Y1_N9
\reg_file|B_mul|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux9~1_combout\ = ( \reg_file|reg4|OUT\(6) & ( \reg_file|reg6|OUT\(6) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & ((\reg_file|reg5|OUT\(6)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg7|OUT\(6)))) ) ) ) # ( !\reg_file|reg4|OUT\(6) & ( 
-- \reg_file|reg6|OUT\(6) & ( (!\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg5|OUT\(6)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg7|OUT\(6))))) ) ) ) # ( \reg_file|reg4|OUT\(6) & ( 
-- !\reg_file|reg6|OUT\(6) & ( (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg5|OUT\(6)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg7|OUT\(6))))) ) ) ) # ( !\reg_file|reg4|OUT\(6) & ( 
-- !\reg_file|reg6|OUT\(6) & ( (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg5|OUT\(6)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg7|OUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg7|ALT_INV_OUT\(6),
	datad => \reg_file|reg5|ALT_INV_OUT\(6),
	datae => \reg_file|reg4|ALT_INV_OUT\(6),
	dataf => \reg_file|reg6|ALT_INV_OUT\(6),
	combout => \reg_file|B_mul|Mux9~1_combout\);

-- Location: LABCELL_X31_Y2_N18
\reg_file|B_mul|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux9~4_combout\ = ( \reg_file|B_mul|Mux9~0_combout\ & ( \reg_file|B_mul|Mux9~1_combout\ & ( (!\B_SEL[3]~input_o\) # ((!\B_SEL[2]~input_o\ & (\reg_file|B_mul|Mux9~2_combout\)) # (\B_SEL[2]~input_o\ & ((\reg_file|B_mul|Mux9~3_combout\)))) ) 
-- ) ) # ( !\reg_file|B_mul|Mux9~0_combout\ & ( \reg_file|B_mul|Mux9~1_combout\ & ( (!\B_SEL[2]~input_o\ & (\B_SEL[3]~input_o\ & (\reg_file|B_mul|Mux9~2_combout\))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\) # ((\reg_file|B_mul|Mux9~3_combout\)))) ) ) ) 
-- # ( \reg_file|B_mul|Mux9~0_combout\ & ( !\reg_file|B_mul|Mux9~1_combout\ & ( (!\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\) # ((\reg_file|B_mul|Mux9~2_combout\)))) # (\B_SEL[2]~input_o\ & (\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux9~3_combout\)))) ) ) ) # 
-- ( !\reg_file|B_mul|Mux9~0_combout\ & ( !\reg_file|B_mul|Mux9~1_combout\ & ( (\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & (\reg_file|B_mul|Mux9~2_combout\)) # (\B_SEL[2]~input_o\ & ((\reg_file|B_mul|Mux9~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[2]~input_o\,
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux9~2_combout\,
	datad => \reg_file|B_mul|ALT_INV_Mux9~3_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux9~0_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux9~1_combout\,
	combout => \reg_file|B_mul|Mux9~4_combout\);

-- Location: LABCELL_X31_Y4_N51
\m0|OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[6]~6_combout\ = ( \CONST_IN[6]~input_o\ & ( (\reg_file|B_mul|Mux9~4_combout\) # (\CONST_SEL~input_o\) ) ) # ( !\CONST_IN[6]~input_o\ & ( (!\CONST_SEL~input_o\ & \reg_file|B_mul|Mux9~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux9~4_combout\,
	dataf => \ALT_INV_CONST_IN[6]~input_o\,
	combout => \m0|OUT[6]~6_combout\);

-- Location: LABCELL_X31_Y2_N6
\m1|OUT[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[5]~16_combout\ = ( \func_unit|_alu|au|s|s4|SH1~combout\ & ( \func_unit|_alu|au|s|s5|SH1~0_combout\ & ( (!\OP_SEL[3]~input_o\ & (\m1|OUT[5]~15_combout\ & (\m1|OUT[13]~5_combout\))) # (\OP_SEL[3]~input_o\ & (((\m0|OUT[6]~6_combout\)))) ) ) ) # ( 
-- !\func_unit|_alu|au|s|s4|SH1~combout\ & ( \func_unit|_alu|au|s|s5|SH1~0_combout\ & ( (!\OP_SEL[3]~input_o\ & (((!\m1|OUT[13]~5_combout\)) # (\m1|OUT[5]~15_combout\))) # (\OP_SEL[3]~input_o\ & (((\m0|OUT[6]~6_combout\)))) ) ) ) # ( 
-- \func_unit|_alu|au|s|s4|SH1~combout\ & ( !\func_unit|_alu|au|s|s5|SH1~0_combout\ & ( (!\OP_SEL[3]~input_o\ & (((!\m1|OUT[13]~5_combout\)) # (\m1|OUT[5]~15_combout\))) # (\OP_SEL[3]~input_o\ & (((\m0|OUT[6]~6_combout\)))) ) ) ) # ( 
-- !\func_unit|_alu|au|s|s4|SH1~combout\ & ( !\func_unit|_alu|au|s|s5|SH1~0_combout\ & ( (!\OP_SEL[3]~input_o\ & (\m1|OUT[5]~15_combout\ & (\m1|OUT[13]~5_combout\))) # (\OP_SEL[3]~input_o\ & (((\m0|OUT[6]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111110100001101111111010000110111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_OUT[5]~15_combout\,
	datab => \m1|ALT_INV_OUT[13]~5_combout\,
	datac => \ALT_INV_OP_SEL[3]~input_o\,
	datad => \m0|ALT_INV_OUT[6]~6_combout\,
	datae => \func_unit|_alu|au|s|s4|ALT_INV_SH1~combout\,
	dataf => \func_unit|_alu|au|s|s5|ALT_INV_SH1~0_combout\,
	combout => \m1|OUT[5]~16_combout\);

-- Location: LABCELL_X31_Y2_N39
\m1|OUT[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[5]~17_combout\ = ( \m1|OUT[13]~3_combout\ & ( \m1|OUT[5]~16_combout\ & ( (!\DATA_SEL~input_o\ & ((\m0|OUT[4]~4_combout\))) # (\DATA_SEL~input_o\ & (\DATA_IN[5]~input_o\)) ) ) ) # ( !\m1|OUT[13]~3_combout\ & ( \m1|OUT[5]~16_combout\ & ( 
-- (!\DATA_SEL~input_o\) # (\DATA_IN[5]~input_o\) ) ) ) # ( \m1|OUT[13]~3_combout\ & ( !\m1|OUT[5]~16_combout\ & ( (!\DATA_SEL~input_o\ & ((\m0|OUT[4]~4_combout\))) # (\DATA_SEL~input_o\ & (\DATA_IN[5]~input_o\)) ) ) ) # ( !\m1|OUT[13]~3_combout\ & ( 
-- !\m1|OUT[5]~16_combout\ & ( (\DATA_IN[5]~input_o\ & \DATA_SEL~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101010011010111110101111101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_IN[5]~input_o\,
	datab => \m0|ALT_INV_OUT[4]~4_combout\,
	datac => \ALT_INV_DATA_SEL~input_o\,
	datae => \m1|ALT_INV_OUT[13]~3_combout\,
	dataf => \m1|ALT_INV_OUT[5]~16_combout\,
	combout => \m1|OUT[5]~17_combout\);

-- Location: FF_X32_Y2_N8
\reg_file|reg7|OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[5]~17_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg7|OUT\(5));

-- Location: MLABCELL_X32_Y2_N57
\reg_file|B_mul|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux10~3_combout\ = ( \reg_file|reg11|OUT\(5) & ( \reg_file|reg15|OUT\(5) & ( ((!\B_SEL[2]~input_o\ & ((\reg_file|reg3|OUT\(5)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(5)))) # (\B_SEL[3]~input_o\) ) ) ) # ( !\reg_file|reg11|OUT\(5) & 
-- ( \reg_file|reg15|OUT\(5) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & ((\reg_file|reg3|OUT\(5)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(5))))) # (\B_SEL[3]~input_o\ & (\B_SEL[2]~input_o\)) ) ) ) # ( \reg_file|reg11|OUT\(5) & ( 
-- !\reg_file|reg15|OUT\(5) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & ((\reg_file|reg3|OUT\(5)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(5))))) # (\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\)) ) ) ) # ( !\reg_file|reg11|OUT\(5) & ( 
-- !\reg_file|reg15|OUT\(5) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & ((\reg_file|reg3|OUT\(5)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg7|OUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|reg7|ALT_INV_OUT\(5),
	datad => \reg_file|reg3|ALT_INV_OUT\(5),
	datae => \reg_file|reg11|ALT_INV_OUT\(5),
	dataf => \reg_file|reg15|ALT_INV_OUT\(5),
	combout => \reg_file|B_mul|Mux10~3_combout\);

-- Location: LABCELL_X31_Y2_N27
\reg_file|B_mul|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux10~2_combout\ = ( \reg_file|reg6|OUT\(5) & ( \reg_file|reg2|OUT\(5) & ( (!\B_SEL[3]~input_o\) # ((!\B_SEL[2]~input_o\ & ((\reg_file|reg10|OUT\(5)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(5)))) ) ) ) # ( !\reg_file|reg6|OUT\(5) & 
-- ( \reg_file|reg2|OUT\(5) & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\) # (\reg_file|reg10|OUT\(5))))) # (\B_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(5) & (\B_SEL[3]~input_o\))) ) ) ) # ( \reg_file|reg6|OUT\(5) & ( !\reg_file|reg2|OUT\(5) & ( 
-- (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\ & \reg_file|reg10|OUT\(5))))) # (\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)) # (\reg_file|reg14|OUT\(5)))) ) ) ) # ( !\reg_file|reg6|OUT\(5) & ( !\reg_file|reg2|OUT\(5) & ( (\B_SEL[3]~input_o\ & 
-- ((!\B_SEL[2]~input_o\ & ((\reg_file|reg10|OUT\(5)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg14|ALT_INV_OUT\(5),
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \ALT_INV_B_SEL[3]~input_o\,
	datad => \reg_file|reg10|ALT_INV_OUT\(5),
	datae => \reg_file|reg6|ALT_INV_OUT\(5),
	dataf => \reg_file|reg2|ALT_INV_OUT\(5),
	combout => \reg_file|B_mul|Mux10~2_combout\);

-- Location: LABCELL_X33_Y2_N9
\reg_file|B_mul|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux10~1_combout\ = ( \reg_file|reg9|OUT\(5) & ( \reg_file|reg13|OUT\(5) & ( ((!\B_SEL[2]~input_o\ & ((\reg_file|reg1|OUT\(5)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(5)))) # (\B_SEL[3]~input_o\) ) ) ) # ( !\reg_file|reg9|OUT\(5) & ( 
-- \reg_file|reg13|OUT\(5) & ( (!\B_SEL[2]~input_o\ & (!\B_SEL[3]~input_o\ & ((\reg_file|reg1|OUT\(5))))) # (\B_SEL[2]~input_o\ & (((\reg_file|reg5|OUT\(5))) # (\B_SEL[3]~input_o\))) ) ) ) # ( \reg_file|reg9|OUT\(5) & ( !\reg_file|reg13|OUT\(5) & ( 
-- (!\B_SEL[2]~input_o\ & (((\reg_file|reg1|OUT\(5))) # (\B_SEL[3]~input_o\))) # (\B_SEL[2]~input_o\ & (!\B_SEL[3]~input_o\ & (\reg_file|reg5|OUT\(5)))) ) ) ) # ( !\reg_file|reg9|OUT\(5) & ( !\reg_file|reg13|OUT\(5) & ( (!\B_SEL[3]~input_o\ & 
-- ((!\B_SEL[2]~input_o\ & ((\reg_file|reg1|OUT\(5)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg5|OUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[2]~input_o\,
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \reg_file|reg5|ALT_INV_OUT\(5),
	datad => \reg_file|reg1|ALT_INV_OUT\(5),
	datae => \reg_file|reg9|ALT_INV_OUT\(5),
	dataf => \reg_file|reg13|ALT_INV_OUT\(5),
	combout => \reg_file|B_mul|Mux10~1_combout\);

-- Location: MLABCELL_X32_Y3_N3
\reg_file|B_mul|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux10~0_combout\ = ( \reg_file|reg4|OUT\(5) & ( \reg_file|reg8|OUT\(5) & ( (!\B_SEL[2]~input_o\ & (((\reg_file|reg0|OUT\(5)) # (\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)) # (\reg_file|reg12|OUT\(5)))) ) ) ) # ( 
-- !\reg_file|reg4|OUT\(5) & ( \reg_file|reg8|OUT\(5) & ( (!\B_SEL[2]~input_o\ & (((\reg_file|reg0|OUT\(5)) # (\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg12|OUT\(5) & (\B_SEL[3]~input_o\))) ) ) ) # ( \reg_file|reg4|OUT\(5) & ( 
-- !\reg_file|reg8|OUT\(5) & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\ & \reg_file|reg0|OUT\(5))))) # (\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)) # (\reg_file|reg12|OUT\(5)))) ) ) ) # ( !\reg_file|reg4|OUT\(5) & ( !\reg_file|reg8|OUT\(5) & ( 
-- (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\ & \reg_file|reg0|OUT\(5))))) # (\B_SEL[2]~input_o\ & (\reg_file|reg12|OUT\(5) & (\B_SEL[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg12|ALT_INV_OUT\(5),
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \ALT_INV_B_SEL[3]~input_o\,
	datad => \reg_file|reg0|ALT_INV_OUT\(5),
	datae => \reg_file|reg4|ALT_INV_OUT\(5),
	dataf => \reg_file|reg8|ALT_INV_OUT\(5),
	combout => \reg_file|B_mul|Mux10~0_combout\);

-- Location: MLABCELL_X32_Y2_N51
\reg_file|B_mul|Mux10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux10~4_combout\ = ( \reg_file|B_mul|Mux10~1_combout\ & ( \reg_file|B_mul|Mux10~0_combout\ & ( (!\B_SEL[1]~input_o\) # ((!\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux10~2_combout\))) # (\B_SEL[0]~input_o\ & 
-- (\reg_file|B_mul|Mux10~3_combout\))) ) ) ) # ( !\reg_file|B_mul|Mux10~1_combout\ & ( \reg_file|B_mul|Mux10~0_combout\ & ( (!\B_SEL[1]~input_o\ & (!\B_SEL[0]~input_o\)) # (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux10~2_combout\))) # 
-- (\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux10~3_combout\)))) ) ) ) # ( \reg_file|B_mul|Mux10~1_combout\ & ( !\reg_file|B_mul|Mux10~0_combout\ & ( (!\B_SEL[1]~input_o\ & (\B_SEL[0]~input_o\)) # (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & 
-- ((\reg_file|B_mul|Mux10~2_combout\))) # (\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux10~3_combout\)))) ) ) ) # ( !\reg_file|B_mul|Mux10~1_combout\ & ( !\reg_file|B_mul|Mux10~0_combout\ & ( (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & 
-- ((\reg_file|B_mul|Mux10~2_combout\))) # (\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux10~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[1]~input_o\,
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux10~3_combout\,
	datad => \reg_file|B_mul|ALT_INV_Mux10~2_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux10~1_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux10~0_combout\,
	combout => \reg_file|B_mul|Mux10~4_combout\);

-- Location: LABCELL_X35_Y3_N30
\m0|OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[5]~5_combout\ = ( \CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux10~4_combout\ & ( \CONST_IN[5]~input_o\ ) ) ) # ( !\CONST_SEL~input_o\ & ( \reg_file|B_mul|Mux10~4_combout\ ) ) # ( \CONST_SEL~input_o\ & ( !\reg_file|B_mul|Mux10~4_combout\ & ( 
-- \CONST_IN[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CONST_IN[5]~input_o\,
	datae => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux10~4_combout\,
	combout => \m0|OUT[5]~5_combout\);

-- Location: MLABCELL_X32_Y6_N3
\m1|OUT[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[4]~12_combout\ = ( \CONST_SEL~input_o\ & ( \reg_file|A_mul|Mux11~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\CONST_IN[4]~input_o\ & !\OP_SEL[0]~input_o\))) ) ) ) # ( !\CONST_SEL~input_o\ & ( \reg_file|A_mul|Mux11~4_combout\ & ( !\OP_SEL[1]~input_o\ 
-- $ (((!\reg_file|B_mul|Mux11~4_combout\ & !\OP_SEL[0]~input_o\))) ) ) ) # ( \CONST_SEL~input_o\ & ( !\reg_file|A_mul|Mux11~4_combout\ & ( (!\CONST_IN[4]~input_o\ & (\OP_SEL[1]~input_o\ & \OP_SEL[0]~input_o\)) # (\CONST_IN[4]~input_o\ & 
-- ((\OP_SEL[0]~input_o\) # (\OP_SEL[1]~input_o\))) ) ) ) # ( !\CONST_SEL~input_o\ & ( !\reg_file|A_mul|Mux11~4_combout\ & ( (!\OP_SEL[1]~input_o\ & (\reg_file|B_mul|Mux11~4_combout\ & \OP_SEL[0]~input_o\)) # (\OP_SEL[1]~input_o\ & ((\OP_SEL[0]~input_o\) # 
-- (\reg_file|B_mul|Mux11~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000100010111011100111100110011000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_IN[4]~input_o\,
	datab => \ALT_INV_OP_SEL[1]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux11~4_combout\,
	datad => \ALT_INV_OP_SEL[0]~input_o\,
	datae => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|A_mul|ALT_INV_Mux11~4_combout\,
	combout => \m1|OUT[4]~12_combout\);

-- Location: MLABCELL_X32_Y4_N45
\func_unit|_alu|au|s|s4|REG\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s4|REG~combout\ = ( \func_unit|_alu|au|Add0~13_sumout\ & ( \func_unit|_alu|au|s|s2|SH1~combout\ & ( !\reg_file|A_mul|Mux11~4_combout\ $ (\func_unit|_alu|au|Add0~17_sumout\) ) ) ) # ( !\func_unit|_alu|au|Add0~13_sumout\ & ( 
-- \func_unit|_alu|au|s|s2|SH1~combout\ & ( !\reg_file|A_mul|Mux12~4_combout\ $ (!\reg_file|A_mul|Mux11~4_combout\ $ (\func_unit|_alu|au|Add0~17_sumout\)) ) ) ) # ( \func_unit|_alu|au|Add0~13_sumout\ & ( !\func_unit|_alu|au|s|s2|SH1~combout\ & ( 
-- !\reg_file|A_mul|Mux12~4_combout\ $ (!\reg_file|A_mul|Mux11~4_combout\ $ (\func_unit|_alu|au|Add0~17_sumout\)) ) ) ) # ( !\func_unit|_alu|au|Add0~13_sumout\ & ( !\func_unit|_alu|au|s|s2|SH1~combout\ & ( !\reg_file|A_mul|Mux11~4_combout\ $ 
-- (!\func_unit|_alu|au|Add0~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100011001101001100101100110100110011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux12~4_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux11~4_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~17_sumout\,
	datae => \func_unit|_alu|au|ALT_INV_Add0~13_sumout\,
	dataf => \func_unit|_alu|au|s|s2|ALT_INV_SH1~combout\,
	combout => \func_unit|_alu|au|s|s4|REG~combout\);

-- Location: LABCELL_X31_Y6_N30
\m1|OUT[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[4]~13_combout\ = ( \m1|OUT[4]~12_combout\ & ( \func_unit|_alu|au|s|s4|REG~combout\ & ( (!\OP_SEL[3]~input_o\) # (\m0|OUT[5]~5_combout\) ) ) ) # ( !\m1|OUT[4]~12_combout\ & ( \func_unit|_alu|au|s|s4|REG~combout\ & ( (!\OP_SEL[3]~input_o\ & 
-- ((!\m1|OUT[13]~5_combout\))) # (\OP_SEL[3]~input_o\ & (\m0|OUT[5]~5_combout\)) ) ) ) # ( \m1|OUT[4]~12_combout\ & ( !\func_unit|_alu|au|s|s4|REG~combout\ & ( (!\OP_SEL[3]~input_o\ & ((\m1|OUT[13]~5_combout\))) # (\OP_SEL[3]~input_o\ & 
-- (\m0|OUT[5]~5_combout\)) ) ) ) # ( !\m1|OUT[4]~12_combout\ & ( !\func_unit|_alu|au|s|s4|REG~combout\ & ( (\OP_SEL[3]~input_o\ & \m0|OUT[5]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011011101110111011000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[3]~input_o\,
	datab => \m0|ALT_INV_OUT[5]~5_combout\,
	datad => \m1|ALT_INV_OUT[13]~5_combout\,
	datae => \m1|ALT_INV_OUT[4]~12_combout\,
	dataf => \func_unit|_alu|au|s|s4|ALT_INV_REG~combout\,
	combout => \m1|OUT[4]~13_combout\);

-- Location: LABCELL_X30_Y6_N30
\m1|OUT[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[4]~14_combout\ = ( \m0|OUT[3]~3_combout\ & ( \m1|OUT[4]~13_combout\ & ( (!\DATA_SEL~input_o\) # (\DATA_IN[4]~input_o\) ) ) ) # ( !\m0|OUT[3]~3_combout\ & ( \m1|OUT[4]~13_combout\ & ( (!\DATA_SEL~input_o\ & ((!\m1|OUT[13]~3_combout\))) # 
-- (\DATA_SEL~input_o\ & (\DATA_IN[4]~input_o\)) ) ) ) # ( \m0|OUT[3]~3_combout\ & ( !\m1|OUT[4]~13_combout\ & ( (!\DATA_SEL~input_o\ & ((\m1|OUT[13]~3_combout\))) # (\DATA_SEL~input_o\ & (\DATA_IN[4]~input_o\)) ) ) ) # ( !\m0|OUT[3]~3_combout\ & ( 
-- !\m1|OUT[4]~13_combout\ & ( (\DATA_IN[4]~input_o\ & \DATA_SEL~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011001111110000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_IN[4]~input_o\,
	datac => \m1|ALT_INV_OUT[13]~3_combout\,
	datad => \ALT_INV_DATA_SEL~input_o\,
	datae => \m0|ALT_INV_OUT[3]~3_combout\,
	dataf => \m1|ALT_INV_OUT[4]~13_combout\,
	combout => \m1|OUT[4]~14_combout\);

-- Location: FF_X32_Y6_N38
\reg_file|reg9|OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[4]~14_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg9|OUT\(4));

-- Location: MLABCELL_X32_Y6_N33
\reg_file|B_mul|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux11~2_combout\ = ( \reg_file|reg11|OUT\(4) & ( \reg_file|reg10|OUT\(4) & ( ((!\B_SEL[0]~input_o\ & ((\reg_file|reg8|OUT\(4)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg9|OUT\(4)))) # (\B_SEL[1]~input_o\) ) ) ) # ( !\reg_file|reg11|OUT\(4) & 
-- ( \reg_file|reg10|OUT\(4) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg8|OUT\(4)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg9|OUT\(4))))) # (\B_SEL[1]~input_o\ & (((!\B_SEL[0]~input_o\)))) ) ) ) # ( \reg_file|reg11|OUT\(4) & ( 
-- !\reg_file|reg10|OUT\(4) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg8|OUT\(4)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg9|OUT\(4))))) # (\B_SEL[1]~input_o\ & (((\B_SEL[0]~input_o\)))) ) ) ) # ( !\reg_file|reg11|OUT\(4) & ( 
-- !\reg_file|reg10|OUT\(4) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & ((\reg_file|reg8|OUT\(4)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg9|OUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg9|ALT_INV_OUT\(4),
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \ALT_INV_B_SEL[0]~input_o\,
	datad => \reg_file|reg8|ALT_INV_OUT\(4),
	datae => \reg_file|reg11|ALT_INV_OUT\(4),
	dataf => \reg_file|reg10|ALT_INV_OUT\(4),
	combout => \reg_file|B_mul|Mux11~2_combout\);

-- Location: LABCELL_X30_Y5_N45
\reg_file|B_mul|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux11~0_combout\ = ( \reg_file|reg2|OUT\(4) & ( \reg_file|reg0|OUT\(4) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(4))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(4))))) ) ) ) # ( !\reg_file|reg2|OUT\(4) & ( 
-- \reg_file|reg0|OUT\(4) & ( (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(4))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(4)))))) ) ) ) # ( \reg_file|reg2|OUT\(4) & ( 
-- !\reg_file|reg0|OUT\(4) & ( (!\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(4))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(4)))))) ) ) ) # ( !\reg_file|reg2|OUT\(4) & ( 
-- !\reg_file|reg0|OUT\(4) & ( (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg1|OUT\(4))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg3|OUT\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg1|ALT_INV_OUT\(4),
	datad => \reg_file|reg3|ALT_INV_OUT\(4),
	datae => \reg_file|reg2|ALT_INV_OUT\(4),
	dataf => \reg_file|reg0|ALT_INV_OUT\(4),
	combout => \reg_file|B_mul|Mux11~0_combout\);

-- Location: LABCELL_X31_Y5_N21
\reg_file|B_mul|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux11~3_combout\ = ( \reg_file|reg13|OUT\(4) & ( \reg_file|reg15|OUT\(4) & ( ((!\B_SEL[1]~input_o\ & (\reg_file|reg12|OUT\(4))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg14|OUT\(4))))) # (\B_SEL[0]~input_o\) ) ) ) # ( !\reg_file|reg13|OUT\(4) 
-- & ( \reg_file|reg15|OUT\(4) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg12|OUT\(4))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg14|OUT\(4)))))) # (\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\)) ) ) ) # ( \reg_file|reg13|OUT\(4) & ( 
-- !\reg_file|reg15|OUT\(4) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg12|OUT\(4))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg14|OUT\(4)))))) # (\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\)) ) ) ) # ( !\reg_file|reg13|OUT\(4) & ( 
-- !\reg_file|reg15|OUT\(4) & ( (!\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & (\reg_file|reg12|OUT\(4))) # (\B_SEL[1]~input_o\ & ((\reg_file|reg14|OUT\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg12|ALT_INV_OUT\(4),
	datad => \reg_file|reg14|ALT_INV_OUT\(4),
	datae => \reg_file|reg13|ALT_INV_OUT\(4),
	dataf => \reg_file|reg15|ALT_INV_OUT\(4),
	combout => \reg_file|B_mul|Mux11~3_combout\);

-- Location: LABCELL_X33_Y5_N3
\reg_file|B_mul|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux11~1_combout\ = ( \reg_file|reg4|OUT\(4) & ( \reg_file|reg6|OUT\(4) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & ((\reg_file|reg5|OUT\(4)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg7|OUT\(4)))) ) ) ) # ( !\reg_file|reg4|OUT\(4) & ( 
-- \reg_file|reg6|OUT\(4) & ( (!\B_SEL[0]~input_o\ & (\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg5|OUT\(4)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg7|OUT\(4))))) ) ) ) # ( \reg_file|reg4|OUT\(4) & ( 
-- !\reg_file|reg6|OUT\(4) & ( (!\B_SEL[0]~input_o\ & (!\B_SEL[1]~input_o\)) # (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg5|OUT\(4)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg7|OUT\(4))))) ) ) ) # ( !\reg_file|reg4|OUT\(4) & ( 
-- !\reg_file|reg6|OUT\(4) & ( (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg5|OUT\(4)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg7|OUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \ALT_INV_B_SEL[1]~input_o\,
	datac => \reg_file|reg7|ALT_INV_OUT\(4),
	datad => \reg_file|reg5|ALT_INV_OUT\(4),
	datae => \reg_file|reg4|ALT_INV_OUT\(4),
	dataf => \reg_file|reg6|ALT_INV_OUT\(4),
	combout => \reg_file|B_mul|Mux11~1_combout\);

-- Location: LABCELL_X31_Y5_N9
\reg_file|B_mul|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux11~4_combout\ = ( \reg_file|B_mul|Mux11~3_combout\ & ( \reg_file|B_mul|Mux11~1_combout\ & ( ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux11~0_combout\))) # (\B_SEL[3]~input_o\ & (\reg_file|B_mul|Mux11~2_combout\))) # 
-- (\B_SEL[2]~input_o\) ) ) ) # ( !\reg_file|B_mul|Mux11~3_combout\ & ( \reg_file|B_mul|Mux11~1_combout\ & ( (!\B_SEL[3]~input_o\ & (((\reg_file|B_mul|Mux11~0_combout\)) # (\B_SEL[2]~input_o\))) # (\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\ & 
-- (\reg_file|B_mul|Mux11~2_combout\))) ) ) ) # ( \reg_file|B_mul|Mux11~3_combout\ & ( !\reg_file|B_mul|Mux11~1_combout\ & ( (!\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\ & ((\reg_file|B_mul|Mux11~0_combout\)))) # (\B_SEL[3]~input_o\ & 
-- (((\reg_file|B_mul|Mux11~2_combout\)) # (\B_SEL[2]~input_o\))) ) ) ) # ( !\reg_file|B_mul|Mux11~3_combout\ & ( !\reg_file|B_mul|Mux11~1_combout\ & ( (!\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux11~0_combout\))) # (\B_SEL[3]~input_o\ 
-- & (\reg_file|B_mul|Mux11~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux11~2_combout\,
	datad => \reg_file|B_mul|ALT_INV_Mux11~0_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux11~3_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux11~1_combout\,
	combout => \reg_file|B_mul|Mux11~4_combout\);

-- Location: MLABCELL_X32_Y5_N48
\m0|OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[4]~4_combout\ = ( \reg_file|B_mul|Mux11~4_combout\ & ( (!\CONST_SEL~input_o\) # (\CONST_IN[4]~input_o\) ) ) # ( !\reg_file|B_mul|Mux11~4_combout\ & ( (\CONST_SEL~input_o\ & \CONST_IN[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_CONST_IN[4]~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux11~4_combout\,
	combout => \m0|OUT[4]~4_combout\);

-- Location: MLABCELL_X32_Y7_N12
\m1|OUT[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[3]~10_combout\ = ( \reg_file|A_mul|Mux12~4_combout\ & ( \reg_file|B_mul|Mux12~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((\CONST_SEL~input_o\ & (!\OP_SEL[0]~input_o\ & !\CONST_IN[3]~input_o\)))) ) ) ) # ( !\reg_file|A_mul|Mux12~4_combout\ & ( 
-- \reg_file|B_mul|Mux12~4_combout\ & ( (!\OP_SEL[1]~input_o\ & (\OP_SEL[0]~input_o\ & ((!\CONST_SEL~input_o\) # (\CONST_IN[3]~input_o\)))) # (\OP_SEL[1]~input_o\ & ((!\CONST_SEL~input_o\) # ((\CONST_IN[3]~input_o\) # (\OP_SEL[0]~input_o\)))) ) ) ) # ( 
-- \reg_file|A_mul|Mux12~4_combout\ & ( !\reg_file|B_mul|Mux12~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & ((!\CONST_SEL~input_o\) # (!\CONST_IN[3]~input_o\))))) ) ) ) # ( !\reg_file|A_mul|Mux12~4_combout\ & ( 
-- !\reg_file|B_mul|Mux12~4_combout\ & ( (!\OP_SEL[1]~input_o\ & (\CONST_SEL~input_o\ & (\OP_SEL[0]~input_o\ & \CONST_IN[3]~input_o\))) # (\OP_SEL[1]~input_o\ & (((\CONST_SEL~input_o\ & \CONST_IN[3]~input_o\)) # (\OP_SEL[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111001111000110110000101011001111111001110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[1]~input_o\,
	datac => \ALT_INV_OP_SEL[0]~input_o\,
	datad => \ALT_INV_CONST_IN[3]~input_o\,
	datae => \reg_file|A_mul|ALT_INV_Mux12~4_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux12~4_combout\,
	combout => \m1|OUT[3]~10_combout\);

-- Location: MLABCELL_X32_Y7_N18
\m1|OUT[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[3]~11_combout\ = ( \func_unit|_alu|au|s|s2|SH1~combout\ & ( (!\m1|OUT[13]~5_combout\ & (!\func_unit|_alu|au|Add0~13_sumout\ $ (((\reg_file|A_mul|Mux12~4_combout\))))) # (\m1|OUT[13]~5_combout\ & (((\m1|OUT[3]~10_combout\)))) ) ) # ( 
-- !\func_unit|_alu|au|s|s2|SH1~combout\ & ( (!\m1|OUT[13]~5_combout\ & (!\func_unit|_alu|au|Add0~13_sumout\ $ (((!\reg_file|A_mul|Mux12~4_combout\))))) # (\m1|OUT[13]~5_combout\ & (((\m1|OUT[3]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001110100011010100111010001110100011010100111010001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|ALT_INV_Add0~13_sumout\,
	datab => \m1|ALT_INV_OUT[3]~10_combout\,
	datac => \m1|ALT_INV_OUT[13]~5_combout\,
	datad => \reg_file|A_mul|ALT_INV_Mux12~4_combout\,
	dataf => \func_unit|_alu|au|s|s2|ALT_INV_SH1~combout\,
	combout => \m1|OUT[3]~11_combout\);

-- Location: MLABCELL_X32_Y7_N33
\m1|OUT[3]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[3]~65_combout\ = ( !\OP_SEL[3]~input_o\ & ( ((!\DATA_SEL~input_o\ & (((\m1|OUT[3]~11_combout\)))) # (\DATA_SEL~input_o\ & (\DATA_IN[3]~input_o\))) ) ) # ( \OP_SEL[3]~input_o\ & ( (!\DATA_SEL~input_o\ & (((!\OP_SEL[0]~input_o\ & 
-- (\m0|OUT[2]~2_combout\)) # (\OP_SEL[0]~input_o\ & ((\m0|OUT[4]~4_combout\)))))) # (\DATA_SEL~input_o\ & (\DATA_IN[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101001100000101010100001111010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_IN[3]~input_o\,
	datab => \m0|ALT_INV_OUT[2]~2_combout\,
	datac => \ALT_INV_OP_SEL[0]~input_o\,
	datad => \ALT_INV_DATA_SEL~input_o\,
	datae => \ALT_INV_OP_SEL[3]~input_o\,
	dataf => \m0|ALT_INV_OUT[4]~4_combout\,
	datag => \m1|ALT_INV_OUT[3]~11_combout\,
	combout => \m1|OUT[3]~65_combout\);

-- Location: FF_X30_Y5_N13
\reg_file|reg3|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[3]~65_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg3|OUT\(3));

-- Location: MLABCELL_X32_Y5_N39
\reg_file|B_mul|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux12~3_combout\ = ( \reg_file|reg7|OUT\(3) & ( \reg_file|reg15|OUT\(3) & ( ((!\B_SEL[3]~input_o\ & (\reg_file|reg3|OUT\(3))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg11|OUT\(3))))) # (\B_SEL[2]~input_o\) ) ) ) # ( !\reg_file|reg7|OUT\(3) & 
-- ( \reg_file|reg15|OUT\(3) & ( (!\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\ & (\reg_file|reg3|OUT\(3)))) # (\B_SEL[3]~input_o\ & (((\reg_file|reg11|OUT\(3))) # (\B_SEL[2]~input_o\))) ) ) ) # ( \reg_file|reg7|OUT\(3) & ( !\reg_file|reg15|OUT\(3) & ( 
-- (!\B_SEL[3]~input_o\ & (((\reg_file|reg3|OUT\(3))) # (\B_SEL[2]~input_o\))) # (\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\ & ((\reg_file|reg11|OUT\(3))))) ) ) ) # ( !\reg_file|reg7|OUT\(3) & ( !\reg_file|reg15|OUT\(3) & ( (!\B_SEL[2]~input_o\ & 
-- ((!\B_SEL[3]~input_o\ & (\reg_file|reg3|OUT\(3))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg11|OUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|reg3|ALT_INV_OUT\(3),
	datad => \reg_file|reg11|ALT_INV_OUT\(3),
	datae => \reg_file|reg7|ALT_INV_OUT\(3),
	dataf => \reg_file|reg15|ALT_INV_OUT\(3),
	combout => \reg_file|B_mul|Mux12~3_combout\);

-- Location: LABCELL_X31_Y5_N42
\reg_file|B_mul|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux12~2_combout\ = ( \reg_file|reg14|OUT\(3) & ( \reg_file|reg6|OUT\(3) & ( ((!\B_SEL[3]~input_o\ & (\reg_file|reg2|OUT\(3))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg10|OUT\(3))))) # (\B_SEL[2]~input_o\) ) ) ) # ( !\reg_file|reg14|OUT\(3) & 
-- ( \reg_file|reg6|OUT\(3) & ( (!\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\)) # (\reg_file|reg2|OUT\(3)))) # (\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\ & \reg_file|reg10|OUT\(3))))) ) ) ) # ( \reg_file|reg14|OUT\(3) & ( !\reg_file|reg6|OUT\(3) & ( 
-- (!\B_SEL[3]~input_o\ & (\reg_file|reg2|OUT\(3) & (!\B_SEL[2]~input_o\))) # (\B_SEL[3]~input_o\ & (((\reg_file|reg10|OUT\(3)) # (\B_SEL[2]~input_o\)))) ) ) ) # ( !\reg_file|reg14|OUT\(3) & ( !\reg_file|reg6|OUT\(3) & ( (!\B_SEL[2]~input_o\ & 
-- ((!\B_SEL[3]~input_o\ & (\reg_file|reg2|OUT\(3))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg10|OUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001001010111010100101010011110100010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \reg_file|reg2|ALT_INV_OUT\(3),
	datac => \ALT_INV_B_SEL[2]~input_o\,
	datad => \reg_file|reg10|ALT_INV_OUT\(3),
	datae => \reg_file|reg14|ALT_INV_OUT\(3),
	dataf => \reg_file|reg6|ALT_INV_OUT\(3),
	combout => \reg_file|B_mul|Mux12~2_combout\);

-- Location: LABCELL_X33_Y5_N21
\reg_file|B_mul|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux12~1_combout\ = ( \reg_file|reg5|OUT\(3) & ( \reg_file|reg13|OUT\(3) & ( ((!\B_SEL[3]~input_o\ & (\reg_file|reg1|OUT\(3))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg9|OUT\(3))))) # (\B_SEL[2]~input_o\) ) ) ) # ( !\reg_file|reg5|OUT\(3) & ( 
-- \reg_file|reg13|OUT\(3) & ( (!\B_SEL[3]~input_o\ & (\reg_file|reg1|OUT\(3) & ((!\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\) # (\reg_file|reg9|OUT\(3))))) ) ) ) # ( \reg_file|reg5|OUT\(3) & ( !\reg_file|reg13|OUT\(3) & ( 
-- (!\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\)) # (\reg_file|reg1|OUT\(3)))) # (\B_SEL[3]~input_o\ & (((\reg_file|reg9|OUT\(3) & !\B_SEL[2]~input_o\)))) ) ) ) # ( !\reg_file|reg5|OUT\(3) & ( !\reg_file|reg13|OUT\(3) & ( (!\B_SEL[2]~input_o\ & 
-- ((!\B_SEL[3]~input_o\ & (\reg_file|reg1|OUT\(3))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg9|OUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \reg_file|reg1|ALT_INV_OUT\(3),
	datac => \reg_file|reg9|ALT_INV_OUT\(3),
	datad => \ALT_INV_B_SEL[2]~input_o\,
	datae => \reg_file|reg5|ALT_INV_OUT\(3),
	dataf => \reg_file|reg13|ALT_INV_OUT\(3),
	combout => \reg_file|B_mul|Mux12~1_combout\);

-- Location: LABCELL_X31_Y6_N9
\reg_file|B_mul|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux12~0_combout\ = ( \reg_file|reg12|OUT\(3) & ( \reg_file|reg8|OUT\(3) & ( ((!\B_SEL[2]~input_o\ & ((\reg_file|reg0|OUT\(3)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(3)))) # (\B_SEL[3]~input_o\) ) ) ) # ( !\reg_file|reg12|OUT\(3) & 
-- ( \reg_file|reg8|OUT\(3) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & ((\reg_file|reg0|OUT\(3)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(3))))) # (\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\)) ) ) ) # ( \reg_file|reg12|OUT\(3) & ( 
-- !\reg_file|reg8|OUT\(3) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & ((\reg_file|reg0|OUT\(3)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(3))))) # (\B_SEL[3]~input_o\ & (\B_SEL[2]~input_o\)) ) ) ) # ( !\reg_file|reg12|OUT\(3) & ( 
-- !\reg_file|reg8|OUT\(3) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & ((\reg_file|reg0|OUT\(3)))) # (\B_SEL[2]~input_o\ & (\reg_file|reg4|OUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|reg4|ALT_INV_OUT\(3),
	datad => \reg_file|reg0|ALT_INV_OUT\(3),
	datae => \reg_file|reg12|ALT_INV_OUT\(3),
	dataf => \reg_file|reg8|ALT_INV_OUT\(3),
	combout => \reg_file|B_mul|Mux12~0_combout\);

-- Location: MLABCELL_X32_Y5_N21
\reg_file|B_mul|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux12~4_combout\ = ( \reg_file|B_mul|Mux12~1_combout\ & ( \reg_file|B_mul|Mux12~0_combout\ & ( (!\B_SEL[1]~input_o\) # ((!\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux12~2_combout\))) # (\B_SEL[0]~input_o\ & 
-- (\reg_file|B_mul|Mux12~3_combout\))) ) ) ) # ( !\reg_file|B_mul|Mux12~1_combout\ & ( \reg_file|B_mul|Mux12~0_combout\ & ( (!\B_SEL[1]~input_o\ & (((!\B_SEL[0]~input_o\)))) # (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & 
-- ((\reg_file|B_mul|Mux12~2_combout\))) # (\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux12~3_combout\)))) ) ) ) # ( \reg_file|B_mul|Mux12~1_combout\ & ( !\reg_file|B_mul|Mux12~0_combout\ & ( (!\B_SEL[1]~input_o\ & (((\B_SEL[0]~input_o\)))) # (\B_SEL[1]~input_o\ 
-- & ((!\B_SEL[0]~input_o\ & ((\reg_file|B_mul|Mux12~2_combout\))) # (\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux12~3_combout\)))) ) ) ) # ( !\reg_file|B_mul|Mux12~1_combout\ & ( !\reg_file|B_mul|Mux12~0_combout\ & ( (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ 
-- & ((\reg_file|B_mul|Mux12~2_combout\))) # (\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux12~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[1]~input_o\,
	datab => \reg_file|B_mul|ALT_INV_Mux12~3_combout\,
	datac => \reg_file|B_mul|ALT_INV_Mux12~2_combout\,
	datad => \ALT_INV_B_SEL[0]~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux12~1_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux12~0_combout\,
	combout => \reg_file|B_mul|Mux12~4_combout\);

-- Location: MLABCELL_X32_Y7_N21
\m0|OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[3]~3_combout\ = ( \reg_file|B_mul|Mux12~4_combout\ & ( (!\CONST_SEL~input_o\) # (\CONST_IN[3]~input_o\) ) ) # ( !\reg_file|B_mul|Mux12~4_combout\ & ( (\CONST_IN[3]~input_o\ & \CONST_SEL~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CONST_IN[3]~input_o\,
	datad => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux12~4_combout\,
	combout => \m0|OUT[3]~3_combout\);

-- Location: LABCELL_X33_Y6_N0
\m1|OUT[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[2]~8_combout\ = ( \CONST_IN[2]~input_o\ & ( \reg_file|A_mul|Mux13~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & (!\reg_file|B_mul|Mux13~4_combout\ & !\CONST_SEL~input_o\)))) ) ) ) # ( !\CONST_IN[2]~input_o\ & ( 
-- \reg_file|A_mul|Mux13~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & ((!\reg_file|B_mul|Mux13~4_combout\) # (\CONST_SEL~input_o\))))) ) ) ) # ( \CONST_IN[2]~input_o\ & ( !\reg_file|A_mul|Mux13~4_combout\ & ( (!\OP_SEL[1]~input_o\ & 
-- (\OP_SEL[0]~input_o\ & ((\CONST_SEL~input_o\) # (\reg_file|B_mul|Mux13~4_combout\)))) # (\OP_SEL[1]~input_o\ & (((\CONST_SEL~input_o\) # (\reg_file|B_mul|Mux13~4_combout\)) # (\OP_SEL[0]~input_o\))) ) ) ) # ( !\CONST_IN[2]~input_o\ & ( 
-- !\reg_file|A_mul|Mux13~4_combout\ & ( (!\OP_SEL[1]~input_o\ & (\OP_SEL[0]~input_o\ & (\reg_file|B_mul|Mux13~4_combout\ & !\CONST_SEL~input_o\))) # (\OP_SEL[1]~input_o\ & (((\reg_file|B_mul|Mux13~4_combout\ & !\CONST_SEL~input_o\)) # 
-- (\OP_SEL[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010001000101110111011101101010011001100110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[1]~input_o\,
	datab => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux13~4_combout\,
	datad => \ALT_INV_CONST_SEL~input_o\,
	datae => \ALT_INV_CONST_IN[2]~input_o\,
	dataf => \reg_file|A_mul|ALT_INV_Mux13~4_combout\,
	combout => \m1|OUT[2]~8_combout\);

-- Location: LABCELL_X35_Y4_N18
\m1|OUT[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[2]~9_combout\ = ( \func_unit|_alu|au|s|s1|SH1~combout\ & ( (!\m1|OUT[13]~5_combout\ & ((!\reg_file|A_mul|Mux13~4_combout\ $ (\func_unit|_alu|au|Add0~9_sumout\)))) # (\m1|OUT[13]~5_combout\ & (\m1|OUT[2]~8_combout\)) ) ) # ( 
-- !\func_unit|_alu|au|s|s1|SH1~combout\ & ( (!\m1|OUT[13]~5_combout\ & ((!\reg_file|A_mul|Mux13~4_combout\ $ (!\func_unit|_alu|au|Add0~9_sumout\)))) # (\m1|OUT[13]~5_combout\ & (\m1|OUT[2]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110110001000110111011000110110001000110111011000100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_OUT[13]~5_combout\,
	datab => \m1|ALT_INV_OUT[2]~8_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux13~4_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~9_sumout\,
	dataf => \func_unit|_alu|au|s|s1|ALT_INV_SH1~combout\,
	combout => \m1|OUT[2]~9_combout\);

-- Location: LABCELL_X35_Y4_N12
\m1|OUT[2]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[2]~69_combout\ = ( !\OP_SEL[3]~input_o\ & ( ((!\DATA_SEL~input_o\ & (((\m1|OUT[2]~9_combout\)))) # (\DATA_SEL~input_o\ & (\DATA_IN[2]~input_o\))) ) ) # ( \OP_SEL[3]~input_o\ & ( (!\DATA_SEL~input_o\ & (((!\OP_SEL[0]~input_o\ & 
-- (\m0|OUT[1]~1_combout\)) # (\OP_SEL[0]~input_o\ & ((\m0|OUT[3]~3_combout\)))))) # (\DATA_SEL~input_o\ & (((\DATA_IN[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011010100000011001100001111001100110101111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m0|ALT_INV_OUT[1]~1_combout\,
	datab => \ALT_INV_DATA_IN[2]~input_o\,
	datac => \ALT_INV_OP_SEL[0]~input_o\,
	datad => \ALT_INV_DATA_SEL~input_o\,
	datae => \ALT_INV_OP_SEL[3]~input_o\,
	dataf => \m0|ALT_INV_OUT[3]~3_combout\,
	datag => \m1|ALT_INV_OUT[2]~9_combout\,
	combout => \m1|OUT[2]~69_combout\);

-- Location: FF_X32_Y5_N32
\reg_file|reg8|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[2]~69_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg8|OUT\(2));

-- Location: MLABCELL_X32_Y5_N3
\reg_file|B_mul|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux13~2_combout\ = ( \reg_file|reg11|OUT\(2) & ( \reg_file|reg10|OUT\(2) & ( ((!\B_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(2))) # (\B_SEL[0]~input_o\ & ((\reg_file|reg9|OUT\(2))))) # (\B_SEL[1]~input_o\) ) ) ) # ( !\reg_file|reg11|OUT\(2) & 
-- ( \reg_file|reg10|OUT\(2) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(2))) # (\B_SEL[0]~input_o\ & ((\reg_file|reg9|OUT\(2)))))) # (\B_SEL[1]~input_o\ & (!\B_SEL[0]~input_o\)) ) ) ) # ( \reg_file|reg11|OUT\(2) & ( 
-- !\reg_file|reg10|OUT\(2) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(2))) # (\B_SEL[0]~input_o\ & ((\reg_file|reg9|OUT\(2)))))) # (\B_SEL[1]~input_o\ & (\B_SEL[0]~input_o\)) ) ) ) # ( !\reg_file|reg11|OUT\(2) & ( 
-- !\reg_file|reg10|OUT\(2) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(2))) # (\B_SEL[0]~input_o\ & ((\reg_file|reg9|OUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[1]~input_o\,
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \reg_file|reg8|ALT_INV_OUT\(2),
	datad => \reg_file|reg9|ALT_INV_OUT\(2),
	datae => \reg_file|reg11|ALT_INV_OUT\(2),
	dataf => \reg_file|reg10|ALT_INV_OUT\(2),
	combout => \reg_file|B_mul|Mux13~2_combout\);

-- Location: LABCELL_X30_Y5_N3
\reg_file|B_mul|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux13~0_combout\ = ( \reg_file|reg1|OUT\(2) & ( \reg_file|reg2|OUT\(2) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg0|OUT\(2)) # (\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|reg3|OUT\(2)))) ) ) ) # ( 
-- !\reg_file|reg1|OUT\(2) & ( \reg_file|reg2|OUT\(2) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg0|OUT\(2)) # (\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg3|OUT\(2) & (\B_SEL[1]~input_o\))) ) ) ) # ( \reg_file|reg1|OUT\(2) & ( 
-- !\reg_file|reg2|OUT\(2) & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & \reg_file|reg0|OUT\(2))))) # (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|reg3|OUT\(2)))) ) ) ) # ( !\reg_file|reg1|OUT\(2) & ( !\reg_file|reg2|OUT\(2) & ( 
-- (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & \reg_file|reg0|OUT\(2))))) # (\B_SEL[0]~input_o\ & (\reg_file|reg3|OUT\(2) & (\B_SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg3|ALT_INV_OUT\(2),
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|reg0|ALT_INV_OUT\(2),
	datae => \reg_file|reg1|ALT_INV_OUT\(2),
	dataf => \reg_file|reg2|ALT_INV_OUT\(2),
	combout => \reg_file|B_mul|Mux13~0_combout\);

-- Location: LABCELL_X35_Y4_N51
\reg_file|B_mul|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux13~3_combout\ = ( \reg_file|reg14|OUT\(2) & ( \reg_file|reg12|OUT\(2) & ( (!\B_SEL[0]~input_o\) # ((!\B_SEL[1]~input_o\ & ((\reg_file|reg13|OUT\(2)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg15|OUT\(2)))) ) ) ) # ( 
-- !\reg_file|reg14|OUT\(2) & ( \reg_file|reg12|OUT\(2) & ( (!\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\) # ((\reg_file|reg13|OUT\(2))))) # (\B_SEL[1]~input_o\ & (\B_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(2)))) ) ) ) # ( \reg_file|reg14|OUT\(2) & ( 
-- !\reg_file|reg12|OUT\(2) & ( (!\B_SEL[1]~input_o\ & (\B_SEL[0]~input_o\ & ((\reg_file|reg13|OUT\(2))))) # (\B_SEL[1]~input_o\ & ((!\B_SEL[0]~input_o\) # ((\reg_file|reg15|OUT\(2))))) ) ) ) # ( !\reg_file|reg14|OUT\(2) & ( !\reg_file|reg12|OUT\(2) & ( 
-- (\B_SEL[0]~input_o\ & ((!\B_SEL[1]~input_o\ & ((\reg_file|reg13|OUT\(2)))) # (\B_SEL[1]~input_o\ & (\reg_file|reg15|OUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[1]~input_o\,
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \reg_file|reg15|ALT_INV_OUT\(2),
	datad => \reg_file|reg13|ALT_INV_OUT\(2),
	datae => \reg_file|reg14|ALT_INV_OUT\(2),
	dataf => \reg_file|reg12|ALT_INV_OUT\(2),
	combout => \reg_file|B_mul|Mux13~3_combout\);

-- Location: LABCELL_X33_Y5_N39
\reg_file|B_mul|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux13~1_combout\ = ( \reg_file|reg7|OUT\(2) & ( \reg_file|reg6|OUT\(2) & ( ((!\B_SEL[0]~input_o\ & ((\reg_file|reg4|OUT\(2)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg5|OUT\(2)))) # (\B_SEL[1]~input_o\) ) ) ) # ( !\reg_file|reg7|OUT\(2) & ( 
-- \reg_file|reg6|OUT\(2) & ( (!\B_SEL[0]~input_o\ & (((\reg_file|reg4|OUT\(2)) # (\B_SEL[1]~input_o\)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg5|OUT\(2) & (!\B_SEL[1]~input_o\))) ) ) ) # ( \reg_file|reg7|OUT\(2) & ( !\reg_file|reg6|OUT\(2) & ( 
-- (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & \reg_file|reg4|OUT\(2))))) # (\B_SEL[0]~input_o\ & (((\B_SEL[1]~input_o\)) # (\reg_file|reg5|OUT\(2)))) ) ) ) # ( !\reg_file|reg7|OUT\(2) & ( !\reg_file|reg6|OUT\(2) & ( (!\B_SEL[1]~input_o\ & 
-- ((!\B_SEL[0]~input_o\ & ((\reg_file|reg4|OUT\(2)))) # (\B_SEL[0]~input_o\ & (\reg_file|reg5|OUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg5|ALT_INV_OUT\(2),
	datab => \ALT_INV_B_SEL[0]~input_o\,
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|reg4|ALT_INV_OUT\(2),
	datae => \reg_file|reg7|ALT_INV_OUT\(2),
	dataf => \reg_file|reg6|ALT_INV_OUT\(2),
	combout => \reg_file|B_mul|Mux13~1_combout\);

-- Location: MLABCELL_X32_Y5_N33
\reg_file|B_mul|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux13~4_combout\ = ( \reg_file|B_mul|Mux13~3_combout\ & ( \reg_file|B_mul|Mux13~1_combout\ & ( ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux13~0_combout\))) # (\B_SEL[3]~input_o\ & (\reg_file|B_mul|Mux13~2_combout\))) # 
-- (\B_SEL[2]~input_o\) ) ) ) # ( !\reg_file|B_mul|Mux13~3_combout\ & ( \reg_file|B_mul|Mux13~1_combout\ & ( (!\B_SEL[3]~input_o\ & (((\reg_file|B_mul|Mux13~0_combout\) # (\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & (\reg_file|B_mul|Mux13~2_combout\ & 
-- (!\B_SEL[2]~input_o\))) ) ) ) # ( \reg_file|B_mul|Mux13~3_combout\ & ( !\reg_file|B_mul|Mux13~1_combout\ & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\ & \reg_file|B_mul|Mux13~0_combout\)))) # (\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\)) # 
-- (\reg_file|B_mul|Mux13~2_combout\))) ) ) ) # ( !\reg_file|B_mul|Mux13~3_combout\ & ( !\reg_file|B_mul|Mux13~1_combout\ & ( (!\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & ((\reg_file|B_mul|Mux13~0_combout\))) # (\B_SEL[3]~input_o\ & 
-- (\reg_file|B_mul|Mux13~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|B_mul|ALT_INV_Mux13~2_combout\,
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \ALT_INV_B_SEL[2]~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux13~0_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux13~3_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux13~1_combout\,
	combout => \reg_file|B_mul|Mux13~4_combout\);

-- Location: MLABCELL_X32_Y7_N45
\m0|OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[2]~2_combout\ = ( \reg_file|B_mul|Mux13~4_combout\ & ( (!\CONST_SEL~input_o\) # (\CONST_IN[2]~input_o\) ) ) # ( !\reg_file|B_mul|Mux13~4_combout\ & ( (\CONST_SEL~input_o\ & \CONST_IN[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONST_SEL~input_o\,
	datac => \ALT_INV_CONST_IN[2]~input_o\,
	datae => \reg_file|B_mul|ALT_INV_Mux13~4_combout\,
	combout => \m0|OUT[2]~2_combout\);

-- Location: MLABCELL_X32_Y7_N54
\m1|OUT[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[1]~4_combout\ = ( \CONST_IN[1]~input_o\ & ( \CONST_SEL~input_o\ & ( (!\OP_SEL[1]~input_o\ & ((\reg_file|A_mul|Mux14~4_combout\) # (\OP_SEL[0]~input_o\))) # (\OP_SEL[1]~input_o\ & ((!\reg_file|A_mul|Mux14~4_combout\))) ) ) ) # ( 
-- !\CONST_IN[1]~input_o\ & ( \CONST_SEL~input_o\ & ( (!\OP_SEL[0]~input_o\ & (\OP_SEL[1]~input_o\ & \reg_file|A_mul|Mux14~4_combout\)) # (\OP_SEL[0]~input_o\ & (!\OP_SEL[1]~input_o\ $ (!\reg_file|A_mul|Mux14~4_combout\))) ) ) ) # ( \CONST_IN[1]~input_o\ & ( 
-- !\CONST_SEL~input_o\ & ( (!\OP_SEL[1]~input_o\ & ((!\OP_SEL[0]~input_o\ & (\reg_file|B_mul|Mux14~4_combout\ & \reg_file|A_mul|Mux14~4_combout\)) # (\OP_SEL[0]~input_o\ & ((\reg_file|A_mul|Mux14~4_combout\) # (\reg_file|B_mul|Mux14~4_combout\))))) # 
-- (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux14~4_combout\ $ (((!\OP_SEL[0]~input_o\ & !\reg_file|B_mul|Mux14~4_combout\))))) ) ) ) # ( !\CONST_IN[1]~input_o\ & ( !\CONST_SEL~input_o\ & ( (!\OP_SEL[1]~input_o\ & ((!\OP_SEL[0]~input_o\ & 
-- (\reg_file|B_mul|Mux14~4_combout\ & \reg_file|A_mul|Mux14~4_combout\)) # (\OP_SEL[0]~input_o\ & ((\reg_file|A_mul|Mux14~4_combout\) # (\reg_file|B_mul|Mux14~4_combout\))))) # (\OP_SEL[1]~input_o\ & (!\reg_file|A_mul|Mux14~4_combout\ $ 
-- (((!\OP_SEL[0]~input_o\ & !\reg_file|B_mul|Mux14~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101101100000101110110110000010001011001100111011111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[0]~input_o\,
	datab => \ALT_INV_OP_SEL[1]~input_o\,
	datac => \reg_file|B_mul|ALT_INV_Mux14~4_combout\,
	datad => \reg_file|A_mul|ALT_INV_Mux14~4_combout\,
	datae => \ALT_INV_CONST_IN[1]~input_o\,
	dataf => \ALT_INV_CONST_SEL~input_o\,
	combout => \m1|OUT[1]~4_combout\);

-- Location: MLABCELL_X32_Y7_N9
\func_unit|_alu|au|s|s1|REG\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s1|REG~combout\ = ( \func_unit|_alu|au|Add0~5_sumout\ & ( !\reg_file|A_mul|Mux14~4_combout\ $ (((\func_unit|_alu|au|Add0~1_sumout\ & \reg_file|A_mul|Mux15~4_combout\))) ) ) # ( !\func_unit|_alu|au|Add0~5_sumout\ & ( 
-- !\reg_file|A_mul|Mux14~4_combout\ $ (((!\func_unit|_alu|au|Add0~1_sumout\) # (!\reg_file|A_mul|Mux15~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|A_mul|ALT_INV_Mux14~4_combout\,
	datac => \func_unit|_alu|au|ALT_INV_Add0~1_sumout\,
	datad => \reg_file|A_mul|ALT_INV_Mux15~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~5_sumout\,
	combout => \func_unit|_alu|au|s|s1|REG~combout\);

-- Location: MLABCELL_X32_Y7_N39
\m1|OUT[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[1]~6_combout\ = ( \m1|OUT[1]~4_combout\ & ( \func_unit|_alu|au|s|s1|REG~combout\ & ( (!\OP_SEL[3]~input_o\) # (\m0|OUT[2]~2_combout\) ) ) ) # ( !\m1|OUT[1]~4_combout\ & ( \func_unit|_alu|au|s|s1|REG~combout\ & ( (!\OP_SEL[3]~input_o\ & 
-- (!\m1|OUT[13]~5_combout\)) # (\OP_SEL[3]~input_o\ & ((\m0|OUT[2]~2_combout\))) ) ) ) # ( \m1|OUT[1]~4_combout\ & ( !\func_unit|_alu|au|s|s1|REG~combout\ & ( (!\OP_SEL[3]~input_o\ & (\m1|OUT[13]~5_combout\)) # (\OP_SEL[3]~input_o\ & 
-- ((\m0|OUT[2]~2_combout\))) ) ) ) # ( !\m1|OUT[1]~4_combout\ & ( !\func_unit|_alu|au|s|s1|REG~combout\ & ( (\OP_SEL[3]~input_o\ & \m0|OUT[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001001110010011110001101100011011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[3]~input_o\,
	datab => \m1|ALT_INV_OUT[13]~5_combout\,
	datac => \m0|ALT_INV_OUT[2]~2_combout\,
	datae => \m1|ALT_INV_OUT[1]~4_combout\,
	dataf => \func_unit|_alu|au|s|s1|ALT_INV_REG~combout\,
	combout => \m1|OUT[1]~6_combout\);

-- Location: MLABCELL_X32_Y7_N51
\m1|OUT[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[1]~7_combout\ = ( \m1|OUT[13]~3_combout\ & ( \m1|OUT[1]~6_combout\ & ( (!\DATA_SEL~input_o\ & ((\m0|OUT[0]~0_combout\))) # (\DATA_SEL~input_o\ & (\DATA_IN[1]~input_o\)) ) ) ) # ( !\m1|OUT[13]~3_combout\ & ( \m1|OUT[1]~6_combout\ & ( 
-- (!\DATA_SEL~input_o\) # (\DATA_IN[1]~input_o\) ) ) ) # ( \m1|OUT[13]~3_combout\ & ( !\m1|OUT[1]~6_combout\ & ( (!\DATA_SEL~input_o\ & ((\m0|OUT[0]~0_combout\))) # (\DATA_SEL~input_o\ & (\DATA_IN[1]~input_o\)) ) ) ) # ( !\m1|OUT[13]~3_combout\ & ( 
-- !\m1|OUT[1]~6_combout\ & ( (\DATA_SEL~input_o\ & \DATA_IN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111100111111001111110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DATA_SEL~input_o\,
	datac => \ALT_INV_DATA_IN[1]~input_o\,
	datad => \m0|ALT_INV_OUT[0]~0_combout\,
	datae => \m1|ALT_INV_OUT[13]~3_combout\,
	dataf => \m1|ALT_INV_OUT[1]~6_combout\,
	combout => \m1|OUT[1]~7_combout\);

-- Location: FF_X31_Y5_N41
\reg_file|reg14|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[1]~7_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg14|OUT\(1));

-- Location: LABCELL_X31_Y5_N57
\reg_file|B_mul|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux14~2_combout\ = ( \reg_file|reg10|OUT\(1) & ( \reg_file|reg6|OUT\(1) & ( (!\B_SEL[3]~input_o\ & (((\reg_file|reg2|OUT\(1))) # (\B_SEL[2]~input_o\))) # (\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\) # ((\reg_file|reg14|OUT\(1))))) ) ) ) # 
-- ( !\reg_file|reg10|OUT\(1) & ( \reg_file|reg6|OUT\(1) & ( (!\B_SEL[3]~input_o\ & (((\reg_file|reg2|OUT\(1))) # (\B_SEL[2]~input_o\))) # (\B_SEL[3]~input_o\ & (\B_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(1)))) ) ) ) # ( \reg_file|reg10|OUT\(1) & ( 
-- !\reg_file|reg6|OUT\(1) & ( (!\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\ & ((\reg_file|reg2|OUT\(1))))) # (\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\) # ((\reg_file|reg14|OUT\(1))))) ) ) ) # ( !\reg_file|reg10|OUT\(1) & ( !\reg_file|reg6|OUT\(1) & ( 
-- (!\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\ & ((\reg_file|reg2|OUT\(1))))) # (\B_SEL[3]~input_o\ & (\B_SEL[2]~input_o\ & (\reg_file|reg14|OUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|reg14|ALT_INV_OUT\(1),
	datad => \reg_file|reg2|ALT_INV_OUT\(1),
	datae => \reg_file|reg10|ALT_INV_OUT\(1),
	dataf => \reg_file|reg6|ALT_INV_OUT\(1),
	combout => \reg_file|B_mul|Mux14~2_combout\);

-- Location: LABCELL_X33_Y5_N24
\reg_file|B_mul|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux14~1_combout\ = ( \reg_file|reg9|OUT\(1) & ( \reg_file|reg13|OUT\(1) & ( ((!\B_SEL[2]~input_o\ & (\reg_file|reg1|OUT\(1))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg5|OUT\(1))))) # (\B_SEL[3]~input_o\) ) ) ) # ( !\reg_file|reg9|OUT\(1) & ( 
-- \reg_file|reg13|OUT\(1) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & (\reg_file|reg1|OUT\(1))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg5|OUT\(1)))))) # (\B_SEL[3]~input_o\ & (\B_SEL[2]~input_o\)) ) ) ) # ( \reg_file|reg9|OUT\(1) & ( 
-- !\reg_file|reg13|OUT\(1) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & (\reg_file|reg1|OUT\(1))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg5|OUT\(1)))))) # (\B_SEL[3]~input_o\ & (!\B_SEL[2]~input_o\)) ) ) ) # ( !\reg_file|reg9|OUT\(1) & ( 
-- !\reg_file|reg13|OUT\(1) & ( (!\B_SEL[3]~input_o\ & ((!\B_SEL[2]~input_o\ & (\reg_file|reg1|OUT\(1))) # (\B_SEL[2]~input_o\ & ((\reg_file|reg5|OUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[3]~input_o\,
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \reg_file|reg1|ALT_INV_OUT\(1),
	datad => \reg_file|reg5|ALT_INV_OUT\(1),
	datae => \reg_file|reg9|ALT_INV_OUT\(1),
	dataf => \reg_file|reg13|ALT_INV_OUT\(1),
	combout => \reg_file|B_mul|Mux14~1_combout\);

-- Location: MLABCELL_X32_Y5_N57
\reg_file|B_mul|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux14~3_combout\ = ( \reg_file|reg7|OUT\(1) & ( \reg_file|reg15|OUT\(1) & ( ((!\B_SEL[3]~input_o\ & ((\reg_file|reg3|OUT\(1)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg11|OUT\(1)))) # (\B_SEL[2]~input_o\) ) ) ) # ( !\reg_file|reg7|OUT\(1) & 
-- ( \reg_file|reg15|OUT\(1) & ( (!\B_SEL[3]~input_o\ & (((!\B_SEL[2]~input_o\ & \reg_file|reg3|OUT\(1))))) # (\B_SEL[3]~input_o\ & (((\B_SEL[2]~input_o\)) # (\reg_file|reg11|OUT\(1)))) ) ) ) # ( \reg_file|reg7|OUT\(1) & ( !\reg_file|reg15|OUT\(1) & ( 
-- (!\B_SEL[3]~input_o\ & (((\reg_file|reg3|OUT\(1)) # (\B_SEL[2]~input_o\)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg11|OUT\(1) & (!\B_SEL[2]~input_o\))) ) ) ) # ( !\reg_file|reg7|OUT\(1) & ( !\reg_file|reg15|OUT\(1) & ( (!\B_SEL[2]~input_o\ & 
-- ((!\B_SEL[3]~input_o\ & ((\reg_file|reg3|OUT\(1)))) # (\B_SEL[3]~input_o\ & (\reg_file|reg11|OUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg11|ALT_INV_OUT\(1),
	datab => \ALT_INV_B_SEL[3]~input_o\,
	datac => \ALT_INV_B_SEL[2]~input_o\,
	datad => \reg_file|reg3|ALT_INV_OUT\(1),
	datae => \reg_file|reg7|ALT_INV_OUT\(1),
	dataf => \reg_file|reg15|ALT_INV_OUT\(1),
	combout => \reg_file|B_mul|Mux14~3_combout\);

-- Location: LABCELL_X35_Y5_N33
\reg_file|B_mul|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux14~0_combout\ = ( \reg_file|reg0|OUT\(1) & ( \reg_file|reg8|OUT\(1) & ( (!\B_SEL[2]~input_o\) # ((!\B_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(1))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(1))))) ) ) ) # ( !\reg_file|reg0|OUT\(1) & 
-- ( \reg_file|reg8|OUT\(1) & ( (!\B_SEL[2]~input_o\ & (((\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(1))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(1)))))) ) ) ) # ( \reg_file|reg0|OUT\(1) & ( 
-- !\reg_file|reg8|OUT\(1) & ( (!\B_SEL[2]~input_o\ & (((!\B_SEL[3]~input_o\)))) # (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(1))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(1)))))) ) ) ) # ( !\reg_file|reg0|OUT\(1) & ( 
-- !\reg_file|reg8|OUT\(1) & ( (\B_SEL[2]~input_o\ & ((!\B_SEL[3]~input_o\ & (\reg_file|reg4|OUT\(1))) # (\B_SEL[3]~input_o\ & ((\reg_file|reg12|OUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg4|ALT_INV_OUT\(1),
	datab => \ALT_INV_B_SEL[2]~input_o\,
	datac => \ALT_INV_B_SEL[3]~input_o\,
	datad => \reg_file|reg12|ALT_INV_OUT\(1),
	datae => \reg_file|reg0|ALT_INV_OUT\(1),
	dataf => \reg_file|reg8|ALT_INV_OUT\(1),
	combout => \reg_file|B_mul|Mux14~0_combout\);

-- Location: MLABCELL_X32_Y5_N42
\reg_file|B_mul|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|B_mul|Mux14~4_combout\ = ( \reg_file|B_mul|Mux14~3_combout\ & ( \reg_file|B_mul|Mux14~0_combout\ & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|B_mul|Mux14~2_combout\))) # (\B_SEL[0]~input_o\ & 
-- (((\reg_file|B_mul|Mux14~1_combout\) # (\B_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|B_mul|Mux14~3_combout\ & ( \reg_file|B_mul|Mux14~0_combout\ & ( (!\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\)) # (\reg_file|B_mul|Mux14~2_combout\))) # 
-- (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & \reg_file|B_mul|Mux14~1_combout\)))) ) ) ) # ( \reg_file|B_mul|Mux14~3_combout\ & ( !\reg_file|B_mul|Mux14~0_combout\ & ( (!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux14~2_combout\ & (\B_SEL[1]~input_o\))) # 
-- (\B_SEL[0]~input_o\ & (((\reg_file|B_mul|Mux14~1_combout\) # (\B_SEL[1]~input_o\)))) ) ) ) # ( !\reg_file|B_mul|Mux14~3_combout\ & ( !\reg_file|B_mul|Mux14~0_combout\ & ( (!\B_SEL[0]~input_o\ & (\reg_file|B_mul|Mux14~2_combout\ & (\B_SEL[1]~input_o\))) # 
-- (\B_SEL[0]~input_o\ & (((!\B_SEL[1]~input_o\ & \reg_file|B_mul|Mux14~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_SEL[0]~input_o\,
	datab => \reg_file|B_mul|ALT_INV_Mux14~2_combout\,
	datac => \ALT_INV_B_SEL[1]~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux14~1_combout\,
	datae => \reg_file|B_mul|ALT_INV_Mux14~3_combout\,
	dataf => \reg_file|B_mul|ALT_INV_Mux14~0_combout\,
	combout => \reg_file|B_mul|Mux14~4_combout\);

-- Location: MLABCELL_X32_Y7_N6
\m0|OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0|OUT[1]~1_combout\ = ( \reg_file|B_mul|Mux14~4_combout\ & ( (!\CONST_SEL~input_o\) # (\CONST_IN[1]~input_o\) ) ) # ( !\reg_file|B_mul|Mux14~4_combout\ & ( (\CONST_SEL~input_o\ & \CONST_IN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CONST_SEL~input_o\,
	datad => \ALT_INV_CONST_IN[1]~input_o\,
	dataf => \reg_file|B_mul|ALT_INV_Mux14~4_combout\,
	combout => \m0|OUT[1]~1_combout\);

-- Location: LABCELL_X35_Y4_N45
\m1|OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[0]~0_combout\ = ( \m0|OUT[15]~15_combout\ & ( (!\OP_SEL[0]~input_o\ & (\OP_SEL[1]~input_o\)) # (\OP_SEL[0]~input_o\ & ((\m0|OUT[1]~1_combout\))) ) ) # ( !\m0|OUT[15]~15_combout\ & ( (\OP_SEL[0]~input_o\ & \m0|OUT[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[0]~input_o\,
	datac => \ALT_INV_OP_SEL[1]~input_o\,
	datad => \m0|ALT_INV_OUT[1]~1_combout\,
	dataf => \m0|ALT_INV_OUT[15]~15_combout\,
	combout => \m1|OUT[0]~0_combout\);

-- Location: IOIBUF_X42_Y0_N35
\DATA_IN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: LABCELL_X35_Y4_N24
\func_unit|_alu|lv|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|lv|Mux15~0_combout\ = ( \CONST_SEL~input_o\ & ( \reg_file|A_mul|Mux15~4_combout\ & ( !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & !\CONST_IN[0]~input_o\))) ) ) ) # ( !\CONST_SEL~input_o\ & ( \reg_file|A_mul|Mux15~4_combout\ & ( 
-- !\OP_SEL[1]~input_o\ $ (((!\OP_SEL[0]~input_o\ & !\reg_file|B_mul|Mux15~4_combout\))) ) ) ) # ( \CONST_SEL~input_o\ & ( !\reg_file|A_mul|Mux15~4_combout\ & ( (!\OP_SEL[0]~input_o\ & (\OP_SEL[1]~input_o\ & \CONST_IN[0]~input_o\)) # (\OP_SEL[0]~input_o\ & 
-- ((\CONST_IN[0]~input_o\) # (\OP_SEL[1]~input_o\))) ) ) ) # ( !\CONST_SEL~input_o\ & ( !\reg_file|A_mul|Mux15~4_combout\ & ( (!\OP_SEL[0]~input_o\ & (\OP_SEL[1]~input_o\ & \reg_file|B_mul|Mux15~4_combout\)) # (\OP_SEL[0]~input_o\ & 
-- ((\reg_file|B_mul|Mux15~4_combout\) # (\OP_SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000101110001011101100110110011000110110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP_SEL[0]~input_o\,
	datab => \ALT_INV_OP_SEL[1]~input_o\,
	datac => \ALT_INV_CONST_IN[0]~input_o\,
	datad => \reg_file|B_mul|ALT_INV_Mux15~4_combout\,
	datae => \ALT_INV_CONST_SEL~input_o\,
	dataf => \reg_file|A_mul|ALT_INV_Mux15~4_combout\,
	combout => \func_unit|_alu|lv|Mux15~0_combout\);

-- Location: LABCELL_X35_Y4_N42
\m1|OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[0]~1_combout\ = ( \reg_file|A_mul|Mux15~4_combout\ & ( (!\OP_SEL[2]~input_o\ & ((!\func_unit|_alu|au|Add0~1_sumout\))) # (\OP_SEL[2]~input_o\ & (\func_unit|_alu|lv|Mux15~0_combout\)) ) ) # ( !\reg_file|A_mul|Mux15~4_combout\ & ( 
-- (!\OP_SEL[2]~input_o\ & ((\func_unit|_alu|au|Add0~1_sumout\))) # (\OP_SEL[2]~input_o\ & (\func_unit|_alu|lv|Mux15~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OP_SEL[2]~input_o\,
	datac => \func_unit|_alu|lv|ALT_INV_Mux15~0_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~1_sumout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux15~4_combout\,
	combout => \m1|OUT[0]~1_combout\);

-- Location: LABCELL_X35_Y4_N33
\m1|OUT[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1|OUT[0]~2_combout\ = ( \m1|OUT[0]~1_combout\ & ( (!\DATA_SEL~input_o\ & ((!\OP_SEL[3]~input_o\) # ((\m1|OUT[0]~0_combout\)))) # (\DATA_SEL~input_o\ & (((\DATA_IN[0]~input_o\)))) ) ) # ( !\m1|OUT[0]~1_combout\ & ( (!\DATA_SEL~input_o\ & 
-- (\OP_SEL[3]~input_o\ & (\m1|OUT[0]~0_combout\))) # (\DATA_SEL~input_o\ & (((\DATA_IN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_SEL~input_o\,
	datab => \ALT_INV_OP_SEL[3]~input_o\,
	datac => \m1|ALT_INV_OUT[0]~0_combout\,
	datad => \ALT_INV_DATA_IN[0]~input_o\,
	dataf => \m1|ALT_INV_OUT[0]~1_combout\,
	combout => \m1|OUT[0]~2_combout\);

-- Location: FF_X32_Y4_N14
\reg_file|reg5|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \m1|OUT[0]~2_combout\,
	sload => VCC,
	ena => \reg_file|dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg5|OUT\(0));

-- Location: MLABCELL_X32_Y4_N15
\reg_file|A_mul|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux15~1_combout\ = ( \A_SEL[1]~input_o\ & ( \reg_file|reg7|OUT\(0) & ( (\reg_file|reg6|OUT\(0)) # (\A_SEL[0]~input_o\) ) ) ) # ( !\A_SEL[1]~input_o\ & ( \reg_file|reg7|OUT\(0) & ( (!\A_SEL[0]~input_o\ & ((\reg_file|reg4|OUT\(0)))) # 
-- (\A_SEL[0]~input_o\ & (\reg_file|reg5|OUT\(0))) ) ) ) # ( \A_SEL[1]~input_o\ & ( !\reg_file|reg7|OUT\(0) & ( (!\A_SEL[0]~input_o\ & \reg_file|reg6|OUT\(0)) ) ) ) # ( !\A_SEL[1]~input_o\ & ( !\reg_file|reg7|OUT\(0) & ( (!\A_SEL[0]~input_o\ & 
-- ((\reg_file|reg4|OUT\(0)))) # (\A_SEL[0]~input_o\ & (\reg_file|reg5|OUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101000010001101110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \reg_file|reg5|ALT_INV_OUT\(0),
	datac => \reg_file|reg6|ALT_INV_OUT\(0),
	datad => \reg_file|reg4|ALT_INV_OUT\(0),
	datae => \ALT_INV_A_SEL[1]~input_o\,
	dataf => \reg_file|reg7|ALT_INV_OUT\(0),
	combout => \reg_file|A_mul|Mux15~1_combout\);

-- Location: LABCELL_X30_Y5_N15
\reg_file|A_mul|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux15~0_combout\ = ( \reg_file|reg2|OUT\(0) & ( \reg_file|reg3|OUT\(0) & ( ((!\A_SEL[0]~input_o\ & (\reg_file|reg0|OUT\(0))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg1|OUT\(0))))) # (\A_SEL[1]~input_o\) ) ) ) # ( !\reg_file|reg2|OUT\(0) & ( 
-- \reg_file|reg3|OUT\(0) & ( (!\A_SEL[0]~input_o\ & (\reg_file|reg0|OUT\(0) & (!\A_SEL[1]~input_o\))) # (\A_SEL[0]~input_o\ & (((\reg_file|reg1|OUT\(0)) # (\A_SEL[1]~input_o\)))) ) ) ) # ( \reg_file|reg2|OUT\(0) & ( !\reg_file|reg3|OUT\(0) & ( 
-- (!\A_SEL[0]~input_o\ & (((\A_SEL[1]~input_o\)) # (\reg_file|reg0|OUT\(0)))) # (\A_SEL[0]~input_o\ & (((!\A_SEL[1]~input_o\ & \reg_file|reg1|OUT\(0))))) ) ) ) # ( !\reg_file|reg2|OUT\(0) & ( !\reg_file|reg3|OUT\(0) & ( (!\A_SEL[1]~input_o\ & 
-- ((!\A_SEL[0]~input_o\ & (\reg_file|reg0|OUT\(0))) # (\A_SEL[0]~input_o\ & ((\reg_file|reg1|OUT\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[0]~input_o\,
	datab => \reg_file|reg0|ALT_INV_OUT\(0),
	datac => \ALT_INV_A_SEL[1]~input_o\,
	datad => \reg_file|reg1|ALT_INV_OUT\(0),
	datae => \reg_file|reg2|ALT_INV_OUT\(0),
	dataf => \reg_file|reg3|ALT_INV_OUT\(0),
	combout => \reg_file|A_mul|Mux15~0_combout\);

-- Location: LABCELL_X36_Y4_N6
\reg_file|A_mul|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux15~3_combout\ = ( \reg_file|reg12|OUT\(0) & ( \reg_file|reg14|OUT\(0) & ( (!\A_SEL[0]~input_o\) # ((!\A_SEL[1]~input_o\ & ((\reg_file|reg13|OUT\(0)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg15|OUT\(0)))) ) ) ) # ( 
-- !\reg_file|reg12|OUT\(0) & ( \reg_file|reg14|OUT\(0) & ( (!\A_SEL[1]~input_o\ & (\A_SEL[0]~input_o\ & ((\reg_file|reg13|OUT\(0))))) # (\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\) # ((\reg_file|reg15|OUT\(0))))) ) ) ) # ( \reg_file|reg12|OUT\(0) & ( 
-- !\reg_file|reg14|OUT\(0) & ( (!\A_SEL[1]~input_o\ & ((!\A_SEL[0]~input_o\) # ((\reg_file|reg13|OUT\(0))))) # (\A_SEL[1]~input_o\ & (\A_SEL[0]~input_o\ & (\reg_file|reg15|OUT\(0)))) ) ) ) # ( !\reg_file|reg12|OUT\(0) & ( !\reg_file|reg14|OUT\(0) & ( 
-- (\A_SEL[0]~input_o\ & ((!\A_SEL[1]~input_o\ & ((\reg_file|reg13|OUT\(0)))) # (\A_SEL[1]~input_o\ & (\reg_file|reg15|OUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \ALT_INV_A_SEL[0]~input_o\,
	datac => \reg_file|reg15|ALT_INV_OUT\(0),
	datad => \reg_file|reg13|ALT_INV_OUT\(0),
	datae => \reg_file|reg12|ALT_INV_OUT\(0),
	dataf => \reg_file|reg14|ALT_INV_OUT\(0),
	combout => \reg_file|A_mul|Mux15~3_combout\);

-- Location: LABCELL_X35_Y5_N39
\reg_file|A_mul|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux15~2_combout\ = ( \reg_file|reg9|OUT\(0) & ( \reg_file|reg11|OUT\(0) & ( ((!\A_SEL[1]~input_o\ & (\reg_file|reg8|OUT\(0))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg10|OUT\(0))))) # (\A_SEL[0]~input_o\) ) ) ) # ( !\reg_file|reg9|OUT\(0) & 
-- ( \reg_file|reg11|OUT\(0) & ( (!\A_SEL[1]~input_o\ & (!\A_SEL[0]~input_o\ & (\reg_file|reg8|OUT\(0)))) # (\A_SEL[1]~input_o\ & (((\reg_file|reg10|OUT\(0))) # (\A_SEL[0]~input_o\))) ) ) ) # ( \reg_file|reg9|OUT\(0) & ( !\reg_file|reg11|OUT\(0) & ( 
-- (!\A_SEL[1]~input_o\ & (((\reg_file|reg8|OUT\(0))) # (\A_SEL[0]~input_o\))) # (\A_SEL[1]~input_o\ & (!\A_SEL[0]~input_o\ & ((\reg_file|reg10|OUT\(0))))) ) ) ) # ( !\reg_file|reg9|OUT\(0) & ( !\reg_file|reg11|OUT\(0) & ( (!\A_SEL[0]~input_o\ & 
-- ((!\A_SEL[1]~input_o\ & (\reg_file|reg8|OUT\(0))) # (\A_SEL[1]~input_o\ & ((\reg_file|reg10|OUT\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[1]~input_o\,
	datab => \ALT_INV_A_SEL[0]~input_o\,
	datac => \reg_file|reg8|ALT_INV_OUT\(0),
	datad => \reg_file|reg10|ALT_INV_OUT\(0),
	datae => \reg_file|reg9|ALT_INV_OUT\(0),
	dataf => \reg_file|reg11|ALT_INV_OUT\(0),
	combout => \reg_file|A_mul|Mux15~2_combout\);

-- Location: MLABCELL_X32_Y4_N36
\reg_file|A_mul|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_file|A_mul|Mux15~4_combout\ = ( \reg_file|A_mul|Mux15~3_combout\ & ( \reg_file|A_mul|Mux15~2_combout\ & ( ((!\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux15~0_combout\))) # (\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux15~1_combout\))) # 
-- (\A_SEL[3]~input_o\) ) ) ) # ( !\reg_file|A_mul|Mux15~3_combout\ & ( \reg_file|A_mul|Mux15~2_combout\ & ( (!\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\) # (\reg_file|A_mul|Mux15~0_combout\)))) # (\A_SEL[2]~input_o\ & (\reg_file|A_mul|Mux15~1_combout\ & 
-- ((!\A_SEL[3]~input_o\)))) ) ) ) # ( \reg_file|A_mul|Mux15~3_combout\ & ( !\reg_file|A_mul|Mux15~2_combout\ & ( (!\A_SEL[2]~input_o\ & (((\reg_file|A_mul|Mux15~0_combout\ & !\A_SEL[3]~input_o\)))) # (\A_SEL[2]~input_o\ & (((\A_SEL[3]~input_o\)) # 
-- (\reg_file|A_mul|Mux15~1_combout\))) ) ) ) # ( !\reg_file|A_mul|Mux15~3_combout\ & ( !\reg_file|A_mul|Mux15~2_combout\ & ( (!\A_SEL[3]~input_o\ & ((!\A_SEL[2]~input_o\ & ((\reg_file|A_mul|Mux15~0_combout\))) # (\A_SEL[2]~input_o\ & 
-- (\reg_file|A_mul|Mux15~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_SEL[2]~input_o\,
	datab => \reg_file|A_mul|ALT_INV_Mux15~1_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_A_SEL[3]~input_o\,
	datae => \reg_file|A_mul|ALT_INV_Mux15~3_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux15~2_combout\,
	combout => \reg_file|A_mul|Mux15~4_combout\);

-- Location: LABCELL_X33_Y4_N9
\func_unit|_alu|WideOr0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|WideOr0~5_combout\ = ( \func_unit|_alu|au|Add0~49_sumout\ & ( (\func_unit|_alu|au|s|s13|SH1~0_combout\ & (!\reg_file|A_mul|Mux3~4_combout\ $ (((!\func_unit|_alu|au|s|s11|SH1~2_combout\ & !\func_unit|_alu|au|s|s11|SH1~1_combout\))))) ) ) # 
-- ( !\func_unit|_alu|au|Add0~49_sumout\ & ( (!\func_unit|_alu|au|s|s13|SH1~0_combout\ & (!\func_unit|_alu|au|s|s11|SH1~2_combout\ & (!\func_unit|_alu|au|s|s11|SH1~1_combout\ & !\reg_file|A_mul|Mux3~4_combout\))) # (\func_unit|_alu|au|s|s13|SH1~0_combout\ & 
-- (\reg_file|A_mul|Mux3~4_combout\ & ((\func_unit|_alu|au|s|s11|SH1~1_combout\) # (\func_unit|_alu|au|s|s11|SH1~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000111100000000000011100000111000010000000011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|s|s11|ALT_INV_SH1~2_combout\,
	datab => \func_unit|_alu|au|s|s11|ALT_INV_SH1~1_combout\,
	datac => \func_unit|_alu|au|s|s13|ALT_INV_SH1~0_combout\,
	datad => \reg_file|A_mul|ALT_INV_Mux3~4_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~49_sumout\,
	combout => \func_unit|_alu|WideOr0~5_combout\);

-- Location: LABCELL_X27_Y4_N48
\func_unit|_alu|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|WideOr0~0_combout\ = ( \func_unit|_alu|au|Add0~1_sumout\ & ( (\reg_file|A_mul|Mux15~4_combout\ & (!\func_unit|_alu|au|Add0~5_sumout\ $ (!\reg_file|A_mul|Mux14~4_combout\))) ) ) # ( !\func_unit|_alu|au|Add0~1_sumout\ & ( 
-- (!\reg_file|A_mul|Mux15~4_combout\ & (!\func_unit|_alu|au|Add0~5_sumout\ $ (\reg_file|A_mul|Mux14~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000000000000011110011000011000000000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \func_unit|_alu|au|ALT_INV_Add0~5_sumout\,
	datac => \reg_file|A_mul|ALT_INV_Mux14~4_combout\,
	datad => \reg_file|A_mul|ALT_INV_Mux15~4_combout\,
	datae => \func_unit|_alu|au|ALT_INV_Add0~1_sumout\,
	combout => \func_unit|_alu|WideOr0~0_combout\);

-- Location: LABCELL_X30_Y5_N18
\func_unit|_alu|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|WideOr0~1_combout\ = ( \func_unit|_alu|WideOr0~0_combout\ & ( \func_unit|_alu|au|Add0~13_sumout\ & ( (!\func_unit|_alu|au|s|s1|SH1~combout\ & ((!\func_unit|_alu|au|Add0~9_sumout\ & (!\reg_file|A_mul|Mux13~4_combout\ & 
-- \reg_file|A_mul|Mux12~4_combout\)) # (\func_unit|_alu|au|Add0~9_sumout\ & (\reg_file|A_mul|Mux13~4_combout\ & !\reg_file|A_mul|Mux12~4_combout\)))) # (\func_unit|_alu|au|s|s1|SH1~combout\ & (!\reg_file|A_mul|Mux12~4_combout\ & 
-- (!\func_unit|_alu|au|Add0~9_sumout\ $ (!\reg_file|A_mul|Mux13~4_combout\)))) ) ) ) # ( \func_unit|_alu|WideOr0~0_combout\ & ( !\func_unit|_alu|au|Add0~13_sumout\ & ( (!\func_unit|_alu|au|s|s1|SH1~combout\ & ((!\func_unit|_alu|au|Add0~9_sumout\ & 
-- (!\reg_file|A_mul|Mux13~4_combout\ & !\reg_file|A_mul|Mux12~4_combout\)) # (\func_unit|_alu|au|Add0~9_sumout\ & (\reg_file|A_mul|Mux13~4_combout\ & \reg_file|A_mul|Mux12~4_combout\)))) # (\func_unit|_alu|au|s|s1|SH1~combout\ & 
-- (\reg_file|A_mul|Mux12~4_combout\ & (!\func_unit|_alu|au|Add0~9_sumout\ $ (!\reg_file|A_mul|Mux13~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000001011000000000000000000001011010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|s|s1|ALT_INV_SH1~combout\,
	datab => \func_unit|_alu|au|ALT_INV_Add0~9_sumout\,
	datac => \reg_file|A_mul|ALT_INV_Mux13~4_combout\,
	datad => \reg_file|A_mul|ALT_INV_Mux12~4_combout\,
	datae => \func_unit|_alu|ALT_INV_WideOr0~0_combout\,
	dataf => \func_unit|_alu|au|ALT_INV_Add0~13_sumout\,
	combout => \func_unit|_alu|WideOr0~1_combout\);

-- Location: LABCELL_X36_Y3_N0
\func_unit|_alu|WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|WideOr0~2_combout\ = ( \func_unit|_alu|au|s|s6|SH1~0_combout\ & ( \reg_file|A_mul|Mux10~4_combout\ & ( (!\func_unit|_alu|au|s|s4|REG~combout\ & (\func_unit|_alu|WideOr0~1_combout\ & (!\func_unit|_alu|au|s|s4|SH1~combout\ $ 
-- (!\func_unit|_alu|au|Add0~21_sumout\)))) ) ) ) # ( \func_unit|_alu|au|s|s6|SH1~0_combout\ & ( !\reg_file|A_mul|Mux10~4_combout\ & ( (!\func_unit|_alu|au|s|s4|REG~combout\ & (\func_unit|_alu|WideOr0~1_combout\ & (\func_unit|_alu|au|s|s4|SH1~combout\ & 
-- \func_unit|_alu|au|Add0~21_sumout\))) ) ) ) # ( !\func_unit|_alu|au|s|s6|SH1~0_combout\ & ( !\reg_file|A_mul|Mux10~4_combout\ & ( (!\func_unit|_alu|au|s|s4|REG~combout\ & (\func_unit|_alu|WideOr0~1_combout\ & (!\func_unit|_alu|au|s|s4|SH1~combout\ & 
-- !\func_unit|_alu|au|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000001000000000000000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|s|s4|ALT_INV_REG~combout\,
	datab => \func_unit|_alu|ALT_INV_WideOr0~1_combout\,
	datac => \func_unit|_alu|au|s|s4|ALT_INV_SH1~combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~21_sumout\,
	datae => \func_unit|_alu|au|s|s6|ALT_INV_SH1~0_combout\,
	dataf => \reg_file|A_mul|ALT_INV_Mux10~4_combout\,
	combout => \func_unit|_alu|WideOr0~2_combout\);

-- Location: LABCELL_X35_Y2_N27
\func_unit|_alu|WideOr0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|WideOr0~3_combout\ = ( \func_unit|_alu|au|Add0~29_sumout\ & ( \func_unit|_alu|WideOr0~2_combout\ & ( (\func_unit|_alu|au|s|s8|SH1~0_combout\ & (!\reg_file|A_mul|Mux8~4_combout\ $ (((!\func_unit|_alu|au|s|s6|SH1~2_combout\ & 
-- !\func_unit|_alu|au|s|s6|SH1~1_combout\))))) ) ) ) # ( !\func_unit|_alu|au|Add0~29_sumout\ & ( \func_unit|_alu|WideOr0~2_combout\ & ( (!\func_unit|_alu|au|s|s8|SH1~0_combout\ & (!\reg_file|A_mul|Mux8~4_combout\ & (!\func_unit|_alu|au|s|s6|SH1~2_combout\ & 
-- !\func_unit|_alu|au|s|s6|SH1~1_combout\))) # (\func_unit|_alu|au|s|s8|SH1~0_combout\ & (\reg_file|A_mul|Mux8~4_combout\ & ((\func_unit|_alu|au|s|s6|SH1~1_combout\) # (\func_unit|_alu|au|s|s6|SH1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000001000100010001010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|s|s8|ALT_INV_SH1~0_combout\,
	datab => \reg_file|A_mul|ALT_INV_Mux8~4_combout\,
	datac => \func_unit|_alu|au|s|s6|ALT_INV_SH1~2_combout\,
	datad => \func_unit|_alu|au|s|s6|ALT_INV_SH1~1_combout\,
	datae => \func_unit|_alu|au|ALT_INV_Add0~29_sumout\,
	dataf => \func_unit|_alu|ALT_INV_WideOr0~2_combout\,
	combout => \func_unit|_alu|WideOr0~3_combout\);

-- Location: MLABCELL_X32_Y4_N54
\func_unit|_alu|au|s|s9|REG\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|au|s|s9|REG~combout\ = ( \func_unit|_alu|au|s|s7|SH1~1_combout\ & ( !\func_unit|_alu|au|s|s9|SH1~0_combout\ $ (((!\func_unit|_alu|au|Add0~33_sumout\ & !\reg_file|A_mul|Mux7~4_combout\))) ) ) # ( !\func_unit|_alu|au|s|s7|SH1~1_combout\ & ( 
-- !\func_unit|_alu|au|s|s9|SH1~0_combout\ $ (((!\func_unit|_alu|au|Add0~33_sumout\ & ((!\func_unit|_alu|au|s|s7|SH1~2_combout\) # (!\reg_file|A_mul|Mux7~4_combout\))) # (\func_unit|_alu|au|Add0~33_sumout\ & (!\func_unit|_alu|au|s|s7|SH1~2_combout\ & 
-- !\reg_file|A_mul|Mux7~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100001011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \func_unit|_alu|au|ALT_INV_Add0~33_sumout\,
	datab => \func_unit|_alu|au|s|s7|ALT_INV_SH1~2_combout\,
	datac => \reg_file|A_mul|ALT_INV_Mux7~4_combout\,
	datad => \func_unit|_alu|au|s|s9|ALT_INV_SH1~0_combout\,
	dataf => \func_unit|_alu|au|s|s7|ALT_INV_SH1~1_combout\,
	combout => \func_unit|_alu|au|s|s9|REG~combout\);

-- Location: LABCELL_X33_Y3_N12
\func_unit|_alu|WideOr0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|WideOr0~4_combout\ = ( !\func_unit|_alu|au|s|s9|REG~combout\ & ( \func_unit|_alu|au|s|s9|SH1~combout\ & ( (\func_unit|_alu|WideOr0~3_combout\ & ((!\reg_file|A_mul|Mux5~4_combout\ & (!\func_unit|_alu|au|s|s11|SH1~0_combout\ & 
-- !\func_unit|_alu|au|Add0~41_sumout\)) # (\reg_file|A_mul|Mux5~4_combout\ & (\func_unit|_alu|au|s|s11|SH1~0_combout\ & \func_unit|_alu|au|Add0~41_sumout\)))) ) ) ) # ( !\func_unit|_alu|au|s|s9|REG~combout\ & ( !\func_unit|_alu|au|s|s9|SH1~combout\ & ( 
-- (\func_unit|_alu|WideOr0~3_combout\ & (\func_unit|_alu|au|s|s11|SH1~0_combout\ & (!\reg_file|A_mul|Mux5~4_combout\ $ (!\func_unit|_alu|au|Add0~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000000000000000100000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux5~4_combout\,
	datab => \func_unit|_alu|ALT_INV_WideOr0~3_combout\,
	datac => \func_unit|_alu|au|s|s11|ALT_INV_SH1~0_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~41_sumout\,
	datae => \func_unit|_alu|au|s|s9|ALT_INV_REG~combout\,
	dataf => \func_unit|_alu|au|s|s9|ALT_INV_SH1~combout\,
	combout => \func_unit|_alu|WideOr0~4_combout\);

-- Location: LABCELL_X30_Y6_N27
\func_unit|_alu|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \func_unit|_alu|WideOr0~combout\ = ( \func_unit|_alu|au|s|s15|REG~0_combout\ & ( \func_unit|_alu|WideOr0~4_combout\ & ( (!\func_unit|_alu|WideOr0~5_combout\) # ((!\reg_file|A_mul|Mux1~4_combout\ & ((!\func_unit|_alu|au|Add0~57_sumout\) # 
-- (\func_unit|_alu|au|s|s13|SH1~combout\))) # (\reg_file|A_mul|Mux1~4_combout\ & (!\func_unit|_alu|au|s|s13|SH1~combout\ $ (!\func_unit|_alu|au|Add0~57_sumout\)))) ) ) ) # ( !\func_unit|_alu|au|s|s15|REG~0_combout\ & ( \func_unit|_alu|WideOr0~4_combout\ & ( 
-- ((!\func_unit|_alu|au|s|s13|SH1~combout\) # ((!\func_unit|_alu|WideOr0~5_combout\) # (\func_unit|_alu|au|Add0~57_sumout\))) # (\reg_file|A_mul|Mux1~4_combout\) ) ) ) # ( \func_unit|_alu|au|s|s15|REG~0_combout\ & ( !\func_unit|_alu|WideOr0~4_combout\ ) ) # 
-- ( !\func_unit|_alu|au|s|s15|REG~0_combout\ & ( !\func_unit|_alu|WideOr0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111101111111111111101111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|A_mul|ALT_INV_Mux1~4_combout\,
	datab => \func_unit|_alu|au|s|s13|ALT_INV_SH1~combout\,
	datac => \func_unit|_alu|ALT_INV_WideOr0~5_combout\,
	datad => \func_unit|_alu|au|ALT_INV_Add0~57_sumout\,
	datae => \func_unit|_alu|au|s|s15|ALT_INV_REG~0_combout\,
	dataf => \func_unit|_alu|ALT_INV_WideOr0~4_combout\,
	combout => \func_unit|_alu|WideOr0~combout\);

-- Location: LABCELL_X36_Y3_N18
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


