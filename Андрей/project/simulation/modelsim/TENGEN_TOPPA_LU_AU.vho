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

-- DATE "07/22/2016 06:24:08"

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
	clk : IN std_logic;
	load_en : IN std_logic;
	a_sel : IN std_logic_vector(3 DOWNTO 0);
	b_sel : IN std_logic_vector(3 DOWNTO 0);
	dest_sel : IN std_logic_vector(3 DOWNTO 0);
	op_sel : IN std_logic_vector(3 DOWNTO 0);
	const_in : IN std_logic_vector(15 DOWNTO 0);
	const_sel : IN std_logic;
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_sel : IN std_logic;
	a_out : BUFFER std_logic_vector(15 DOWNTO 0);
	b_out : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- a_out[0]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[2]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[5]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[7]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[8]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[9]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[10]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[11]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[12]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[13]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[14]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[15]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[0]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[2]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[5]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[6]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[7]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[8]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[10]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[11]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[12]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[13]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[14]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[15]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_sel[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_sel[1]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_sel[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_sel[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_sel[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_sel[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_sel[2]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_sel[3]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_sel	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[0]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[15]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_sel	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[1]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_sel[1]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_sel[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_sel[3]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_en	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_sel[0]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[2]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[6]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[7]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[8]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[9]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[10]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[11]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[12]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[13]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- const_in[14]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_load_en : std_logic;
SIGNAL ww_a_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dest_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_const_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_const_sel : std_logic;
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_sel : std_logic;
SIGNAL ww_a_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a_sel[3]~input_o\ : std_logic;
SIGNAL \a_sel[1]~input_o\ : std_logic;
SIGNAL \a_sel[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \op_sel[3]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_sel~input_o\ : std_logic;
SIGNAL \const_sel~input_o\ : std_logic;
SIGNAL \const_in[1]~input_o\ : std_logic;
SIGNAL \b_sel[0]~input_o\ : std_logic;
SIGNAL \b_sel[1]~input_o\ : std_logic;
SIGNAL \b_sel[2]~input_o\ : std_logic;
SIGNAL \b_sel[3]~input_o\ : std_logic;
SIGNAL \const_in[0]~input_o\ : std_logic;
SIGNAL \load_en~input_o\ : std_logic;
SIGNAL \dest_sel[2]~input_o\ : std_logic;
SIGNAL \dest_sel[0]~input_o\ : std_logic;
SIGNAL \dest_sel[1]~input_o\ : std_logic;
SIGNAL \dest_sel[3]~input_o\ : std_logic;
SIGNAL \rf|d1|Decoder0~8_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~11_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~9_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~10_combout\ : std_logic;
SIGNAL \rf|b1|Mux15~2_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~5_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~4_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~7_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~6_combout\ : std_logic;
SIGNAL \rf|b1|Mux15~1_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~3_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~2_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux15~0_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~12_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~15_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~14_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~13_combout\ : std_logic;
SIGNAL \rf|b1|Mux15~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux15~4_combout\ : std_logic;
SIGNAL \m2|res[1]~11_combout\ : std_logic;
SIGNAL \op_sel[0]~input_o\ : std_logic;
SIGNAL \m2|res[1]~10_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \op_sel[2]~input_o\ : std_logic;
SIGNAL \m2|res[1]~7_combout\ : std_logic;
SIGNAL \op_sel[1]~input_o\ : std_logic;
SIGNAL \rf|reg12|q[1]~feeder_combout\ : std_logic;
SIGNAL \a_sel[2]~input_o\ : std_logic;
SIGNAL \rf|reg0|q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|d1|Decoder0~0_combout\ : std_logic;
SIGNAL \rf|reg8|q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux14~0_combout\ : std_logic;
SIGNAL \rf|reg9|q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux14~1_combout\ : std_logic;
SIGNAL \rf|reg15|q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux14~3_combout\ : std_logic;
SIGNAL \rf|reg10|q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|reg6|q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|reg14|q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|reg2|q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux14~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux14~4_combout\ : std_logic;
SIGNAL \m2|res[1]~6_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~1_sumout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~2\ : std_logic;
SIGNAL \al_shift|al|au|Add0~5_sumout\ : std_logic;
SIGNAL \m2|res[1]~8_combout\ : std_logic;
SIGNAL \const_in[2]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \const_in[3]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \const_in[4]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \const_in[5]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \m2|res[5]~24_combout\ : std_logic;
SIGNAL \const_in[6]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \m2|res[6]~30_combout\ : std_logic;
SIGNAL \const_in[7]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \const_in[8]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \const_in[9]~input_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \const_in[11]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \const_in[12]~input_o\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \const_in[13]~input_o\ : std_logic;
SIGNAL \const_in[14]~input_o\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \const_in[15]~input_o\ : std_logic;
SIGNAL \al_shift|m2|res[15]~2_combout\ : std_logic;
SIGNAL \rf|reg1|q[15]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux0~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux0~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux0~0_combout\ : std_logic;
SIGNAL \rf|a1|Mux0~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux0~4_combout\ : std_logic;
SIGNAL \al_shift|al|lu|m4|Mux0~0_combout\ : std_logic;
SIGNAL \al_shift|m2|res[15]~3_combout\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \const_in[10]~input_o\ : std_logic;
SIGNAL \al_shift|al|au|Add0~6\ : std_logic;
SIGNAL \al_shift|al|au|Add0~10\ : std_logic;
SIGNAL \al_shift|al|au|Add0~14\ : std_logic;
SIGNAL \al_shift|al|au|Add0~18\ : std_logic;
SIGNAL \al_shift|al|au|Add0~22\ : std_logic;
SIGNAL \al_shift|al|au|Add0~26\ : std_logic;
SIGNAL \al_shift|al|au|Add0~30\ : std_logic;
SIGNAL \al_shift|al|au|Add0~34\ : std_logic;
SIGNAL \al_shift|al|au|Add0~38\ : std_logic;
SIGNAL \al_shift|al|au|Add0~42\ : std_logic;
SIGNAL \al_shift|al|au|Add0~46\ : std_logic;
SIGNAL \al_shift|al|au|Add0~50\ : std_logic;
SIGNAL \al_shift|al|au|Add0~54\ : std_logic;
SIGNAL \al_shift|al|au|Add0~58\ : std_logic;
SIGNAL \al_shift|al|au|Add0~61_sumout\ : std_logic;
SIGNAL \al_shift|m2|res[15]~1_combout\ : std_logic;
SIGNAL \al_shift|m2|res[15]~0_combout\ : std_logic;
SIGNAL \rf|a1|Mux2~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux2~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux2~0_combout\ : std_logic;
SIGNAL \rf|reg13|q[13]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux2~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux2~4_combout\ : std_logic;
SIGNAL \rf|reg11|q[14]~feeder_combout\ : std_logic;
SIGNAL \rf|reg10|q[14]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux1~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux1~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux1~3_combout\ : std_logic;
SIGNAL \rf|reg3|q[14]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux1~0_combout\ : std_logic;
SIGNAL \rf|a1|Mux1~4_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~57_sumout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~53_sumout\ : std_logic;
SIGNAL \rf|reg13|q[11]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux4~1_combout\ : std_logic;
SIGNAL \rf|reg3|q[11]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux4~3_combout\ : std_logic;
SIGNAL \rf|reg12|q[11]~feeder_combout\ : std_logic;
SIGNAL \rf|reg8|q[11]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux4~0_combout\ : std_logic;
SIGNAL \rf|a1|Mux4~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux4~4_combout\ : std_logic;
SIGNAL \rf|a1|Mux3~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux3~0_combout\ : std_logic;
SIGNAL \rf|a1|Mux3~2_combout\ : std_logic;
SIGNAL \rf|reg13|q[12]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux3~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux3~4_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~49_sumout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~45_sumout\ : std_logic;
SIGNAL \rf|reg9|q[9]~feeder_combout\ : std_logic;
SIGNAL \rf|reg13|q[9]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux6~1_combout\ : std_logic;
SIGNAL \rf|reg8|q[9]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux6~0_combout\ : std_logic;
SIGNAL \rf|reg15|q[9]~feeder_combout\ : std_logic;
SIGNAL \rf|reg7|q[9]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux6~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux6~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux6~4_combout\ : std_logic;
SIGNAL \rf|a1|Mux5~0_combout\ : std_logic;
SIGNAL \rf|reg9|q[10]~feeder_combout\ : std_logic;
SIGNAL \rf|reg10|q[10]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux5~2_combout\ : std_logic;
SIGNAL \rf|reg13|q[10]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux5~3_combout\ : std_logic;
SIGNAL \rf|reg7|q[10]~feeder_combout\ : std_logic;
SIGNAL \rf|reg5|q[10]~feeder_combout\ : std_logic;
SIGNAL \rf|reg6|q[10]~feeder_combout\ : std_logic;
SIGNAL \rf|reg4|q[10]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux5~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux5~4_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~41_sumout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~37_sumout\ : std_logic;
SIGNAL \rf|a1|Mux8~1_combout\ : std_logic;
SIGNAL \rf|reg11|q[7]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux8~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux8~0_combout\ : std_logic;
SIGNAL \rf|reg10|q[7]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux8~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux8~4_combout\ : std_logic;
SIGNAL \rf|a1|Mux7~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux7~0_combout\ : std_logic;
SIGNAL \rf|reg15|q[8]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux7~3_combout\ : std_logic;
SIGNAL \rf|reg6|q[8]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux7~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux7~4_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~29_sumout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~33_sumout\ : std_logic;
SIGNAL \rf|reg9|q[6]~feeder_combout\ : std_logic;
SIGNAL \rf|reg8|q[6]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux9~2_combout\ : std_logic;
SIGNAL \rf|reg7|q[6]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux9~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux9~0_combout\ : std_logic;
SIGNAL \rf|reg13|q[6]~feeder_combout\ : std_logic;
SIGNAL \rf|reg15|q[6]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux9~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux9~4_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~25_sumout\ : std_logic;
SIGNAL \al_shift|al|au|f6|c~0_combout\ : std_logic;
SIGNAL \rf|a1|Mux11~0_combout\ : std_logic;
SIGNAL \rf|reg11|q[4]~feeder_combout\ : std_logic;
SIGNAL \rf|reg8|q[4]~feeder_combout\ : std_logic;
SIGNAL \rf|reg9|q[4]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux11~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux11~1_combout\ : std_logic;
SIGNAL \rf|reg12|q[4]~feeder_combout\ : std_logic;
SIGNAL \rf|reg15|q[4]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux11~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux11~4_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~21_sumout\ : std_logic;
SIGNAL \al_shift|al|au|f6|c~1_combout\ : std_logic;
SIGNAL \rf|reg11|q[5]~feeder_combout\ : std_logic;
SIGNAL \rf|reg7|q[5]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux10~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux10~0_combout\ : std_logic;
SIGNAL \rf|reg13|q[5]~feeder_combout\ : std_logic;
SIGNAL \rf|reg5|q[5]~feeder_combout\ : std_logic;
SIGNAL \rf|reg9|q[5]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux10~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux10~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux10~4_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~17_sumout\ : std_logic;
SIGNAL \rf|a1|Mux12~3_combout\ : std_logic;
SIGNAL \rf|reg12|q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|reg8|q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|reg0|q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux12~0_combout\ : std_logic;
SIGNAL \rf|reg9|q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux12~1_combout\ : std_logic;
SIGNAL \rf|reg10|q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux12~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux12~4_combout\ : std_logic;
SIGNAL \rf|reg8|q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|reg9|q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux13~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux13~0_combout\ : std_logic;
SIGNAL \rf|reg7|q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|a1|Mux13~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux13~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux13~4_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~9_sumout\ : std_logic;
SIGNAL \al_shift|al|au|f1|c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|Add0~13_sumout\ : std_logic;
SIGNAL \al_shift|al|au|f3|c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f6|c~2_combout\ : std_logic;
SIGNAL \al_shift|al|au|f8|c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f10|c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f12|c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f14|c~0_combout\ : std_logic;
SIGNAL \m2|res[15]~67_combout\ : std_logic;
SIGNAL \rf|reg10|q[15]~feeder_combout\ : std_logic;
SIGNAL \rf|b1|Mux0~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux0~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux0~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux0~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux0~4_combout\ : std_logic;
SIGNAL \m2|res[14]~0_combout\ : std_logic;
SIGNAL \m2|res[14]~64_combout\ : std_logic;
SIGNAL \m2|res[14]~65_combout\ : std_logic;
SIGNAL \m2|res[14]~62_combout\ : std_logic;
SIGNAL \m2|res[14]~63_combout\ : std_logic;
SIGNAL \m2|res[14]~66_combout\ : std_logic;
SIGNAL \rf|reg4|q[14]~feeder_combout\ : std_logic;
SIGNAL \rf|b1|Mux1~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux1~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux1~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux1~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux1~4_combout\ : std_logic;
SIGNAL \m2|res[13]~58_combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \m2|res[13]~59_combout\ : std_logic;
SIGNAL \m2|res[13]~60_combout\ : std_logic;
SIGNAL \m2|res[13]~61_combout\ : std_logic;
SIGNAL \rf|b1|Mux2~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux2~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux2~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux2~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux2~4_combout\ : std_logic;
SIGNAL \m2|res[14]~56_combout\ : std_logic;
SIGNAL \m2|res[12]~57_combout\ : std_logic;
SIGNAL \m2|res[12]~55_combout\ : std_logic;
SIGNAL \m2|res[12]~54_combout\ : std_logic;
SIGNAL \m2|res[12]~68_combout\ : std_logic;
SIGNAL \rf|b1|Mux3~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux3~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux3~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux3~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux3~4_combout\ : std_logic;
SIGNAL \m2|res[13]~53_combout\ : std_logic;
SIGNAL \m2|res[11]~51_combout\ : std_logic;
SIGNAL \m2|res[11]~52_combout\ : std_logic;
SIGNAL \m2|res[11]~72_combout\ : std_logic;
SIGNAL \rf|b1|Mux4~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux4~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux4~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux4~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux4~4_combout\ : std_logic;
SIGNAL \m2|res[10]~49_combout\ : std_logic;
SIGNAL \m2|res[10]~47_combout\ : std_logic;
SIGNAL \al_shift|al|au|f7|c~1_combout\ : std_logic;
SIGNAL \al_shift|al|au|f7|c~2_combout\ : std_logic;
SIGNAL \al_shift|al|au|f2|c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f4|c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f7|c~3_combout\ : std_logic;
SIGNAL \al_shift|al|au|f9|c~0_combout\ : std_logic;
SIGNAL \m2|res[10]~48_combout\ : std_logic;
SIGNAL \m2|res[10]~50_combout\ : std_logic;
SIGNAL \rf|b1|Mux5~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux5~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux5~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux5~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux5~4_combout\ : std_logic;
SIGNAL \m2|res[11]~46_combout\ : std_logic;
SIGNAL \m2|res[9]~44_combout\ : std_logic;
SIGNAL \m2|res[9]~45_combout\ : std_logic;
SIGNAL \m2|res[9]~76_combout\ : std_logic;
SIGNAL \rf|b1|Mux6~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux6~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux6~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux6~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux6~4_combout\ : std_logic;
SIGNAL \m2|res[10]~43_combout\ : std_logic;
SIGNAL \m2|res[8]~41_combout\ : std_logic;
SIGNAL \al_shift|al|au|f5|c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f5|c~1_combout\ : std_logic;
SIGNAL \al_shift|al|au|f5|c~2_combout\ : std_logic;
SIGNAL \al_shift|al|au|f7|c~0_combout\ : std_logic;
SIGNAL \m2|res[8]~42_combout\ : std_logic;
SIGNAL \m2|res[8]~80_combout\ : std_logic;
SIGNAL \rf|b1|Mux7~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux7~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux7~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux7~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux7~4_combout\ : std_logic;
SIGNAL \m2|res[9]~38_combout\ : std_logic;
SIGNAL \m2|res[7]~36_combout\ : std_logic;
SIGNAL \m2|res[7]~37_combout\ : std_logic;
SIGNAL \m2|res[7]~39_combout\ : std_logic;
SIGNAL \m2|res[7]~40_combout\ : std_logic;
SIGNAL \rf|b1|Mux8~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux8~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux8~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux8~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux8~4_combout\ : std_logic;
SIGNAL \m2|res[8]~33_combout\ : std_logic;
SIGNAL \m2|res[6]~31_combout\ : std_logic;
SIGNAL \m2|res[6]~32_combout\ : std_logic;
SIGNAL \m2|res[6]~34_combout\ : std_logic;
SIGNAL \m2|res[6]~35_combout\ : std_logic;
SIGNAL \rf|reg6|q[6]~feeder_combout\ : std_logic;
SIGNAL \rf|b1|Mux9~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux9~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux9~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux9~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux9~4_combout\ : std_logic;
SIGNAL \m2|res[7]~27_combout\ : std_logic;
SIGNAL \m2|res[5]~25_combout\ : std_logic;
SIGNAL \m2|res[5]~26_combout\ : std_logic;
SIGNAL \m2|res[5]~28_combout\ : std_logic;
SIGNAL \m2|res[5]~29_combout\ : std_logic;
SIGNAL \rf|b1|Mux10~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux10~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux10~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux10~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux10~4_combout\ : std_logic;
SIGNAL \m2|res[4]~20_combout\ : std_logic;
SIGNAL \m2|res[4]~21_combout\ : std_logic;
SIGNAL \m2|res[4]~22_combout\ : std_logic;
SIGNAL \m2|res[4]~23_combout\ : std_logic;
SIGNAL \rf|b1|Mux11~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux11~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux11~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux11~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux11~4_combout\ : std_logic;
SIGNAL \m2|res[3]~16_combout\ : std_logic;
SIGNAL \m2|res[3]~17_combout\ : std_logic;
SIGNAL \m2|res[3]~18_combout\ : std_logic;
SIGNAL \m2|res[3]~19_combout\ : std_logic;
SIGNAL \rf|reg6|q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|b1|Mux12~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux12~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux12~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux12~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux12~4_combout\ : std_logic;
SIGNAL \m2|res[4]~15_combout\ : std_logic;
SIGNAL \m2|res[2]~13_combout\ : std_logic;
SIGNAL \m2|res[2]~14_combout\ : std_logic;
SIGNAL \m2|res[2]~84_combout\ : std_logic;
SIGNAL \rf|b1|Mux13~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux13~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux13~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux13~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux13~4_combout\ : std_logic;
SIGNAL \m2|res[3]~5_combout\ : std_logic;
SIGNAL \m2|res[1]~9_combout\ : std_logic;
SIGNAL \m2|res[1]~12_combout\ : std_logic;
SIGNAL \rf|b1|Mux14~3_combout\ : std_logic;
SIGNAL \rf|b1|Mux14~2_combout\ : std_logic;
SIGNAL \rf|b1|Mux14~1_combout\ : std_logic;
SIGNAL \rf|b1|Mux14~0_combout\ : std_logic;
SIGNAL \rf|b1|Mux14~4_combout\ : std_logic;
SIGNAL \m2|res[2]~1_combout\ : std_logic;
SIGNAL \m2|res[0]~2_combout\ : std_logic;
SIGNAL \al_shift|al|lu|m4|Mux15~0_combout\ : std_logic;
SIGNAL \m2|res[0]~3_combout\ : std_logic;
SIGNAL \m2|res[0]~4_combout\ : std_logic;
SIGNAL \rf|a1|Mux15~0_combout\ : std_logic;
SIGNAL \rf|a1|Mux15~3_combout\ : std_logic;
SIGNAL \rf|a1|Mux15~2_combout\ : std_logic;
SIGNAL \rf|a1|Mux15~1_combout\ : std_logic;
SIGNAL \rf|a1|Mux15~4_combout\ : std_logic;
SIGNAL \rf|reg7|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg15|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg1|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg2|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg3|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg4|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg5|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg6|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg8|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg9|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg10|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg11|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg12|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg13|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg14|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_data_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dest_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_load_en~input_o\ : std_logic;
SIGNAL \ALT_INV_dest_sel[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dest_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dest_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_const_sel~input_o\ : std_logic;
SIGNAL \ALT_INV_const_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_sel[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_sel~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b_sel[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a_sel[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a_sel[0]~input_o\ : std_logic;
SIGNAL \m2|ALT_INV_res[15]~67_combout\ : std_logic;
SIGNAL \al_shift|m2|ALT_INV_res[15]~2_combout\ : std_logic;
SIGNAL \al_shift|al|lu|m4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \al_shift|m2|ALT_INV_res[15]~1_combout\ : std_logic;
SIGNAL \al_shift|m2|ALT_INV_res[15]~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f14|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[14]~66_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[14]~65_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[14]~64_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[14]~63_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[14]~62_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[13]~61_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[13]~60_combout\ : std_logic;
SIGNAL \al_shift|al|au|f12|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[13]~59_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[13]~58_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[12]~57_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[14]~56_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[12]~55_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[12]~54_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[13]~53_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[11]~52_combout\ : std_logic;
SIGNAL \al_shift|al|au|f10|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[11]~51_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[10]~50_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[10]~49_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[10]~48_combout\ : std_logic;
SIGNAL \al_shift|al|au|f9|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f7|ALT_INV_c~3_combout\ : std_logic;
SIGNAL \al_shift|al|au|f7|ALT_INV_c~2_combout\ : std_logic;
SIGNAL \al_shift|al|au|f7|ALT_INV_c~1_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[10]~47_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[11]~46_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[9]~45_combout\ : std_logic;
SIGNAL \al_shift|al|au|f8|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \al_shift|al|au|f6|ALT_INV_c~2_combout\ : std_logic;
SIGNAL \al_shift|al|au|f6|ALT_INV_c~1_combout\ : std_logic;
SIGNAL \al_shift|al|au|f6|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[9]~44_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[10]~43_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[8]~42_combout\ : std_logic;
SIGNAL \al_shift|al|au|f7|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[8]~41_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[7]~40_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[7]~39_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[9]~38_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[7]~37_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[7]~36_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[6]~35_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[6]~34_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[8]~33_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[6]~32_combout\ : std_logic;
SIGNAL \al_shift|al|au|f5|ALT_INV_c~2_combout\ : std_logic;
SIGNAL \al_shift|al|au|f5|ALT_INV_c~1_combout\ : std_logic;
SIGNAL \al_shift|al|au|f5|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[6]~31_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[6]~30_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[5]~29_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[5]~28_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[7]~27_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[5]~26_combout\ : std_logic;
SIGNAL \al_shift|al|au|f4|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[5]~25_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[5]~24_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[4]~23_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[4]~22_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[4]~21_combout\ : std_logic;
SIGNAL \al_shift|al|au|f3|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[4]~20_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[3]~19_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[3]~18_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[3]~17_combout\ : std_logic;
SIGNAL \al_shift|al|au|f2|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[3]~16_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[4]~15_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[2]~14_combout\ : std_logic;
SIGNAL \al_shift|al|au|f1|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[2]~13_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[1]~12_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[1]~11_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[1]~10_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[1]~9_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[1]~8_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[1]~7_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[1]~6_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[3]~5_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[0]~3_combout\ : std_logic;
SIGNAL \al_shift|al|lu|m4|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[0]~2_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[2]~1_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[14]~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \rf|b1|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \rf|reg15|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg11|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg7|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg3|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|a1|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \rf|reg14|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg10|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg6|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg2|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|a1|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \rf|reg13|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg9|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg5|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg1|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|a1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \rf|reg12|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg8|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg4|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|reg0|ALT_INV_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|a1|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \rf|a1|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[2]~84_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[8]~80_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[9]~76_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[11]~72_combout\ : std_logic;
SIGNAL \m2|ALT_INV_res[12]~68_combout\ : std_logic;
SIGNAL \al_shift|m2|ALT_INV_res[15]~3_combout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \al_shift|al|au|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_load_en <= load_en;
ww_a_sel <= a_sel;
ww_b_sel <= b_sel;
ww_dest_sel <= dest_sel;
ww_op_sel <= op_sel;
ww_const_in <= const_in;
ww_const_sel <= const_sel;
ww_data_in <= data_in;
ww_data_sel <= data_sel;
a_out <= ww_a_out;
b_out <= ww_b_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data_in[15]~input_o\ <= NOT \data_in[15]~input_o\;
\ALT_INV_data_in[14]~input_o\ <= NOT \data_in[14]~input_o\;
\ALT_INV_const_in[14]~input_o\ <= NOT \const_in[14]~input_o\;
\ALT_INV_data_in[13]~input_o\ <= NOT \data_in[13]~input_o\;
\ALT_INV_const_in[13]~input_o\ <= NOT \const_in[13]~input_o\;
\ALT_INV_data_in[12]~input_o\ <= NOT \data_in[12]~input_o\;
\ALT_INV_const_in[12]~input_o\ <= NOT \const_in[12]~input_o\;
\ALT_INV_data_in[11]~input_o\ <= NOT \data_in[11]~input_o\;
\ALT_INV_const_in[11]~input_o\ <= NOT \const_in[11]~input_o\;
\ALT_INV_data_in[10]~input_o\ <= NOT \data_in[10]~input_o\;
\ALT_INV_const_in[10]~input_o\ <= NOT \const_in[10]~input_o\;
\ALT_INV_data_in[9]~input_o\ <= NOT \data_in[9]~input_o\;
\ALT_INV_const_in[9]~input_o\ <= NOT \const_in[9]~input_o\;
\ALT_INV_data_in[8]~input_o\ <= NOT \data_in[8]~input_o\;
\ALT_INV_const_in[8]~input_o\ <= NOT \const_in[8]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_const_in[7]~input_o\ <= NOT \const_in[7]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_const_in[6]~input_o\ <= NOT \const_in[6]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_const_in[5]~input_o\ <= NOT \const_in[5]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_const_in[4]~input_o\ <= NOT \const_in[4]~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_const_in[3]~input_o\ <= NOT \const_in[3]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_const_in[2]~input_o\ <= NOT \const_in[2]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_dest_sel[0]~input_o\ <= NOT \dest_sel[0]~input_o\;
\ALT_INV_load_en~input_o\ <= NOT \load_en~input_o\;
\ALT_INV_dest_sel[3]~input_o\ <= NOT \dest_sel[3]~input_o\;
\ALT_INV_dest_sel[2]~input_o\ <= NOT \dest_sel[2]~input_o\;
\ALT_INV_dest_sel[1]~input_o\ <= NOT \dest_sel[1]~input_o\;
\ALT_INV_const_in[0]~input_o\ <= NOT \const_in[0]~input_o\;
\ALT_INV_op_sel[2]~input_o\ <= NOT \op_sel[2]~input_o\;
\ALT_INV_const_in[1]~input_o\ <= NOT \const_in[1]~input_o\;
\ALT_INV_const_sel~input_o\ <= NOT \const_sel~input_o\;
\ALT_INV_const_in[15]~input_o\ <= NOT \const_in[15]~input_o\;
\ALT_INV_op_sel[1]~input_o\ <= NOT \op_sel[1]~input_o\;
\ALT_INV_op_sel[0]~input_o\ <= NOT \op_sel[0]~input_o\;
\ALT_INV_op_sel[3]~input_o\ <= NOT \op_sel[3]~input_o\;
\ALT_INV_data_sel~input_o\ <= NOT \data_sel~input_o\;
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\ALT_INV_b_sel[3]~input_o\ <= NOT \b_sel[3]~input_o\;
\ALT_INV_b_sel[2]~input_o\ <= NOT \b_sel[2]~input_o\;
\ALT_INV_b_sel[1]~input_o\ <= NOT \b_sel[1]~input_o\;
\ALT_INV_b_sel[0]~input_o\ <= NOT \b_sel[0]~input_o\;
\ALT_INV_a_sel[3]~input_o\ <= NOT \a_sel[3]~input_o\;
\ALT_INV_a_sel[2]~input_o\ <= NOT \a_sel[2]~input_o\;
\ALT_INV_a_sel[1]~input_o\ <= NOT \a_sel[1]~input_o\;
\ALT_INV_a_sel[0]~input_o\ <= NOT \a_sel[0]~input_o\;
\m2|ALT_INV_res[15]~67_combout\ <= NOT \m2|res[15]~67_combout\;
\al_shift|m2|ALT_INV_res[15]~2_combout\ <= NOT \al_shift|m2|res[15]~2_combout\;
\al_shift|al|lu|m4|ALT_INV_Mux0~0_combout\ <= NOT \al_shift|al|lu|m4|Mux0~0_combout\;
\al_shift|m2|ALT_INV_res[15]~1_combout\ <= NOT \al_shift|m2|res[15]~1_combout\;
\al_shift|m2|ALT_INV_res[15]~0_combout\ <= NOT \al_shift|m2|res[15]~0_combout\;
\al_shift|al|au|f14|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f14|c~0_combout\;
\m2|ALT_INV_res[14]~66_combout\ <= NOT \m2|res[14]~66_combout\;
\m2|ALT_INV_res[14]~65_combout\ <= NOT \m2|res[14]~65_combout\;
\m2|ALT_INV_res[14]~64_combout\ <= NOT \m2|res[14]~64_combout\;
\m2|ALT_INV_res[14]~63_combout\ <= NOT \m2|res[14]~63_combout\;
\m2|ALT_INV_res[14]~62_combout\ <= NOT \m2|res[14]~62_combout\;
\m2|ALT_INV_res[13]~61_combout\ <= NOT \m2|res[13]~61_combout\;
\m2|ALT_INV_res[13]~60_combout\ <= NOT \m2|res[13]~60_combout\;
\al_shift|al|au|f12|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f12|c~0_combout\;
\m2|ALT_INV_res[13]~59_combout\ <= NOT \m2|res[13]~59_combout\;
\m2|ALT_INV_res[13]~58_combout\ <= NOT \m2|res[13]~58_combout\;
\m2|ALT_INV_res[12]~57_combout\ <= NOT \m2|res[12]~57_combout\;
\m2|ALT_INV_res[14]~56_combout\ <= NOT \m2|res[14]~56_combout\;
\m2|ALT_INV_res[12]~55_combout\ <= NOT \m2|res[12]~55_combout\;
\m2|ALT_INV_res[12]~54_combout\ <= NOT \m2|res[12]~54_combout\;
\m2|ALT_INV_res[13]~53_combout\ <= NOT \m2|res[13]~53_combout\;
\m2|ALT_INV_res[11]~52_combout\ <= NOT \m2|res[11]~52_combout\;
\al_shift|al|au|f10|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f10|c~0_combout\;
\m2|ALT_INV_res[11]~51_combout\ <= NOT \m2|res[11]~51_combout\;
\m2|ALT_INV_res[10]~50_combout\ <= NOT \m2|res[10]~50_combout\;
\m2|ALT_INV_res[10]~49_combout\ <= NOT \m2|res[10]~49_combout\;
\m2|ALT_INV_res[10]~48_combout\ <= NOT \m2|res[10]~48_combout\;
\al_shift|al|au|f9|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f9|c~0_combout\;
\al_shift|al|au|f7|ALT_INV_c~3_combout\ <= NOT \al_shift|al|au|f7|c~3_combout\;
\al_shift|al|au|f7|ALT_INV_c~2_combout\ <= NOT \al_shift|al|au|f7|c~2_combout\;
\al_shift|al|au|f7|ALT_INV_c~1_combout\ <= NOT \al_shift|al|au|f7|c~1_combout\;
\m2|ALT_INV_res[10]~47_combout\ <= NOT \m2|res[10]~47_combout\;
\m2|ALT_INV_res[11]~46_combout\ <= NOT \m2|res[11]~46_combout\;
\m2|ALT_INV_res[9]~45_combout\ <= NOT \m2|res[9]~45_combout\;
\al_shift|al|au|f8|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f8|c~0_combout\;
\al_shift|al|au|f6|ALT_INV_c~2_combout\ <= NOT \al_shift|al|au|f6|c~2_combout\;
\al_shift|al|au|f6|ALT_INV_c~1_combout\ <= NOT \al_shift|al|au|f6|c~1_combout\;
\al_shift|al|au|f6|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f6|c~0_combout\;
\m2|ALT_INV_res[9]~44_combout\ <= NOT \m2|res[9]~44_combout\;
\m2|ALT_INV_res[10]~43_combout\ <= NOT \m2|res[10]~43_combout\;
\m2|ALT_INV_res[8]~42_combout\ <= NOT \m2|res[8]~42_combout\;
\al_shift|al|au|f7|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f7|c~0_combout\;
\m2|ALT_INV_res[8]~41_combout\ <= NOT \m2|res[8]~41_combout\;
\m2|ALT_INV_res[7]~40_combout\ <= NOT \m2|res[7]~40_combout\;
\m2|ALT_INV_res[7]~39_combout\ <= NOT \m2|res[7]~39_combout\;
\m2|ALT_INV_res[9]~38_combout\ <= NOT \m2|res[9]~38_combout\;
\m2|ALT_INV_res[7]~37_combout\ <= NOT \m2|res[7]~37_combout\;
\m2|ALT_INV_res[7]~36_combout\ <= NOT \m2|res[7]~36_combout\;
\m2|ALT_INV_res[6]~35_combout\ <= NOT \m2|res[6]~35_combout\;
\m2|ALT_INV_res[6]~34_combout\ <= NOT \m2|res[6]~34_combout\;
\m2|ALT_INV_res[8]~33_combout\ <= NOT \m2|res[8]~33_combout\;
\m2|ALT_INV_res[6]~32_combout\ <= NOT \m2|res[6]~32_combout\;
\al_shift|al|au|f5|ALT_INV_c~2_combout\ <= NOT \al_shift|al|au|f5|c~2_combout\;
\al_shift|al|au|f5|ALT_INV_c~1_combout\ <= NOT \al_shift|al|au|f5|c~1_combout\;
\al_shift|al|au|f5|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f5|c~0_combout\;
\m2|ALT_INV_res[6]~31_combout\ <= NOT \m2|res[6]~31_combout\;
\m2|ALT_INV_res[6]~30_combout\ <= NOT \m2|res[6]~30_combout\;
\m2|ALT_INV_res[5]~29_combout\ <= NOT \m2|res[5]~29_combout\;
\m2|ALT_INV_res[5]~28_combout\ <= NOT \m2|res[5]~28_combout\;
\m2|ALT_INV_res[7]~27_combout\ <= NOT \m2|res[7]~27_combout\;
\m2|ALT_INV_res[5]~26_combout\ <= NOT \m2|res[5]~26_combout\;
\al_shift|al|au|f4|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f4|c~0_combout\;
\m2|ALT_INV_res[5]~25_combout\ <= NOT \m2|res[5]~25_combout\;
\m2|ALT_INV_res[5]~24_combout\ <= NOT \m2|res[5]~24_combout\;
\m2|ALT_INV_res[4]~23_combout\ <= NOT \m2|res[4]~23_combout\;
\m2|ALT_INV_res[4]~22_combout\ <= NOT \m2|res[4]~22_combout\;
\m2|ALT_INV_res[4]~21_combout\ <= NOT \m2|res[4]~21_combout\;
\al_shift|al|au|f3|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f3|c~0_combout\;
\m2|ALT_INV_res[4]~20_combout\ <= NOT \m2|res[4]~20_combout\;
\m2|ALT_INV_res[3]~19_combout\ <= NOT \m2|res[3]~19_combout\;
\m2|ALT_INV_res[3]~18_combout\ <= NOT \m2|res[3]~18_combout\;
\m2|ALT_INV_res[3]~17_combout\ <= NOT \m2|res[3]~17_combout\;
\al_shift|al|au|f2|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f2|c~0_combout\;
\m2|ALT_INV_res[3]~16_combout\ <= NOT \m2|res[3]~16_combout\;
\m2|ALT_INV_res[4]~15_combout\ <= NOT \m2|res[4]~15_combout\;
\m2|ALT_INV_res[2]~14_combout\ <= NOT \m2|res[2]~14_combout\;
\al_shift|al|au|f1|ALT_INV_c~0_combout\ <= NOT \al_shift|al|au|f1|c~0_combout\;
\m2|ALT_INV_res[2]~13_combout\ <= NOT \m2|res[2]~13_combout\;
\m2|ALT_INV_res[1]~12_combout\ <= NOT \m2|res[1]~12_combout\;
\m2|ALT_INV_res[1]~11_combout\ <= NOT \m2|res[1]~11_combout\;
\m2|ALT_INV_res[1]~10_combout\ <= NOT \m2|res[1]~10_combout\;
\m2|ALT_INV_res[1]~9_combout\ <= NOT \m2|res[1]~9_combout\;
\m2|ALT_INV_res[1]~8_combout\ <= NOT \m2|res[1]~8_combout\;
\m2|ALT_INV_res[1]~7_combout\ <= NOT \m2|res[1]~7_combout\;
\m2|ALT_INV_res[1]~6_combout\ <= NOT \m2|res[1]~6_combout\;
\m2|ALT_INV_res[3]~5_combout\ <= NOT \m2|res[3]~5_combout\;
\m2|ALT_INV_res[0]~3_combout\ <= NOT \m2|res[0]~3_combout\;
\al_shift|al|lu|m4|ALT_INV_Mux15~0_combout\ <= NOT \al_shift|al|lu|m4|Mux15~0_combout\;
\m2|ALT_INV_res[0]~2_combout\ <= NOT \m2|res[0]~2_combout\;
\m2|ALT_INV_res[2]~1_combout\ <= NOT \m2|res[2]~1_combout\;
\m2|ALT_INV_res[14]~0_combout\ <= NOT \m2|res[14]~0_combout\;
\rf|b1|ALT_INV_Mux0~4_combout\ <= NOT \rf|b1|Mux0~4_combout\;
\rf|b1|ALT_INV_Mux0~3_combout\ <= NOT \rf|b1|Mux0~3_combout\;
\rf|b1|ALT_INV_Mux0~2_combout\ <= NOT \rf|b1|Mux0~2_combout\;
\rf|b1|ALT_INV_Mux0~1_combout\ <= NOT \rf|b1|Mux0~1_combout\;
\rf|b1|ALT_INV_Mux0~0_combout\ <= NOT \rf|b1|Mux0~0_combout\;
\rf|b1|ALT_INV_Mux1~4_combout\ <= NOT \rf|b1|Mux1~4_combout\;
\rf|b1|ALT_INV_Mux1~3_combout\ <= NOT \rf|b1|Mux1~3_combout\;
\rf|b1|ALT_INV_Mux1~2_combout\ <= NOT \rf|b1|Mux1~2_combout\;
\rf|b1|ALT_INV_Mux1~1_combout\ <= NOT \rf|b1|Mux1~1_combout\;
\rf|b1|ALT_INV_Mux1~0_combout\ <= NOT \rf|b1|Mux1~0_combout\;
\rf|b1|ALT_INV_Mux2~4_combout\ <= NOT \rf|b1|Mux2~4_combout\;
\rf|b1|ALT_INV_Mux2~3_combout\ <= NOT \rf|b1|Mux2~3_combout\;
\rf|b1|ALT_INV_Mux2~2_combout\ <= NOT \rf|b1|Mux2~2_combout\;
\rf|b1|ALT_INV_Mux2~1_combout\ <= NOT \rf|b1|Mux2~1_combout\;
\rf|b1|ALT_INV_Mux2~0_combout\ <= NOT \rf|b1|Mux2~0_combout\;
\rf|b1|ALT_INV_Mux3~4_combout\ <= NOT \rf|b1|Mux3~4_combout\;
\rf|b1|ALT_INV_Mux3~3_combout\ <= NOT \rf|b1|Mux3~3_combout\;
\rf|b1|ALT_INV_Mux3~2_combout\ <= NOT \rf|b1|Mux3~2_combout\;
\rf|b1|ALT_INV_Mux3~1_combout\ <= NOT \rf|b1|Mux3~1_combout\;
\rf|b1|ALT_INV_Mux3~0_combout\ <= NOT \rf|b1|Mux3~0_combout\;
\rf|b1|ALT_INV_Mux4~4_combout\ <= NOT \rf|b1|Mux4~4_combout\;
\rf|b1|ALT_INV_Mux4~3_combout\ <= NOT \rf|b1|Mux4~3_combout\;
\rf|b1|ALT_INV_Mux4~2_combout\ <= NOT \rf|b1|Mux4~2_combout\;
\rf|b1|ALT_INV_Mux4~1_combout\ <= NOT \rf|b1|Mux4~1_combout\;
\rf|b1|ALT_INV_Mux4~0_combout\ <= NOT \rf|b1|Mux4~0_combout\;
\rf|b1|ALT_INV_Mux5~4_combout\ <= NOT \rf|b1|Mux5~4_combout\;
\rf|b1|ALT_INV_Mux5~3_combout\ <= NOT \rf|b1|Mux5~3_combout\;
\rf|b1|ALT_INV_Mux5~2_combout\ <= NOT \rf|b1|Mux5~2_combout\;
\rf|b1|ALT_INV_Mux5~1_combout\ <= NOT \rf|b1|Mux5~1_combout\;
\rf|b1|ALT_INV_Mux5~0_combout\ <= NOT \rf|b1|Mux5~0_combout\;
\rf|b1|ALT_INV_Mux6~4_combout\ <= NOT \rf|b1|Mux6~4_combout\;
\rf|b1|ALT_INV_Mux6~3_combout\ <= NOT \rf|b1|Mux6~3_combout\;
\rf|b1|ALT_INV_Mux6~2_combout\ <= NOT \rf|b1|Mux6~2_combout\;
\rf|b1|ALT_INV_Mux6~1_combout\ <= NOT \rf|b1|Mux6~1_combout\;
\rf|b1|ALT_INV_Mux6~0_combout\ <= NOT \rf|b1|Mux6~0_combout\;
\rf|b1|ALT_INV_Mux7~4_combout\ <= NOT \rf|b1|Mux7~4_combout\;
\rf|b1|ALT_INV_Mux7~3_combout\ <= NOT \rf|b1|Mux7~3_combout\;
\rf|b1|ALT_INV_Mux7~2_combout\ <= NOT \rf|b1|Mux7~2_combout\;
\rf|b1|ALT_INV_Mux7~1_combout\ <= NOT \rf|b1|Mux7~1_combout\;
\rf|b1|ALT_INV_Mux7~0_combout\ <= NOT \rf|b1|Mux7~0_combout\;
\rf|b1|ALT_INV_Mux8~4_combout\ <= NOT \rf|b1|Mux8~4_combout\;
\rf|b1|ALT_INV_Mux8~3_combout\ <= NOT \rf|b1|Mux8~3_combout\;
\rf|b1|ALT_INV_Mux8~2_combout\ <= NOT \rf|b1|Mux8~2_combout\;
\rf|b1|ALT_INV_Mux8~1_combout\ <= NOT \rf|b1|Mux8~1_combout\;
\rf|b1|ALT_INV_Mux8~0_combout\ <= NOT \rf|b1|Mux8~0_combout\;
\rf|b1|ALT_INV_Mux9~4_combout\ <= NOT \rf|b1|Mux9~4_combout\;
\rf|b1|ALT_INV_Mux9~3_combout\ <= NOT \rf|b1|Mux9~3_combout\;
\rf|b1|ALT_INV_Mux9~2_combout\ <= NOT \rf|b1|Mux9~2_combout\;
\rf|b1|ALT_INV_Mux9~1_combout\ <= NOT \rf|b1|Mux9~1_combout\;
\rf|b1|ALT_INV_Mux9~0_combout\ <= NOT \rf|b1|Mux9~0_combout\;
\rf|b1|ALT_INV_Mux10~4_combout\ <= NOT \rf|b1|Mux10~4_combout\;
\rf|b1|ALT_INV_Mux10~3_combout\ <= NOT \rf|b1|Mux10~3_combout\;
\rf|b1|ALT_INV_Mux10~2_combout\ <= NOT \rf|b1|Mux10~2_combout\;
\rf|b1|ALT_INV_Mux10~1_combout\ <= NOT \rf|b1|Mux10~1_combout\;
\rf|b1|ALT_INV_Mux10~0_combout\ <= NOT \rf|b1|Mux10~0_combout\;
\rf|b1|ALT_INV_Mux11~4_combout\ <= NOT \rf|b1|Mux11~4_combout\;
\rf|b1|ALT_INV_Mux11~3_combout\ <= NOT \rf|b1|Mux11~3_combout\;
\rf|b1|ALT_INV_Mux11~2_combout\ <= NOT \rf|b1|Mux11~2_combout\;
\rf|b1|ALT_INV_Mux11~1_combout\ <= NOT \rf|b1|Mux11~1_combout\;
\rf|b1|ALT_INV_Mux11~0_combout\ <= NOT \rf|b1|Mux11~0_combout\;
\rf|b1|ALT_INV_Mux12~4_combout\ <= NOT \rf|b1|Mux12~4_combout\;
\rf|b1|ALT_INV_Mux12~3_combout\ <= NOT \rf|b1|Mux12~3_combout\;
\rf|b1|ALT_INV_Mux12~2_combout\ <= NOT \rf|b1|Mux12~2_combout\;
\rf|b1|ALT_INV_Mux12~1_combout\ <= NOT \rf|b1|Mux12~1_combout\;
\rf|b1|ALT_INV_Mux12~0_combout\ <= NOT \rf|b1|Mux12~0_combout\;
\rf|b1|ALT_INV_Mux13~4_combout\ <= NOT \rf|b1|Mux13~4_combout\;
\rf|b1|ALT_INV_Mux13~3_combout\ <= NOT \rf|b1|Mux13~3_combout\;
\rf|b1|ALT_INV_Mux13~2_combout\ <= NOT \rf|b1|Mux13~2_combout\;
\rf|b1|ALT_INV_Mux13~1_combout\ <= NOT \rf|b1|Mux13~1_combout\;
\rf|b1|ALT_INV_Mux13~0_combout\ <= NOT \rf|b1|Mux13~0_combout\;
\rf|b1|ALT_INV_Mux14~4_combout\ <= NOT \rf|b1|Mux14~4_combout\;
\rf|b1|ALT_INV_Mux14~3_combout\ <= NOT \rf|b1|Mux14~3_combout\;
\rf|b1|ALT_INV_Mux14~2_combout\ <= NOT \rf|b1|Mux14~2_combout\;
\rf|b1|ALT_INV_Mux14~1_combout\ <= NOT \rf|b1|Mux14~1_combout\;
\rf|b1|ALT_INV_Mux14~0_combout\ <= NOT \rf|b1|Mux14~0_combout\;
\rf|b1|ALT_INV_Mux15~4_combout\ <= NOT \rf|b1|Mux15~4_combout\;
\rf|b1|ALT_INV_Mux15~3_combout\ <= NOT \rf|b1|Mux15~3_combout\;
\rf|b1|ALT_INV_Mux15~2_combout\ <= NOT \rf|b1|Mux15~2_combout\;
\rf|b1|ALT_INV_Mux15~1_combout\ <= NOT \rf|b1|Mux15~1_combout\;
\rf|b1|ALT_INV_Mux15~0_combout\ <= NOT \rf|b1|Mux15~0_combout\;
\rf|a1|ALT_INV_Mux0~4_combout\ <= NOT \rf|a1|Mux0~4_combout\;
\rf|a1|ALT_INV_Mux0~3_combout\ <= NOT \rf|a1|Mux0~3_combout\;
\rf|reg15|ALT_INV_q\(15) <= NOT \rf|reg15|q\(15);
\rf|reg11|ALT_INV_q\(15) <= NOT \rf|reg11|q\(15);
\rf|reg7|ALT_INV_q\(15) <= NOT \rf|reg7|q\(15);
\rf|reg3|ALT_INV_q\(15) <= NOT \rf|reg3|q\(15);
\rf|a1|ALT_INV_Mux0~2_combout\ <= NOT \rf|a1|Mux0~2_combout\;
\rf|reg14|ALT_INV_q\(15) <= NOT \rf|reg14|q\(15);
\rf|reg10|ALT_INV_q\(15) <= NOT \rf|reg10|q\(15);
\rf|reg6|ALT_INV_q\(15) <= NOT \rf|reg6|q\(15);
\rf|reg2|ALT_INV_q\(15) <= NOT \rf|reg2|q\(15);
\rf|a1|ALT_INV_Mux0~1_combout\ <= NOT \rf|a1|Mux0~1_combout\;
\rf|reg13|ALT_INV_q\(15) <= NOT \rf|reg13|q\(15);
\rf|reg9|ALT_INV_q\(15) <= NOT \rf|reg9|q\(15);
\rf|reg5|ALT_INV_q\(15) <= NOT \rf|reg5|q\(15);
\rf|reg1|ALT_INV_q\(15) <= NOT \rf|reg1|q\(15);
\rf|a1|ALT_INV_Mux0~0_combout\ <= NOT \rf|a1|Mux0~0_combout\;
\rf|reg12|ALT_INV_q\(15) <= NOT \rf|reg12|q\(15);
\rf|reg8|ALT_INV_q\(15) <= NOT \rf|reg8|q\(15);
\rf|reg4|ALT_INV_q\(15) <= NOT \rf|reg4|q\(15);
\rf|reg0|ALT_INV_q\(15) <= NOT \rf|reg0|q\(15);
\rf|a1|ALT_INV_Mux1~4_combout\ <= NOT \rf|a1|Mux1~4_combout\;
\rf|a1|ALT_INV_Mux1~3_combout\ <= NOT \rf|a1|Mux1~3_combout\;
\rf|reg15|ALT_INV_q\(14) <= NOT \rf|reg15|q\(14);
\rf|reg14|ALT_INV_q\(14) <= NOT \rf|reg14|q\(14);
\rf|reg13|ALT_INV_q\(14) <= NOT \rf|reg13|q\(14);
\rf|reg12|ALT_INV_q\(14) <= NOT \rf|reg12|q\(14);
\rf|a1|ALT_INV_Mux1~2_combout\ <= NOT \rf|a1|Mux1~2_combout\;
\rf|reg11|ALT_INV_q\(14) <= NOT \rf|reg11|q\(14);
\rf|reg10|ALT_INV_q\(14) <= NOT \rf|reg10|q\(14);
\rf|reg9|ALT_INV_q\(14) <= NOT \rf|reg9|q\(14);
\rf|reg8|ALT_INV_q\(14) <= NOT \rf|reg8|q\(14);
\rf|a1|ALT_INV_Mux1~1_combout\ <= NOT \rf|a1|Mux1~1_combout\;
\rf|reg7|ALT_INV_q\(14) <= NOT \rf|reg7|q\(14);
\rf|reg6|ALT_INV_q\(14) <= NOT \rf|reg6|q\(14);
\rf|reg5|ALT_INV_q\(14) <= NOT \rf|reg5|q\(14);
\rf|reg4|ALT_INV_q\(14) <= NOT \rf|reg4|q\(14);
\rf|a1|ALT_INV_Mux1~0_combout\ <= NOT \rf|a1|Mux1~0_combout\;
\rf|reg3|ALT_INV_q\(14) <= NOT \rf|reg3|q\(14);
\rf|reg2|ALT_INV_q\(14) <= NOT \rf|reg2|q\(14);
\rf|reg1|ALT_INV_q\(14) <= NOT \rf|reg1|q\(14);
\rf|reg0|ALT_INV_q\(14) <= NOT \rf|reg0|q\(14);
\rf|a1|ALT_INV_Mux2~4_combout\ <= NOT \rf|a1|Mux2~4_combout\;
\rf|a1|ALT_INV_Mux2~3_combout\ <= NOT \rf|a1|Mux2~3_combout\;
\rf|reg15|ALT_INV_q\(13) <= NOT \rf|reg15|q\(13);
\rf|reg11|ALT_INV_q\(13) <= NOT \rf|reg11|q\(13);
\rf|reg7|ALT_INV_q\(13) <= NOT \rf|reg7|q\(13);
\rf|reg3|ALT_INV_q\(13) <= NOT \rf|reg3|q\(13);
\rf|a1|ALT_INV_Mux2~2_combout\ <= NOT \rf|a1|Mux2~2_combout\;
\rf|reg14|ALT_INV_q\(13) <= NOT \rf|reg14|q\(13);
\rf|reg10|ALT_INV_q\(13) <= NOT \rf|reg10|q\(13);
\rf|reg6|ALT_INV_q\(13) <= NOT \rf|reg6|q\(13);
\rf|reg2|ALT_INV_q\(13) <= NOT \rf|reg2|q\(13);
\rf|a1|ALT_INV_Mux2~1_combout\ <= NOT \rf|a1|Mux2~1_combout\;
\rf|reg13|ALT_INV_q\(13) <= NOT \rf|reg13|q\(13);
\rf|reg9|ALT_INV_q\(13) <= NOT \rf|reg9|q\(13);
\rf|reg5|ALT_INV_q\(13) <= NOT \rf|reg5|q\(13);
\rf|reg1|ALT_INV_q\(13) <= NOT \rf|reg1|q\(13);
\rf|a1|ALT_INV_Mux2~0_combout\ <= NOT \rf|a1|Mux2~0_combout\;
\rf|reg12|ALT_INV_q\(13) <= NOT \rf|reg12|q\(13);
\rf|reg8|ALT_INV_q\(13) <= NOT \rf|reg8|q\(13);
\rf|reg4|ALT_INV_q\(13) <= NOT \rf|reg4|q\(13);
\rf|reg0|ALT_INV_q\(13) <= NOT \rf|reg0|q\(13);
\rf|a1|ALT_INV_Mux3~4_combout\ <= NOT \rf|a1|Mux3~4_combout\;
\rf|a1|ALT_INV_Mux3~3_combout\ <= NOT \rf|a1|Mux3~3_combout\;
\rf|reg15|ALT_INV_q\(12) <= NOT \rf|reg15|q\(12);
\rf|reg14|ALT_INV_q\(12) <= NOT \rf|reg14|q\(12);
\rf|reg13|ALT_INV_q\(12) <= NOT \rf|reg13|q\(12);
\rf|reg12|ALT_INV_q\(12) <= NOT \rf|reg12|q\(12);
\rf|a1|ALT_INV_Mux3~2_combout\ <= NOT \rf|a1|Mux3~2_combout\;
\rf|reg11|ALT_INV_q\(12) <= NOT \rf|reg11|q\(12);
\rf|reg10|ALT_INV_q\(12) <= NOT \rf|reg10|q\(12);
\rf|reg9|ALT_INV_q\(12) <= NOT \rf|reg9|q\(12);
\rf|reg8|ALT_INV_q\(12) <= NOT \rf|reg8|q\(12);
\rf|a1|ALT_INV_Mux3~1_combout\ <= NOT \rf|a1|Mux3~1_combout\;
\rf|reg7|ALT_INV_q\(12) <= NOT \rf|reg7|q\(12);
\rf|reg6|ALT_INV_q\(12) <= NOT \rf|reg6|q\(12);
\rf|reg5|ALT_INV_q\(12) <= NOT \rf|reg5|q\(12);
\rf|reg4|ALT_INV_q\(12) <= NOT \rf|reg4|q\(12);
\rf|a1|ALT_INV_Mux3~0_combout\ <= NOT \rf|a1|Mux3~0_combout\;
\rf|reg3|ALT_INV_q\(12) <= NOT \rf|reg3|q\(12);
\rf|reg2|ALT_INV_q\(12) <= NOT \rf|reg2|q\(12);
\rf|reg1|ALT_INV_q\(12) <= NOT \rf|reg1|q\(12);
\rf|reg0|ALT_INV_q\(12) <= NOT \rf|reg0|q\(12);
\rf|a1|ALT_INV_Mux4~4_combout\ <= NOT \rf|a1|Mux4~4_combout\;
\rf|a1|ALT_INV_Mux4~3_combout\ <= NOT \rf|a1|Mux4~3_combout\;
\rf|reg15|ALT_INV_q\(11) <= NOT \rf|reg15|q\(11);
\rf|reg11|ALT_INV_q\(11) <= NOT \rf|reg11|q\(11);
\rf|reg7|ALT_INV_q\(11) <= NOT \rf|reg7|q\(11);
\rf|reg3|ALT_INV_q\(11) <= NOT \rf|reg3|q\(11);
\rf|a1|ALT_INV_Mux4~2_combout\ <= NOT \rf|a1|Mux4~2_combout\;
\rf|reg14|ALT_INV_q\(11) <= NOT \rf|reg14|q\(11);
\rf|reg10|ALT_INV_q\(11) <= NOT \rf|reg10|q\(11);
\rf|reg6|ALT_INV_q\(11) <= NOT \rf|reg6|q\(11);
\rf|reg2|ALT_INV_q\(11) <= NOT \rf|reg2|q\(11);
\rf|a1|ALT_INV_Mux4~1_combout\ <= NOT \rf|a1|Mux4~1_combout\;
\rf|reg13|ALT_INV_q\(11) <= NOT \rf|reg13|q\(11);
\rf|reg9|ALT_INV_q\(11) <= NOT \rf|reg9|q\(11);
\rf|reg5|ALT_INV_q\(11) <= NOT \rf|reg5|q\(11);
\rf|reg1|ALT_INV_q\(11) <= NOT \rf|reg1|q\(11);
\rf|a1|ALT_INV_Mux4~0_combout\ <= NOT \rf|a1|Mux4~0_combout\;
\rf|reg12|ALT_INV_q\(11) <= NOT \rf|reg12|q\(11);
\rf|reg8|ALT_INV_q\(11) <= NOT \rf|reg8|q\(11);
\rf|reg4|ALT_INV_q\(11) <= NOT \rf|reg4|q\(11);
\rf|reg0|ALT_INV_q\(11) <= NOT \rf|reg0|q\(11);
\rf|a1|ALT_INV_Mux5~4_combout\ <= NOT \rf|a1|Mux5~4_combout\;
\rf|a1|ALT_INV_Mux5~3_combout\ <= NOT \rf|a1|Mux5~3_combout\;
\rf|reg15|ALT_INV_q\(10) <= NOT \rf|reg15|q\(10);
\rf|reg14|ALT_INV_q\(10) <= NOT \rf|reg14|q\(10);
\rf|reg13|ALT_INV_q\(10) <= NOT \rf|reg13|q\(10);
\rf|reg12|ALT_INV_q\(10) <= NOT \rf|reg12|q\(10);
\rf|a1|ALT_INV_Mux5~2_combout\ <= NOT \rf|a1|Mux5~2_combout\;
\rf|reg11|ALT_INV_q\(10) <= NOT \rf|reg11|q\(10);
\rf|reg10|ALT_INV_q\(10) <= NOT \rf|reg10|q\(10);
\rf|reg9|ALT_INV_q\(10) <= NOT \rf|reg9|q\(10);
\rf|reg8|ALT_INV_q\(10) <= NOT \rf|reg8|q\(10);
\rf|a1|ALT_INV_Mux5~1_combout\ <= NOT \rf|a1|Mux5~1_combout\;
\rf|reg7|ALT_INV_q\(10) <= NOT \rf|reg7|q\(10);
\rf|reg6|ALT_INV_q\(10) <= NOT \rf|reg6|q\(10);
\rf|reg5|ALT_INV_q\(10) <= NOT \rf|reg5|q\(10);
\rf|reg4|ALT_INV_q\(10) <= NOT \rf|reg4|q\(10);
\rf|a1|ALT_INV_Mux5~0_combout\ <= NOT \rf|a1|Mux5~0_combout\;
\rf|reg3|ALT_INV_q\(10) <= NOT \rf|reg3|q\(10);
\rf|reg2|ALT_INV_q\(10) <= NOT \rf|reg2|q\(10);
\rf|reg1|ALT_INV_q\(10) <= NOT \rf|reg1|q\(10);
\rf|reg0|ALT_INV_q\(10) <= NOT \rf|reg0|q\(10);
\rf|a1|ALT_INV_Mux6~4_combout\ <= NOT \rf|a1|Mux6~4_combout\;
\rf|a1|ALT_INV_Mux6~3_combout\ <= NOT \rf|a1|Mux6~3_combout\;
\rf|reg15|ALT_INV_q\(9) <= NOT \rf|reg15|q\(9);
\rf|reg11|ALT_INV_q\(9) <= NOT \rf|reg11|q\(9);
\rf|reg7|ALT_INV_q\(9) <= NOT \rf|reg7|q\(9);
\rf|reg3|ALT_INV_q\(9) <= NOT \rf|reg3|q\(9);
\rf|a1|ALT_INV_Mux6~2_combout\ <= NOT \rf|a1|Mux6~2_combout\;
\rf|reg14|ALT_INV_q\(9) <= NOT \rf|reg14|q\(9);
\rf|reg10|ALT_INV_q\(9) <= NOT \rf|reg10|q\(9);
\rf|reg6|ALT_INV_q\(9) <= NOT \rf|reg6|q\(9);
\rf|reg2|ALT_INV_q\(9) <= NOT \rf|reg2|q\(9);
\rf|a1|ALT_INV_Mux6~1_combout\ <= NOT \rf|a1|Mux6~1_combout\;
\rf|reg13|ALT_INV_q\(9) <= NOT \rf|reg13|q\(9);
\rf|reg9|ALT_INV_q\(9) <= NOT \rf|reg9|q\(9);
\rf|reg5|ALT_INV_q\(9) <= NOT \rf|reg5|q\(9);
\rf|reg1|ALT_INV_q\(9) <= NOT \rf|reg1|q\(9);
\rf|a1|ALT_INV_Mux6~0_combout\ <= NOT \rf|a1|Mux6~0_combout\;
\rf|reg12|ALT_INV_q\(9) <= NOT \rf|reg12|q\(9);
\rf|reg8|ALT_INV_q\(9) <= NOT \rf|reg8|q\(9);
\rf|reg4|ALT_INV_q\(9) <= NOT \rf|reg4|q\(9);
\rf|reg0|ALT_INV_q\(9) <= NOT \rf|reg0|q\(9);
\rf|a1|ALT_INV_Mux7~4_combout\ <= NOT \rf|a1|Mux7~4_combout\;
\rf|a1|ALT_INV_Mux7~3_combout\ <= NOT \rf|a1|Mux7~3_combout\;
\rf|reg15|ALT_INV_q\(8) <= NOT \rf|reg15|q\(8);
\rf|reg14|ALT_INV_q\(8) <= NOT \rf|reg14|q\(8);
\rf|reg13|ALT_INV_q\(8) <= NOT \rf|reg13|q\(8);
\rf|reg12|ALT_INV_q\(8) <= NOT \rf|reg12|q\(8);
\rf|a1|ALT_INV_Mux7~2_combout\ <= NOT \rf|a1|Mux7~2_combout\;
\rf|reg11|ALT_INV_q\(8) <= NOT \rf|reg11|q\(8);
\rf|reg10|ALT_INV_q\(8) <= NOT \rf|reg10|q\(8);
\rf|reg9|ALT_INV_q\(8) <= NOT \rf|reg9|q\(8);
\rf|reg8|ALT_INV_q\(8) <= NOT \rf|reg8|q\(8);
\rf|a1|ALT_INV_Mux7~1_combout\ <= NOT \rf|a1|Mux7~1_combout\;
\rf|reg7|ALT_INV_q\(8) <= NOT \rf|reg7|q\(8);
\rf|reg6|ALT_INV_q\(8) <= NOT \rf|reg6|q\(8);
\rf|reg5|ALT_INV_q\(8) <= NOT \rf|reg5|q\(8);
\rf|reg4|ALT_INV_q\(8) <= NOT \rf|reg4|q\(8);
\rf|a1|ALT_INV_Mux7~0_combout\ <= NOT \rf|a1|Mux7~0_combout\;
\rf|reg3|ALT_INV_q\(8) <= NOT \rf|reg3|q\(8);
\rf|reg2|ALT_INV_q\(8) <= NOT \rf|reg2|q\(8);
\rf|reg1|ALT_INV_q\(8) <= NOT \rf|reg1|q\(8);
\rf|reg0|ALT_INV_q\(8) <= NOT \rf|reg0|q\(8);
\rf|a1|ALT_INV_Mux8~4_combout\ <= NOT \rf|a1|Mux8~4_combout\;
\rf|a1|ALT_INV_Mux8~3_combout\ <= NOT \rf|a1|Mux8~3_combout\;
\rf|reg15|ALT_INV_q\(7) <= NOT \rf|reg15|q\(7);
\rf|reg11|ALT_INV_q\(7) <= NOT \rf|reg11|q\(7);
\rf|reg7|ALT_INV_q\(7) <= NOT \rf|reg7|q\(7);
\rf|reg3|ALT_INV_q\(7) <= NOT \rf|reg3|q\(7);
\rf|a1|ALT_INV_Mux8~2_combout\ <= NOT \rf|a1|Mux8~2_combout\;
\rf|reg14|ALT_INV_q\(7) <= NOT \rf|reg14|q\(7);
\rf|reg10|ALT_INV_q\(7) <= NOT \rf|reg10|q\(7);
\rf|reg6|ALT_INV_q\(7) <= NOT \rf|reg6|q\(7);
\rf|reg2|ALT_INV_q\(7) <= NOT \rf|reg2|q\(7);
\rf|a1|ALT_INV_Mux8~1_combout\ <= NOT \rf|a1|Mux8~1_combout\;
\rf|reg13|ALT_INV_q\(7) <= NOT \rf|reg13|q\(7);
\rf|reg9|ALT_INV_q\(7) <= NOT \rf|reg9|q\(7);
\rf|reg5|ALT_INV_q\(7) <= NOT \rf|reg5|q\(7);
\rf|reg1|ALT_INV_q\(7) <= NOT \rf|reg1|q\(7);
\rf|a1|ALT_INV_Mux8~0_combout\ <= NOT \rf|a1|Mux8~0_combout\;
\rf|reg12|ALT_INV_q\(7) <= NOT \rf|reg12|q\(7);
\rf|reg8|ALT_INV_q\(7) <= NOT \rf|reg8|q\(7);
\rf|reg4|ALT_INV_q\(7) <= NOT \rf|reg4|q\(7);
\rf|reg0|ALT_INV_q\(7) <= NOT \rf|reg0|q\(7);
\rf|a1|ALT_INV_Mux9~4_combout\ <= NOT \rf|a1|Mux9~4_combout\;
\rf|a1|ALT_INV_Mux9~3_combout\ <= NOT \rf|a1|Mux9~3_combout\;
\rf|reg15|ALT_INV_q\(6) <= NOT \rf|reg15|q\(6);
\rf|reg14|ALT_INV_q\(6) <= NOT \rf|reg14|q\(6);
\rf|reg13|ALT_INV_q\(6) <= NOT \rf|reg13|q\(6);
\rf|reg12|ALT_INV_q\(6) <= NOT \rf|reg12|q\(6);
\rf|a1|ALT_INV_Mux9~2_combout\ <= NOT \rf|a1|Mux9~2_combout\;
\rf|reg11|ALT_INV_q\(6) <= NOT \rf|reg11|q\(6);
\rf|reg10|ALT_INV_q\(6) <= NOT \rf|reg10|q\(6);
\rf|reg9|ALT_INV_q\(6) <= NOT \rf|reg9|q\(6);
\rf|reg8|ALT_INV_q\(6) <= NOT \rf|reg8|q\(6);
\rf|a1|ALT_INV_Mux9~1_combout\ <= NOT \rf|a1|Mux9~1_combout\;
\rf|reg7|ALT_INV_q\(6) <= NOT \rf|reg7|q\(6);
\rf|reg6|ALT_INV_q\(6) <= NOT \rf|reg6|q\(6);
\rf|reg5|ALT_INV_q\(6) <= NOT \rf|reg5|q\(6);
\rf|reg4|ALT_INV_q\(6) <= NOT \rf|reg4|q\(6);
\rf|a1|ALT_INV_Mux9~0_combout\ <= NOT \rf|a1|Mux9~0_combout\;
\rf|reg3|ALT_INV_q\(6) <= NOT \rf|reg3|q\(6);
\rf|reg2|ALT_INV_q\(6) <= NOT \rf|reg2|q\(6);
\rf|reg1|ALT_INV_q\(6) <= NOT \rf|reg1|q\(6);
\rf|reg0|ALT_INV_q\(6) <= NOT \rf|reg0|q\(6);
\rf|a1|ALT_INV_Mux10~4_combout\ <= NOT \rf|a1|Mux10~4_combout\;
\rf|a1|ALT_INV_Mux10~3_combout\ <= NOT \rf|a1|Mux10~3_combout\;
\rf|reg15|ALT_INV_q\(5) <= NOT \rf|reg15|q\(5);
\rf|reg11|ALT_INV_q\(5) <= NOT \rf|reg11|q\(5);
\rf|reg7|ALT_INV_q\(5) <= NOT \rf|reg7|q\(5);
\rf|reg3|ALT_INV_q\(5) <= NOT \rf|reg3|q\(5);
\rf|a1|ALT_INV_Mux10~2_combout\ <= NOT \rf|a1|Mux10~2_combout\;
\rf|reg14|ALT_INV_q\(5) <= NOT \rf|reg14|q\(5);
\rf|reg10|ALT_INV_q\(5) <= NOT \rf|reg10|q\(5);
\rf|reg6|ALT_INV_q\(5) <= NOT \rf|reg6|q\(5);
\rf|reg2|ALT_INV_q\(5) <= NOT \rf|reg2|q\(5);
\rf|a1|ALT_INV_Mux10~1_combout\ <= NOT \rf|a1|Mux10~1_combout\;
\rf|reg13|ALT_INV_q\(5) <= NOT \rf|reg13|q\(5);
\rf|reg9|ALT_INV_q\(5) <= NOT \rf|reg9|q\(5);
\rf|reg5|ALT_INV_q\(5) <= NOT \rf|reg5|q\(5);
\rf|reg1|ALT_INV_q\(5) <= NOT \rf|reg1|q\(5);
\rf|a1|ALT_INV_Mux10~0_combout\ <= NOT \rf|a1|Mux10~0_combout\;
\rf|reg12|ALT_INV_q\(5) <= NOT \rf|reg12|q\(5);
\rf|reg8|ALT_INV_q\(5) <= NOT \rf|reg8|q\(5);
\rf|reg4|ALT_INV_q\(5) <= NOT \rf|reg4|q\(5);
\rf|reg0|ALT_INV_q\(5) <= NOT \rf|reg0|q\(5);
\rf|a1|ALT_INV_Mux11~4_combout\ <= NOT \rf|a1|Mux11~4_combout\;
\rf|a1|ALT_INV_Mux11~3_combout\ <= NOT \rf|a1|Mux11~3_combout\;
\rf|reg15|ALT_INV_q\(4) <= NOT \rf|reg15|q\(4);
\rf|reg14|ALT_INV_q\(4) <= NOT \rf|reg14|q\(4);
\rf|reg13|ALT_INV_q\(4) <= NOT \rf|reg13|q\(4);
\rf|reg12|ALT_INV_q\(4) <= NOT \rf|reg12|q\(4);
\rf|a1|ALT_INV_Mux11~2_combout\ <= NOT \rf|a1|Mux11~2_combout\;
\rf|reg11|ALT_INV_q\(4) <= NOT \rf|reg11|q\(4);
\rf|reg10|ALT_INV_q\(4) <= NOT \rf|reg10|q\(4);
\rf|reg9|ALT_INV_q\(4) <= NOT \rf|reg9|q\(4);
\rf|reg8|ALT_INV_q\(4) <= NOT \rf|reg8|q\(4);
\rf|a1|ALT_INV_Mux11~1_combout\ <= NOT \rf|a1|Mux11~1_combout\;
\rf|reg7|ALT_INV_q\(4) <= NOT \rf|reg7|q\(4);
\rf|reg6|ALT_INV_q\(4) <= NOT \rf|reg6|q\(4);
\rf|reg5|ALT_INV_q\(4) <= NOT \rf|reg5|q\(4);
\rf|reg4|ALT_INV_q\(4) <= NOT \rf|reg4|q\(4);
\rf|a1|ALT_INV_Mux11~0_combout\ <= NOT \rf|a1|Mux11~0_combout\;
\rf|reg3|ALT_INV_q\(4) <= NOT \rf|reg3|q\(4);
\rf|reg2|ALT_INV_q\(4) <= NOT \rf|reg2|q\(4);
\rf|reg1|ALT_INV_q\(4) <= NOT \rf|reg1|q\(4);
\rf|reg0|ALT_INV_q\(4) <= NOT \rf|reg0|q\(4);
\rf|a1|ALT_INV_Mux12~4_combout\ <= NOT \rf|a1|Mux12~4_combout\;
\rf|a1|ALT_INV_Mux12~3_combout\ <= NOT \rf|a1|Mux12~3_combout\;
\rf|reg15|ALT_INV_q\(3) <= NOT \rf|reg15|q\(3);
\rf|reg11|ALT_INV_q\(3) <= NOT \rf|reg11|q\(3);
\rf|reg7|ALT_INV_q\(3) <= NOT \rf|reg7|q\(3);
\rf|reg3|ALT_INV_q\(3) <= NOT \rf|reg3|q\(3);
\rf|a1|ALT_INV_Mux12~2_combout\ <= NOT \rf|a1|Mux12~2_combout\;
\rf|reg14|ALT_INV_q\(3) <= NOT \rf|reg14|q\(3);
\rf|reg10|ALT_INV_q\(3) <= NOT \rf|reg10|q\(3);
\rf|reg6|ALT_INV_q\(3) <= NOT \rf|reg6|q\(3);
\rf|reg2|ALT_INV_q\(3) <= NOT \rf|reg2|q\(3);
\rf|a1|ALT_INV_Mux12~1_combout\ <= NOT \rf|a1|Mux12~1_combout\;
\rf|reg13|ALT_INV_q\(3) <= NOT \rf|reg13|q\(3);
\rf|reg9|ALT_INV_q\(3) <= NOT \rf|reg9|q\(3);
\rf|reg5|ALT_INV_q\(3) <= NOT \rf|reg5|q\(3);
\rf|reg1|ALT_INV_q\(3) <= NOT \rf|reg1|q\(3);
\rf|a1|ALT_INV_Mux12~0_combout\ <= NOT \rf|a1|Mux12~0_combout\;
\rf|reg12|ALT_INV_q\(3) <= NOT \rf|reg12|q\(3);
\rf|reg8|ALT_INV_q\(3) <= NOT \rf|reg8|q\(3);
\rf|reg4|ALT_INV_q\(3) <= NOT \rf|reg4|q\(3);
\rf|reg0|ALT_INV_q\(3) <= NOT \rf|reg0|q\(3);
\rf|a1|ALT_INV_Mux13~4_combout\ <= NOT \rf|a1|Mux13~4_combout\;
\rf|a1|ALT_INV_Mux13~3_combout\ <= NOT \rf|a1|Mux13~3_combout\;
\rf|reg15|ALT_INV_q\(2) <= NOT \rf|reg15|q\(2);
\rf|reg14|ALT_INV_q\(2) <= NOT \rf|reg14|q\(2);
\rf|reg13|ALT_INV_q\(2) <= NOT \rf|reg13|q\(2);
\rf|reg12|ALT_INV_q\(2) <= NOT \rf|reg12|q\(2);
\rf|a1|ALT_INV_Mux13~2_combout\ <= NOT \rf|a1|Mux13~2_combout\;
\rf|reg11|ALT_INV_q\(2) <= NOT \rf|reg11|q\(2);
\rf|reg10|ALT_INV_q\(2) <= NOT \rf|reg10|q\(2);
\rf|reg9|ALT_INV_q\(2) <= NOT \rf|reg9|q\(2);
\rf|reg8|ALT_INV_q\(2) <= NOT \rf|reg8|q\(2);
\rf|a1|ALT_INV_Mux13~1_combout\ <= NOT \rf|a1|Mux13~1_combout\;
\rf|reg7|ALT_INV_q\(2) <= NOT \rf|reg7|q\(2);
\rf|reg6|ALT_INV_q\(2) <= NOT \rf|reg6|q\(2);
\rf|reg5|ALT_INV_q\(2) <= NOT \rf|reg5|q\(2);
\rf|reg4|ALT_INV_q\(2) <= NOT \rf|reg4|q\(2);
\rf|a1|ALT_INV_Mux13~0_combout\ <= NOT \rf|a1|Mux13~0_combout\;
\rf|reg3|ALT_INV_q\(2) <= NOT \rf|reg3|q\(2);
\rf|reg2|ALT_INV_q\(2) <= NOT \rf|reg2|q\(2);
\rf|reg1|ALT_INV_q\(2) <= NOT \rf|reg1|q\(2);
\rf|reg0|ALT_INV_q\(2) <= NOT \rf|reg0|q\(2);
\rf|a1|ALT_INV_Mux14~4_combout\ <= NOT \rf|a1|Mux14~4_combout\;
\rf|a1|ALT_INV_Mux14~3_combout\ <= NOT \rf|a1|Mux14~3_combout\;
\rf|reg15|ALT_INV_q\(1) <= NOT \rf|reg15|q\(1);
\rf|reg11|ALT_INV_q\(1) <= NOT \rf|reg11|q\(1);
\rf|reg7|ALT_INV_q\(1) <= NOT \rf|reg7|q\(1);
\rf|reg3|ALT_INV_q\(1) <= NOT \rf|reg3|q\(1);
\rf|a1|ALT_INV_Mux14~2_combout\ <= NOT \rf|a1|Mux14~2_combout\;
\rf|reg14|ALT_INV_q\(1) <= NOT \rf|reg14|q\(1);
\rf|reg10|ALT_INV_q\(1) <= NOT \rf|reg10|q\(1);
\rf|reg6|ALT_INV_q\(1) <= NOT \rf|reg6|q\(1);
\rf|reg2|ALT_INV_q\(1) <= NOT \rf|reg2|q\(1);
\rf|a1|ALT_INV_Mux14~1_combout\ <= NOT \rf|a1|Mux14~1_combout\;
\rf|reg13|ALT_INV_q\(1) <= NOT \rf|reg13|q\(1);
\rf|reg9|ALT_INV_q\(1) <= NOT \rf|reg9|q\(1);
\rf|reg5|ALT_INV_q\(1) <= NOT \rf|reg5|q\(1);
\rf|reg1|ALT_INV_q\(1) <= NOT \rf|reg1|q\(1);
\rf|a1|ALT_INV_Mux14~0_combout\ <= NOT \rf|a1|Mux14~0_combout\;
\rf|reg12|ALT_INV_q\(1) <= NOT \rf|reg12|q\(1);
\rf|reg8|ALT_INV_q\(1) <= NOT \rf|reg8|q\(1);
\rf|reg4|ALT_INV_q\(1) <= NOT \rf|reg4|q\(1);
\rf|reg0|ALT_INV_q\(1) <= NOT \rf|reg0|q\(1);
\rf|a1|ALT_INV_Mux15~4_combout\ <= NOT \rf|a1|Mux15~4_combout\;
\rf|a1|ALT_INV_Mux15~3_combout\ <= NOT \rf|a1|Mux15~3_combout\;
\rf|reg15|ALT_INV_q\(0) <= NOT \rf|reg15|q\(0);
\rf|reg14|ALT_INV_q\(0) <= NOT \rf|reg14|q\(0);
\rf|reg13|ALT_INV_q\(0) <= NOT \rf|reg13|q\(0);
\rf|reg12|ALT_INV_q\(0) <= NOT \rf|reg12|q\(0);
\rf|a1|ALT_INV_Mux15~2_combout\ <= NOT \rf|a1|Mux15~2_combout\;
\rf|reg11|ALT_INV_q\(0) <= NOT \rf|reg11|q\(0);
\rf|reg10|ALT_INV_q\(0) <= NOT \rf|reg10|q\(0);
\rf|reg9|ALT_INV_q\(0) <= NOT \rf|reg9|q\(0);
\rf|reg8|ALT_INV_q\(0) <= NOT \rf|reg8|q\(0);
\rf|a1|ALT_INV_Mux15~1_combout\ <= NOT \rf|a1|Mux15~1_combout\;
\rf|reg7|ALT_INV_q\(0) <= NOT \rf|reg7|q\(0);
\rf|reg6|ALT_INV_q\(0) <= NOT \rf|reg6|q\(0);
\rf|reg5|ALT_INV_q\(0) <= NOT \rf|reg5|q\(0);
\rf|reg4|ALT_INV_q\(0) <= NOT \rf|reg4|q\(0);
\rf|a1|ALT_INV_Mux15~0_combout\ <= NOT \rf|a1|Mux15~0_combout\;
\rf|reg3|ALT_INV_q\(0) <= NOT \rf|reg3|q\(0);
\rf|reg2|ALT_INV_q\(0) <= NOT \rf|reg2|q\(0);
\rf|reg1|ALT_INV_q\(0) <= NOT \rf|reg1|q\(0);
\rf|reg0|ALT_INV_q\(0) <= NOT \rf|reg0|q\(0);
\m2|ALT_INV_res[2]~84_combout\ <= NOT \m2|res[2]~84_combout\;
\m2|ALT_INV_res[8]~80_combout\ <= NOT \m2|res[8]~80_combout\;
\m2|ALT_INV_res[9]~76_combout\ <= NOT \m2|res[9]~76_combout\;
\m2|ALT_INV_res[11]~72_combout\ <= NOT \m2|res[11]~72_combout\;
\m2|ALT_INV_res[12]~68_combout\ <= NOT \m2|res[12]~68_combout\;
\al_shift|m2|ALT_INV_res[15]~3_combout\ <= NOT \al_shift|m2|res[15]~3_combout\;
\al_shift|al|au|ALT_INV_Add0~61_sumout\ <= NOT \al_shift|al|au|Add0~61_sumout\;
\al_shift|al|au|ALT_INV_Add0~57_sumout\ <= NOT \al_shift|al|au|Add0~57_sumout\;
\al_shift|al|au|ALT_INV_Add0~53_sumout\ <= NOT \al_shift|al|au|Add0~53_sumout\;
\al_shift|al|au|ALT_INV_Add0~49_sumout\ <= NOT \al_shift|al|au|Add0~49_sumout\;
\al_shift|al|au|ALT_INV_Add0~45_sumout\ <= NOT \al_shift|al|au|Add0~45_sumout\;
\al_shift|al|au|ALT_INV_Add0~41_sumout\ <= NOT \al_shift|al|au|Add0~41_sumout\;
\al_shift|al|au|ALT_INV_Add0~37_sumout\ <= NOT \al_shift|al|au|Add0~37_sumout\;
\al_shift|al|au|ALT_INV_Add0~33_sumout\ <= NOT \al_shift|al|au|Add0~33_sumout\;
\al_shift|al|au|ALT_INV_Add0~29_sumout\ <= NOT \al_shift|al|au|Add0~29_sumout\;
\al_shift|al|au|ALT_INV_Add0~25_sumout\ <= NOT \al_shift|al|au|Add0~25_sumout\;
\al_shift|al|au|ALT_INV_Add0~21_sumout\ <= NOT \al_shift|al|au|Add0~21_sumout\;
\al_shift|al|au|ALT_INV_Add0~17_sumout\ <= NOT \al_shift|al|au|Add0~17_sumout\;
\al_shift|al|au|ALT_INV_Add0~13_sumout\ <= NOT \al_shift|al|au|Add0~13_sumout\;
\al_shift|al|au|ALT_INV_Add0~9_sumout\ <= NOT \al_shift|al|au|Add0~9_sumout\;
\al_shift|al|au|ALT_INV_Add0~5_sumout\ <= NOT \al_shift|al|au|Add0~5_sumout\;
\al_shift|al|au|ALT_INV_Add0~1_sumout\ <= NOT \al_shift|al|au|Add0~1_sumout\;

-- Location: IOOBUF_X6_Y0_N53
\a_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux15~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(0));

-- Location: IOOBUF_X14_Y0_N19
\a_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux14~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(1));

-- Location: IOOBUF_X57_Y0_N53
\a_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux13~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(2));

-- Location: IOOBUF_X21_Y61_N2
\a_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux12~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(3));

-- Location: IOOBUF_X15_Y0_N53
\a_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux11~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(4));

-- Location: IOOBUF_X32_Y0_N93
\a_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux10~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(5));

-- Location: IOOBUF_X12_Y0_N2
\a_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux9~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(6));

-- Location: IOOBUF_X32_Y0_N76
\a_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux8~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(7));

-- Location: IOOBUF_X4_Y0_N36
\a_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux7~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(8));

-- Location: IOOBUF_X40_Y0_N42
\a_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux6~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(9));

-- Location: IOOBUF_X42_Y0_N2
\a_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux5~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(10));

-- Location: IOOBUF_X51_Y0_N19
\a_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux4~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(11));

-- Location: IOOBUF_X44_Y0_N36
\a_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux3~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(12));

-- Location: IOOBUF_X40_Y0_N76
\a_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux2~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(13));

-- Location: IOOBUF_X6_Y0_N36
\a_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux1~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(14));

-- Location: IOOBUF_X44_Y0_N2
\a_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|a1|Mux0~4_combout\,
	devoe => ww_devoe,
	o => ww_a_out(15));

-- Location: IOOBUF_X17_Y0_N42
\b_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux15~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(0));

-- Location: IOOBUF_X10_Y0_N42
\b_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux14~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(1));

-- Location: IOOBUF_X36_Y0_N53
\b_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux13~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(2));

-- Location: IOOBUF_X2_Y0_N93
\b_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux12~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(3));

-- Location: IOOBUF_X10_Y0_N59
\b_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux11~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(4));

-- Location: IOOBUF_X17_Y0_N76
\b_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux10~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(5));

-- Location: IOOBUF_X32_Y0_N59
\b_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux9~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(6));

-- Location: IOOBUF_X59_Y0_N53
\b_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux8~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(7));

-- Location: IOOBUF_X17_Y0_N93
\b_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux7~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(8));

-- Location: IOOBUF_X46_Y0_N19
\b_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux6~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(9));

-- Location: IOOBUF_X34_Y0_N53
\b_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux5~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(10));

-- Location: IOOBUF_X19_Y0_N19
\b_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux4~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(11));

-- Location: IOOBUF_X36_Y0_N2
\b_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux3~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(12));

-- Location: IOOBUF_X19_Y0_N36
\b_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux2~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(13));

-- Location: IOOBUF_X7_Y0_N2
\b_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux1~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(14));

-- Location: IOOBUF_X17_Y0_N59
\b_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rf|b1|Mux0~4_combout\,
	devoe => ww_devoe,
	o => ww_b_out(15));

-- Location: IOIBUF_X12_Y0_N18
\a_sel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_sel(3),
	o => \a_sel[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\a_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_sel(1),
	o => \a_sel[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N35
\a_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_sel(0),
	o => \a_sel[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X18_Y0_N18
\op_sel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(3),
	o => \op_sel[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\data_sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_sel,
	o => \data_sel~input_o\);

-- Location: IOIBUF_X7_Y0_N52
\const_sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_sel,
	o => \const_sel~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\const_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(1),
	o => \const_in[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N52
\b_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_sel(0),
	o => \b_sel[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\b_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_sel(1),
	o => \b_sel[1]~input_o\);

-- Location: IOIBUF_X15_Y0_N35
\b_sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_sel(2),
	o => \b_sel[2]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\b_sel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_sel(3),
	o => \b_sel[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\const_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(0),
	o => \const_in[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N41
\load_en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_en,
	o => \load_en~input_o\);

-- Location: IOIBUF_X42_Y0_N18
\dest_sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_sel(2),
	o => \dest_sel[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N52
\dest_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_sel(0),
	o => \dest_sel[0]~input_o\);

-- Location: IOIBUF_X44_Y0_N52
\dest_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_sel(1),
	o => \dest_sel[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\dest_sel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dest_sel(3),
	o => \dest_sel[3]~input_o\);

-- Location: MLABCELL_X25_Y3_N9
\rf|d1|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~8_combout\ = ( \dest_sel[3]~input_o\ & ( (\load_en~input_o\ & (!\dest_sel[2]~input_o\ & (!\dest_sel[0]~input_o\ & !\dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[0]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[3]~input_o\,
	combout => \rf|d1|Decoder0~8_combout\);

-- Location: FF_X17_Y3_N14
\rf|reg8|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(0));

-- Location: MLABCELL_X25_Y3_N33
\rf|d1|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~11_combout\ = ( \dest_sel[1]~input_o\ & ( \dest_sel[0]~input_o\ & ( (\dest_sel[3]~input_o\ & (!\dest_sel[2]~input_o\ & \load_en~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dest_sel[3]~input_o\,
	datac => \ALT_INV_dest_sel[2]~input_o\,
	datad => \ALT_INV_load_en~input_o\,
	datae => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[0]~input_o\,
	combout => \rf|d1|Decoder0~11_combout\);

-- Location: FF_X17_Y3_N56
\rf|reg11|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(0));

-- Location: MLABCELL_X25_Y3_N12
\rf|d1|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~9_combout\ = ( \dest_sel[0]~input_o\ & ( (\load_en~input_o\ & (!\dest_sel[2]~input_o\ & (\dest_sel[3]~input_o\ & !\dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[3]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[0]~input_o\,
	combout => \rf|d1|Decoder0~9_combout\);

-- Location: FF_X17_Y3_N2
\rf|reg9|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(0));

-- Location: MLABCELL_X25_Y3_N15
\rf|d1|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~10_combout\ = ( \dest_sel[3]~input_o\ & ( (\load_en~input_o\ & (!\dest_sel[2]~input_o\ & (!\dest_sel[0]~input_o\ & \dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[0]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[3]~input_o\,
	combout => \rf|d1|Decoder0~10_combout\);

-- Location: FF_X15_Y3_N20
\rf|reg10|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(0));

-- Location: LABCELL_X17_Y3_N9
\rf|b1|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux15~2_combout\ = ( \rf|reg9|q\(0) & ( \rf|reg10|q\(0) & ( (!\b_sel[0]~input_o\ & (((\rf|reg8|q\(0))) # (\b_sel[1]~input_o\))) # (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|reg11|q\(0))))) ) ) ) # ( !\rf|reg9|q\(0) & ( \rf|reg10|q\(0) & ( 
-- (!\b_sel[0]~input_o\ & (((\rf|reg8|q\(0))) # (\b_sel[1]~input_o\))) # (\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & ((\rf|reg11|q\(0))))) ) ) ) # ( \rf|reg9|q\(0) & ( !\rf|reg10|q\(0) & ( (!\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & (\rf|reg8|q\(0)))) # 
-- (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|reg11|q\(0))))) ) ) ) # ( !\rf|reg9|q\(0) & ( !\rf|reg10|q\(0) & ( (!\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & (\rf|reg8|q\(0)))) # (\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & ((\rf|reg11|q\(0))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg8|ALT_INV_q\(0),
	datad => \rf|reg11|ALT_INV_q\(0),
	datae => \rf|reg9|ALT_INV_q\(0),
	dataf => \rf|reg10|ALT_INV_q\(0),
	combout => \rf|b1|Mux15~2_combout\);

-- Location: MLABCELL_X25_Y3_N0
\rf|d1|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~5_combout\ = ( \dest_sel[0]~input_o\ & ( (!\dest_sel[3]~input_o\ & (\dest_sel[2]~input_o\ & (\load_en~input_o\ & !\dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dest_sel[3]~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_load_en~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[0]~input_o\,
	combout => \rf|d1|Decoder0~5_combout\);

-- Location: FF_X15_Y2_N44
\rf|reg5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(0));

-- Location: MLABCELL_X25_Y3_N45
\rf|d1|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~4_combout\ = ( !\dest_sel[3]~input_o\ & ( (\load_en~input_o\ & (\dest_sel[2]~input_o\ & (!\dest_sel[0]~input_o\ & !\dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[0]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[3]~input_o\,
	combout => \rf|d1|Decoder0~4_combout\);

-- Location: FF_X14_Y2_N14
\rf|reg4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(0));

-- Location: MLABCELL_X25_Y3_N6
\rf|d1|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~7_combout\ = ( \dest_sel[0]~input_o\ & ( (\load_en~input_o\ & (\dest_sel[2]~input_o\ & (!\dest_sel[3]~input_o\ & \dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[3]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[0]~input_o\,
	combout => \rf|d1|Decoder0~7_combout\);

-- Location: FF_X14_Y2_N56
\rf|reg7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(0));

-- Location: MLABCELL_X25_Y3_N3
\rf|d1|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~6_combout\ = ( \load_en~input_o\ & ( (!\dest_sel[3]~input_o\ & (\dest_sel[2]~input_o\ & (!\dest_sel[0]~input_o\ & \dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dest_sel[3]~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[0]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_load_en~input_o\,
	combout => \rf|d1|Decoder0~6_combout\);

-- Location: FF_X14_Y2_N50
\rf|reg6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(0));

-- Location: MLABCELL_X14_Y2_N57
\rf|b1|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux15~1_combout\ = ( \rf|reg7|q\(0) & ( \rf|reg6|q\(0) & ( ((!\b_sel[0]~input_o\ & ((\rf|reg4|q\(0)))) # (\b_sel[0]~input_o\ & (\rf|reg5|q\(0)))) # (\b_sel[1]~input_o\) ) ) ) # ( !\rf|reg7|q\(0) & ( \rf|reg6|q\(0) & ( (!\b_sel[0]~input_o\ & 
-- (((\b_sel[1]~input_o\) # (\rf|reg4|q\(0))))) # (\b_sel[0]~input_o\ & (\rf|reg5|q\(0) & ((!\b_sel[1]~input_o\)))) ) ) ) # ( \rf|reg7|q\(0) & ( !\rf|reg6|q\(0) & ( (!\b_sel[0]~input_o\ & (((\rf|reg4|q\(0) & !\b_sel[1]~input_o\)))) # (\b_sel[0]~input_o\ & 
-- (((\b_sel[1]~input_o\)) # (\rf|reg5|q\(0)))) ) ) ) # ( !\rf|reg7|q\(0) & ( !\rf|reg6|q\(0) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & ((\rf|reg4|q\(0)))) # (\b_sel[0]~input_o\ & (\rf|reg5|q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \rf|reg5|ALT_INV_q\(0),
	datac => \rf|reg4|ALT_INV_q\(0),
	datad => \ALT_INV_b_sel[1]~input_o\,
	datae => \rf|reg7|ALT_INV_q\(0),
	dataf => \rf|reg6|ALT_INV_q\(0),
	combout => \rf|b1|Mux15~1_combout\);

-- Location: MLABCELL_X25_Y3_N42
\rf|d1|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~3_combout\ = ( \dest_sel[0]~input_o\ & ( (\load_en~input_o\ & (!\dest_sel[2]~input_o\ & (!\dest_sel[3]~input_o\ & \dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[3]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[0]~input_o\,
	combout => \rf|d1|Decoder0~3_combout\);

-- Location: FF_X19_Y3_N8
\rf|reg3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(0));

-- Location: MLABCELL_X25_Y2_N15
\rf|d1|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~2_combout\ = ( \load_en~input_o\ & ( !\dest_sel[0]~input_o\ & ( (!\dest_sel[3]~input_o\ & (\dest_sel[1]~input_o\ & !\dest_sel[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dest_sel[3]~input_o\,
	datab => \ALT_INV_dest_sel[1]~input_o\,
	datac => \ALT_INV_dest_sel[2]~input_o\,
	datae => \ALT_INV_load_en~input_o\,
	dataf => \ALT_INV_dest_sel[0]~input_o\,
	combout => \rf|d1|Decoder0~2_combout\);

-- Location: FF_X19_Y3_N50
\rf|reg2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(0));

-- Location: MLABCELL_X25_Y3_N36
\rf|d1|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~1_combout\ = ( !\dest_sel[1]~input_o\ & ( \dest_sel[0]~input_o\ & ( (!\dest_sel[3]~input_o\ & (!\dest_sel[2]~input_o\ & \load_en~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dest_sel[3]~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_load_en~input_o\,
	datae => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[0]~input_o\,
	combout => \rf|d1|Decoder0~1_combout\);

-- Location: FF_X19_Y3_N2
\rf|reg1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(0));

-- Location: MLABCELL_X19_Y3_N3
\rf|b1|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux15~0_combout\ = ( \rf|reg1|q\(0) & ( \rf|reg0|q\(0) & ( (!\b_sel[1]~input_o\) # ((!\b_sel[0]~input_o\ & ((\rf|reg2|q\(0)))) # (\b_sel[0]~input_o\ & (\rf|reg3|q\(0)))) ) ) ) # ( !\rf|reg1|q\(0) & ( \rf|reg0|q\(0) & ( (!\b_sel[0]~input_o\ & 
-- ((!\b_sel[1]~input_o\) # ((\rf|reg2|q\(0))))) # (\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & (\rf|reg3|q\(0)))) ) ) ) # ( \rf|reg1|q\(0) & ( !\rf|reg0|q\(0) & ( (!\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & ((\rf|reg2|q\(0))))) # (\b_sel[0]~input_o\ & 
-- ((!\b_sel[1]~input_o\) # ((\rf|reg3|q\(0))))) ) ) ) # ( !\rf|reg1|q\(0) & ( !\rf|reg0|q\(0) & ( (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & ((\rf|reg2|q\(0)))) # (\b_sel[0]~input_o\ & (\rf|reg3|q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg3|ALT_INV_q\(0),
	datad => \rf|reg2|ALT_INV_q\(0),
	datae => \rf|reg1|ALT_INV_q\(0),
	dataf => \rf|reg0|ALT_INV_q\(0),
	combout => \rf|b1|Mux15~0_combout\);

-- Location: MLABCELL_X25_Y3_N48
\rf|d1|Decoder0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~12_combout\ = ( !\dest_sel[0]~input_o\ & ( (\load_en~input_o\ & (\dest_sel[2]~input_o\ & (\dest_sel[3]~input_o\ & !\dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[3]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[0]~input_o\,
	combout => \rf|d1|Decoder0~12_combout\);

-- Location: FF_X17_Y1_N47
\rf|reg12|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(0));

-- Location: MLABCELL_X25_Y3_N21
\rf|d1|Decoder0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~15_combout\ = ( \dest_sel[3]~input_o\ & ( (\load_en~input_o\ & (\dest_sel[2]~input_o\ & (\dest_sel[0]~input_o\ & \dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[0]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[3]~input_o\,
	combout => \rf|d1|Decoder0~15_combout\);

-- Location: FF_X17_Y1_N50
\rf|reg15|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(0));

-- Location: MLABCELL_X25_Y3_N18
\rf|d1|Decoder0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~14_combout\ = ( !\dest_sel[0]~input_o\ & ( (\load_en~input_o\ & (\dest_sel[2]~input_o\ & (\dest_sel[3]~input_o\ & \dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[3]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[0]~input_o\,
	combout => \rf|d1|Decoder0~14_combout\);

-- Location: FF_X17_Y1_N5
\rf|reg14|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(0));

-- Location: MLABCELL_X25_Y3_N51
\rf|d1|Decoder0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~13_combout\ = ( \dest_sel[3]~input_o\ & ( (\load_en~input_o\ & (\dest_sel[2]~input_o\ & (\dest_sel[0]~input_o\ & !\dest_sel[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_en~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[0]~input_o\,
	datad => \ALT_INV_dest_sel[1]~input_o\,
	dataf => \ALT_INV_dest_sel[3]~input_o\,
	combout => \rf|d1|Decoder0~13_combout\);

-- Location: FF_X15_Y3_N47
\rf|reg13|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(0));

-- Location: LABCELL_X17_Y1_N57
\rf|b1|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux15~3_combout\ = ( \rf|reg14|q\(0) & ( \rf|reg13|q\(0) & ( (!\b_sel[1]~input_o\ & (((\rf|reg12|q\(0))) # (\b_sel[0]~input_o\))) # (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\) # ((\rf|reg15|q\(0))))) ) ) ) # ( !\rf|reg14|q\(0) & ( \rf|reg13|q\(0) 
-- & ( (!\b_sel[1]~input_o\ & (((\rf|reg12|q\(0))) # (\b_sel[0]~input_o\))) # (\b_sel[1]~input_o\ & (\b_sel[0]~input_o\ & ((\rf|reg15|q\(0))))) ) ) ) # ( \rf|reg14|q\(0) & ( !\rf|reg13|q\(0) & ( (!\b_sel[1]~input_o\ & (!\b_sel[0]~input_o\ & 
-- (\rf|reg12|q\(0)))) # (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\) # ((\rf|reg15|q\(0))))) ) ) ) # ( !\rf|reg14|q\(0) & ( !\rf|reg13|q\(0) & ( (!\b_sel[1]~input_o\ & (!\b_sel[0]~input_o\ & (\rf|reg12|q\(0)))) # (\b_sel[1]~input_o\ & (\b_sel[0]~input_o\ & 
-- ((\rf|reg15|q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[1]~input_o\,
	datab => \ALT_INV_b_sel[0]~input_o\,
	datac => \rf|reg12|ALT_INV_q\(0),
	datad => \rf|reg15|ALT_INV_q\(0),
	datae => \rf|reg14|ALT_INV_q\(0),
	dataf => \rf|reg13|ALT_INV_q\(0),
	combout => \rf|b1|Mux15~3_combout\);

-- Location: LABCELL_X18_Y2_N48
\rf|b1|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux15~4_combout\ = ( \rf|b1|Mux15~0_combout\ & ( \rf|b1|Mux15~3_combout\ & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|b1|Mux15~1_combout\)))) # (\b_sel[3]~input_o\ & (((\rf|b1|Mux15~2_combout\)) # (\b_sel[2]~input_o\))) ) ) ) # ( 
-- !\rf|b1|Mux15~0_combout\ & ( \rf|b1|Mux15~3_combout\ & ( (!\b_sel[3]~input_o\ & (\b_sel[2]~input_o\ & ((\rf|b1|Mux15~1_combout\)))) # (\b_sel[3]~input_o\ & (((\rf|b1|Mux15~2_combout\)) # (\b_sel[2]~input_o\))) ) ) ) # ( \rf|b1|Mux15~0_combout\ & ( 
-- !\rf|b1|Mux15~3_combout\ & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|b1|Mux15~1_combout\)))) # (\b_sel[3]~input_o\ & (!\b_sel[2]~input_o\ & (\rf|b1|Mux15~2_combout\))) ) ) ) # ( !\rf|b1|Mux15~0_combout\ & ( !\rf|b1|Mux15~3_combout\ & ( 
-- (!\b_sel[3]~input_o\ & (\b_sel[2]~input_o\ & ((\rf|b1|Mux15~1_combout\)))) # (\b_sel[3]~input_o\ & (!\b_sel[2]~input_o\ & (\rf|b1|Mux15~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[3]~input_o\,
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \rf|b1|ALT_INV_Mux15~2_combout\,
	datad => \rf|b1|ALT_INV_Mux15~1_combout\,
	datae => \rf|b1|ALT_INV_Mux15~0_combout\,
	dataf => \rf|b1|ALT_INV_Mux15~3_combout\,
	combout => \rf|b1|Mux15~4_combout\);

-- Location: LABCELL_X18_Y2_N54
\m2|res[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[1]~11_combout\ = ( \rf|b1|Mux15~4_combout\ & ( (!\const_sel~input_o\) # (\const_in[0]~input_o\) ) ) # ( !\rf|b1|Mux15~4_combout\ & ( (\const_sel~input_o\ & \const_in[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_const_sel~input_o\,
	datac => \ALT_INV_const_in[0]~input_o\,
	dataf => \rf|b1|ALT_INV_Mux15~4_combout\,
	combout => \m2|res[1]~11_combout\);

-- Location: IOIBUF_X7_Y0_N35
\op_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(0),
	o => \op_sel[0]~input_o\);

-- Location: LABCELL_X17_Y4_N0
\m2|res[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[1]~10_combout\ = ( !\op_sel[0]~input_o\ & ( \op_sel[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_op_sel[3]~input_o\,
	datae => \ALT_INV_op_sel[0]~input_o\,
	combout => \m2|res[1]~10_combout\);

-- Location: IOIBUF_X6_Y0_N1
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\op_sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(2),
	o => \op_sel[2]~input_o\);

-- Location: MLABCELL_X19_Y4_N18
\m2|res[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[1]~7_combout\ = (!\op_sel[3]~input_o\ & (\op_sel[2]~input_o\)) # (\op_sel[3]~input_o\ & ((\op_sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[2]~input_o\,
	datab => \ALT_INV_op_sel[3]~input_o\,
	datac => \ALT_INV_op_sel[0]~input_o\,
	combout => \m2|res[1]~7_combout\);

-- Location: IOIBUF_X38_Y0_N1
\op_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(1),
	o => \op_sel[1]~input_o\);

-- Location: LABCELL_X13_Y2_N24
\rf|reg12|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg12|q[1]~feeder_combout\ = ( \m2|res[1]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[1]~12_combout\,
	combout => \rf|reg12|q[1]~feeder_combout\);

-- Location: FF_X13_Y2_N26
\rf|reg12|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg12|q[1]~feeder_combout\,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(1));

-- Location: IOIBUF_X14_Y0_N1
\a_sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_sel(2),
	o => \a_sel[2]~input_o\);

-- Location: FF_X14_Y2_N23
\rf|reg4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[1]~12_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(1));

-- Location: LABCELL_X13_Y3_N54
\rf|reg0|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg0|q[1]~feeder_combout\ = ( \m2|res[1]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[1]~12_combout\,
	combout => \rf|reg0|q[1]~feeder_combout\);

-- Location: MLABCELL_X25_Y3_N24
\rf|d1|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|d1|Decoder0~0_combout\ = ( \load_en~input_o\ & ( (!\dest_sel[3]~input_o\ & (!\dest_sel[2]~input_o\ & (!\dest_sel[1]~input_o\ & !\dest_sel[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dest_sel[3]~input_o\,
	datab => \ALT_INV_dest_sel[2]~input_o\,
	datac => \ALT_INV_dest_sel[1]~input_o\,
	datad => \ALT_INV_dest_sel[0]~input_o\,
	dataf => \ALT_INV_load_en~input_o\,
	combout => \rf|d1|Decoder0~0_combout\);

-- Location: FF_X13_Y3_N56
\rf|reg0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg0|q[1]~feeder_combout\,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(1));

-- Location: LABCELL_X13_Y3_N6
\rf|reg8|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg8|q[1]~feeder_combout\ = ( \m2|res[1]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[1]~12_combout\,
	combout => \rf|reg8|q[1]~feeder_combout\);

-- Location: FF_X13_Y3_N7
\rf|reg8|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg8|q[1]~feeder_combout\,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(1));

-- Location: LABCELL_X13_Y2_N33
\rf|a1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux14~0_combout\ = ( \rf|reg0|q\(1) & ( \rf|reg8|q\(1) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & ((\rf|reg4|q\(1)))) # (\a_sel[3]~input_o\ & (\rf|reg12|q\(1)))) ) ) ) # ( !\rf|reg0|q\(1) & ( \rf|reg8|q\(1) & ( (!\a_sel[3]~input_o\ & 
-- (((\a_sel[2]~input_o\ & \rf|reg4|q\(1))))) # (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\)) # (\rf|reg12|q\(1)))) ) ) ) # ( \rf|reg0|q\(1) & ( !\rf|reg8|q\(1) & ( (!\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\) # (\rf|reg4|q\(1))))) # (\a_sel[3]~input_o\ & 
-- (\rf|reg12|q\(1) & (\a_sel[2]~input_o\))) ) ) ) # ( !\rf|reg0|q\(1) & ( !\rf|reg8|q\(1) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg4|q\(1)))) # (\a_sel[3]~input_o\ & (\rf|reg12|q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg12|ALT_INV_q\(1),
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \ALT_INV_a_sel[2]~input_o\,
	datad => \rf|reg4|ALT_INV_q\(1),
	datae => \rf|reg0|ALT_INV_q\(1),
	dataf => \rf|reg8|ALT_INV_q\(1),
	combout => \rf|a1|Mux14~0_combout\);

-- Location: MLABCELL_X14_Y3_N42
\rf|reg9|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg9|q[1]~feeder_combout\ = ( \m2|res[1]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[1]~12_combout\,
	combout => \rf|reg9|q[1]~feeder_combout\);

-- Location: FF_X14_Y3_N43
\rf|reg9|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg9|q[1]~feeder_combout\,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(1));

-- Location: FF_X15_Y4_N5
\rf|reg1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[1]~12_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(1));

-- Location: FF_X15_Y2_N56
\rf|reg5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[1]~12_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(1));

-- Location: FF_X15_Y2_N26
\rf|reg13|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[1]~12_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(1));

-- Location: LABCELL_X15_Y2_N3
\rf|a1|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux14~1_combout\ = ( \rf|reg5|q\(1) & ( \rf|reg13|q\(1) & ( ((!\a_sel[3]~input_o\ & ((\rf|reg1|q\(1)))) # (\a_sel[3]~input_o\ & (\rf|reg9|q\(1)))) # (\a_sel[2]~input_o\) ) ) ) # ( !\rf|reg5|q\(1) & ( \rf|reg13|q\(1) & ( (!\a_sel[2]~input_o\ & 
-- ((!\a_sel[3]~input_o\ & ((\rf|reg1|q\(1)))) # (\a_sel[3]~input_o\ & (\rf|reg9|q\(1))))) # (\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\)))) ) ) ) # ( \rf|reg5|q\(1) & ( !\rf|reg13|q\(1) & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg1|q\(1)))) 
-- # (\a_sel[3]~input_o\ & (\rf|reg9|q\(1))))) # (\a_sel[2]~input_o\ & (((!\a_sel[3]~input_o\)))) ) ) ) # ( !\rf|reg5|q\(1) & ( !\rf|reg13|q\(1) & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg1|q\(1)))) # (\a_sel[3]~input_o\ & 
-- (\rf|reg9|q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \rf|reg9|ALT_INV_q\(1),
	datac => \rf|reg1|ALT_INV_q\(1),
	datad => \ALT_INV_a_sel[3]~input_o\,
	datae => \rf|reg5|ALT_INV_q\(1),
	dataf => \rf|reg13|ALT_INV_q\(1),
	combout => \rf|a1|Mux14~1_combout\);

-- Location: FF_X14_Y2_N2
\rf|reg7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[1]~12_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(1));

-- Location: FF_X14_Y4_N17
\rf|reg3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[1]~12_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(1));

-- Location: MLABCELL_X14_Y4_N0
\rf|reg15|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg15|q[1]~feeder_combout\ = ( \m2|res[1]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[1]~12_combout\,
	combout => \rf|reg15|q[1]~feeder_combout\);

-- Location: FF_X14_Y4_N2
\rf|reg15|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg15|q[1]~feeder_combout\,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(1));

-- Location: LABCELL_X15_Y2_N27
\rf|a1|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux14~3_combout\ = ( \rf|reg15|q\(1) & ( \rf|reg11|q\(1) & ( ((!\a_sel[2]~input_o\ & ((\rf|reg3|q\(1)))) # (\a_sel[2]~input_o\ & (\rf|reg7|q\(1)))) # (\a_sel[3]~input_o\) ) ) ) # ( !\rf|reg15|q\(1) & ( \rf|reg11|q\(1) & ( (!\a_sel[2]~input_o\ & 
-- (((\rf|reg3|q\(1))) # (\a_sel[3]~input_o\))) # (\a_sel[2]~input_o\ & (!\a_sel[3]~input_o\ & (\rf|reg7|q\(1)))) ) ) ) # ( \rf|reg15|q\(1) & ( !\rf|reg11|q\(1) & ( (!\a_sel[2]~input_o\ & (!\a_sel[3]~input_o\ & ((\rf|reg3|q\(1))))) # (\a_sel[2]~input_o\ & 
-- (((\rf|reg7|q\(1))) # (\a_sel[3]~input_o\))) ) ) ) # ( !\rf|reg15|q\(1) & ( !\rf|reg11|q\(1) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|reg3|q\(1)))) # (\a_sel[2]~input_o\ & (\rf|reg7|q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|reg7|ALT_INV_q\(1),
	datad => \rf|reg3|ALT_INV_q\(1),
	datae => \rf|reg15|ALT_INV_q\(1),
	dataf => \rf|reg11|ALT_INV_q\(1),
	combout => \rf|a1|Mux14~3_combout\);

-- Location: LABCELL_X13_Y2_N6
\rf|reg10|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg10|q[1]~feeder_combout\ = ( \m2|res[1]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[1]~12_combout\,
	combout => \rf|reg10|q[1]~feeder_combout\);

-- Location: FF_X13_Y2_N8
\rf|reg10|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg10|q[1]~feeder_combout\,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(1));

-- Location: MLABCELL_X14_Y2_N30
\rf|reg6|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg6|q[1]~feeder_combout\ = ( \m2|res[1]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[1]~12_combout\,
	combout => \rf|reg6|q[1]~feeder_combout\);

-- Location: FF_X14_Y2_N32
\rf|reg6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg6|q[1]~feeder_combout\,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(1));

-- Location: LABCELL_X15_Y2_N6
\rf|reg14|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg14|q[1]~feeder_combout\ = ( \m2|res[1]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[1]~12_combout\,
	combout => \rf|reg14|q[1]~feeder_combout\);

-- Location: FF_X15_Y2_N8
\rf|reg14|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg14|q[1]~feeder_combout\,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(1));

-- Location: LABCELL_X13_Y3_N45
\rf|reg2|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg2|q[1]~feeder_combout\ = ( \m2|res[1]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[1]~12_combout\,
	combout => \rf|reg2|q[1]~feeder_combout\);

-- Location: FF_X13_Y3_N46
\rf|reg2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg2|q[1]~feeder_combout\,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(1));

-- Location: LABCELL_X13_Y2_N3
\rf|a1|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux14~2_combout\ = ( \rf|reg14|q\(1) & ( \rf|reg2|q\(1) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\) # ((\rf|reg6|q\(1))))) # (\a_sel[3]~input_o\ & (((\rf|reg10|q\(1))) # (\a_sel[2]~input_o\))) ) ) ) # ( !\rf|reg14|q\(1) & ( \rf|reg2|q\(1) & ( 
-- (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\) # ((\rf|reg6|q\(1))))) # (\a_sel[3]~input_o\ & (!\a_sel[2]~input_o\ & (\rf|reg10|q\(1)))) ) ) ) # ( \rf|reg14|q\(1) & ( !\rf|reg2|q\(1) & ( (!\a_sel[3]~input_o\ & (\a_sel[2]~input_o\ & ((\rf|reg6|q\(1))))) # 
-- (\a_sel[3]~input_o\ & (((\rf|reg10|q\(1))) # (\a_sel[2]~input_o\))) ) ) ) # ( !\rf|reg14|q\(1) & ( !\rf|reg2|q\(1) & ( (!\a_sel[3]~input_o\ & (\a_sel[2]~input_o\ & ((\rf|reg6|q\(1))))) # (\a_sel[3]~input_o\ & (!\a_sel[2]~input_o\ & (\rf|reg10|q\(1)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[3]~input_o\,
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \rf|reg10|ALT_INV_q\(1),
	datad => \rf|reg6|ALT_INV_q\(1),
	datae => \rf|reg14|ALT_INV_q\(1),
	dataf => \rf|reg2|ALT_INV_q\(1),
	combout => \rf|a1|Mux14~2_combout\);

-- Location: LABCELL_X15_Y2_N51
\rf|a1|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux14~4_combout\ = ( \rf|a1|Mux14~3_combout\ & ( \rf|a1|Mux14~2_combout\ & ( ((!\a_sel[0]~input_o\ & (\rf|a1|Mux14~0_combout\)) # (\a_sel[0]~input_o\ & ((\rf|a1|Mux14~1_combout\)))) # (\a_sel[1]~input_o\) ) ) ) # ( !\rf|a1|Mux14~3_combout\ & ( 
-- \rf|a1|Mux14~2_combout\ & ( (!\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\)) # (\rf|a1|Mux14~0_combout\))) # (\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\ & \rf|a1|Mux14~1_combout\)))) ) ) ) # ( \rf|a1|Mux14~3_combout\ & ( !\rf|a1|Mux14~2_combout\ & ( 
-- (!\a_sel[0]~input_o\ & (\rf|a1|Mux14~0_combout\ & (!\a_sel[1]~input_o\))) # (\a_sel[0]~input_o\ & (((\rf|a1|Mux14~1_combout\) # (\a_sel[1]~input_o\)))) ) ) ) # ( !\rf|a1|Mux14~3_combout\ & ( !\rf|a1|Mux14~2_combout\ & ( (!\a_sel[1]~input_o\ & 
-- ((!\a_sel[0]~input_o\ & (\rf|a1|Mux14~0_combout\)) # (\a_sel[0]~input_o\ & ((\rf|a1|Mux14~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001001010111010100101010011110100010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[0]~input_o\,
	datab => \rf|a1|ALT_INV_Mux14~0_combout\,
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|a1|ALT_INV_Mux14~1_combout\,
	datae => \rf|a1|ALT_INV_Mux14~3_combout\,
	dataf => \rf|a1|ALT_INV_Mux14~2_combout\,
	combout => \rf|a1|Mux14~4_combout\);

-- Location: MLABCELL_X14_Y4_N30
\m2|res[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[1]~6_combout\ = ( \rf|a1|Mux14~4_combout\ & ( \rf|b1|Mux14~4_combout\ & ( !\op_sel[1]~input_o\ $ (((\const_sel~input_o\ & (!\const_in[1]~input_o\ & !\op_sel[0]~input_o\)))) ) ) ) # ( !\rf|a1|Mux14~4_combout\ & ( \rf|b1|Mux14~4_combout\ & ( 
-- (!\op_sel[1]~input_o\ & (\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (\const_in[1]~input_o\)))) # (\op_sel[1]~input_o\ & ((!\const_sel~input_o\) # ((\op_sel[0]~input_o\) # (\const_in[1]~input_o\)))) ) ) ) # ( \rf|a1|Mux14~4_combout\ & ( 
-- !\rf|b1|Mux14~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (!\const_in[1]~input_o\))))) ) ) ) # ( !\rf|a1|Mux14~4_combout\ & ( !\rf|b1|Mux14~4_combout\ & ( (!\op_sel[1]~input_o\ & (\const_sel~input_o\ & 
-- (\const_in[1]~input_o\ & \op_sel[0]~input_o\))) # (\op_sel[1]~input_o\ & (((\const_sel~input_o\ & \const_in[1]~input_o\)) # (\op_sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000111101111000000001011101111111011010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_sel~input_o\,
	datab => \ALT_INV_const_in[1]~input_o\,
	datac => \ALT_INV_op_sel[1]~input_o\,
	datad => \ALT_INV_op_sel[0]~input_o\,
	datae => \rf|a1|ALT_INV_Mux14~4_combout\,
	dataf => \rf|b1|ALT_INV_Mux14~4_combout\,
	combout => \m2|res[1]~6_combout\);

-- Location: LABCELL_X18_Y2_N0
\al_shift|al|au|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~1_sumout\ = SUM(( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux15~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[0]~input_o\))))) ) + ( \op_sel[0]~input_o\ ) + ( !VCC ))
-- \al_shift|al|au|Add0~2\ = CARRY(( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux15~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[0]~input_o\))))) ) + ( \op_sel[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux15~4_combout\,
	datad => \ALT_INV_const_in[0]~input_o\,
	cin => GND,
	sumout => \al_shift|al|au|Add0~1_sumout\,
	cout => \al_shift|al|au|Add0~2\);

-- Location: LABCELL_X18_Y2_N3
\al_shift|al|au|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~5_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux14~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[1]~input_o\))))) ) + ( \al_shift|al|au|Add0~2\ ))
-- \al_shift|al|au|Add0~6\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux14~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[1]~input_o\))))) ) + ( \al_shift|al|au|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux14~4_combout\,
	dataf => \ALT_INV_const_in[1]~input_o\,
	cin => \al_shift|al|au|Add0~2\,
	sumout => \al_shift|al|au|Add0~5_sumout\,
	cout => \al_shift|al|au|Add0~6\);

-- Location: MLABCELL_X14_Y4_N48
\m2|res[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[1]~8_combout\ = ( \al_shift|al|au|Add0~5_sumout\ & ( !\rf|a1|Mux14~4_combout\ $ (!\rf|a1|Mux15~4_combout\ $ (!\al_shift|al|au|Add0~1_sumout\)) ) ) # ( !\al_shift|al|au|Add0~5_sumout\ & ( !\rf|a1|Mux14~4_combout\ $ (!\rf|a1|Mux15~4_combout\ $ 
-- (\al_shift|al|au|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110000110011110000111100110000111100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|a1|ALT_INV_Mux14~4_combout\,
	datac => \rf|a1|ALT_INV_Mux15~4_combout\,
	datad => \al_shift|al|au|ALT_INV_Add0~1_sumout\,
	datae => \al_shift|al|au|ALT_INV_Add0~5_sumout\,
	combout => \m2|res[1]~8_combout\);

-- Location: IOIBUF_X59_Y0_N1
\const_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(2),
	o => \const_in[2]~input_o\);

-- Location: IOIBUF_X42_Y0_N52
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X15_Y0_N18
\const_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(3),
	o => \const_in[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\const_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(4),
	o => \const_in[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N18
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\const_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(5),
	o => \const_in[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N52
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: MLABCELL_X19_Y1_N27
\m2|res[5]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[5]~24_combout\ = ( \m2|res[1]~10_combout\ & ( \const_in[4]~input_o\ & ( (\const_sel~input_o\) # (\rf|b1|Mux11~4_combout\) ) ) ) # ( \m2|res[1]~10_combout\ & ( !\const_in[4]~input_o\ & ( (\rf|b1|Mux11~4_combout\ & !\const_sel~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|b1|ALT_INV_Mux11~4_combout\,
	datac => \ALT_INV_const_sel~input_o\,
	datae => \m2|ALT_INV_res[1]~10_combout\,
	dataf => \ALT_INV_const_in[4]~input_o\,
	combout => \m2|res[5]~24_combout\);

-- Location: IOIBUF_X44_Y0_N18
\const_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(6),
	o => \const_in[6]~input_o\);

-- Location: IOIBUF_X21_Y0_N52
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LABCELL_X18_Y1_N15
\m2|res[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[6]~30_combout\ = ( \const_sel~input_o\ & ( \rf|b1|Mux10~4_combout\ & ( (\const_in[5]~input_o\ & \m2|res[1]~10_combout\) ) ) ) # ( !\const_sel~input_o\ & ( \rf|b1|Mux10~4_combout\ & ( \m2|res[1]~10_combout\ ) ) ) # ( \const_sel~input_o\ & ( 
-- !\rf|b1|Mux10~4_combout\ & ( (\const_in[5]~input_o\ & \m2|res[1]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000111111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[5]~input_o\,
	datad => \m2|ALT_INV_res[1]~10_combout\,
	datae => \ALT_INV_const_sel~input_o\,
	dataf => \rf|b1|ALT_INV_Mux10~4_combout\,
	combout => \m2|res[6]~30_combout\);

-- Location: IOIBUF_X42_Y0_N35
\const_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(7),
	o => \const_in[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\const_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(8),
	o => \const_in[8]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X46_Y0_N35
\const_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(9),
	o => \const_in[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N58
\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X21_Y0_N35
\const_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(11),
	o => \const_in[11]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: IOIBUF_X48_Y0_N41
\const_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(12),
	o => \const_in[12]~input_o\);

-- Location: IOIBUF_X19_Y61_N35
\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\const_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(13),
	o => \const_in[13]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\const_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(14),
	o => \const_in[14]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\const_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(15),
	o => \const_in[15]~input_o\);

-- Location: LABCELL_X18_Y2_N57
\al_shift|m2|res[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|m2|res[15]~2_combout\ = ( \rf|b1|Mux1~4_combout\ & ( (!\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (\const_in[14]~input_o\))) ) ) # ( !\rf|b1|Mux1~4_combout\ & ( (\const_in[14]~input_o\ & (\const_sel~input_o\ & !\op_sel[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[14]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \ALT_INV_op_sel[0]~input_o\,
	dataf => \rf|b1|ALT_INV_Mux1~4_combout\,
	combout => \al_shift|m2|res[15]~2_combout\);

-- Location: FF_X15_Y4_N41
\rf|reg5|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(15));

-- Location: LABCELL_X15_Y4_N30
\rf|reg1|q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg1|q[15]~feeder_combout\ = ( \m2|res[15]~67_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[15]~67_combout\,
	combout => \rf|reg1|q[15]~feeder_combout\);

-- Location: FF_X15_Y4_N32
\rf|reg1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg1|q[15]~feeder_combout\,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(15));

-- Location: FF_X17_Y4_N50
\rf|reg13|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(15));

-- Location: FF_X22_Y1_N35
\rf|reg9|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(15));

-- Location: LABCELL_X15_Y4_N57
\rf|a1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux0~1_combout\ = ( \rf|reg13|q\(15) & ( \rf|reg9|q\(15) & ( ((!\a_sel[2]~input_o\ & ((\rf|reg1|q\(15)))) # (\a_sel[2]~input_o\ & (\rf|reg5|q\(15)))) # (\a_sel[3]~input_o\) ) ) ) # ( !\rf|reg13|q\(15) & ( \rf|reg9|q\(15) & ( (!\a_sel[2]~input_o\ & 
-- (((\a_sel[3]~input_o\) # (\rf|reg1|q\(15))))) # (\a_sel[2]~input_o\ & (\rf|reg5|q\(15) & ((!\a_sel[3]~input_o\)))) ) ) ) # ( \rf|reg13|q\(15) & ( !\rf|reg9|q\(15) & ( (!\a_sel[2]~input_o\ & (((\rf|reg1|q\(15) & !\a_sel[3]~input_o\)))) # 
-- (\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\)) # (\rf|reg5|q\(15)))) ) ) ) # ( !\rf|reg13|q\(15) & ( !\rf|reg9|q\(15) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|reg1|q\(15)))) # (\a_sel[2]~input_o\ & (\rf|reg5|q\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \rf|reg5|ALT_INV_q\(15),
	datac => \rf|reg1|ALT_INV_q\(15),
	datad => \ALT_INV_a_sel[3]~input_o\,
	datae => \rf|reg13|ALT_INV_q\(15),
	dataf => \rf|reg9|ALT_INV_q\(15),
	combout => \rf|a1|Mux0~1_combout\);

-- Location: FF_X17_Y2_N34
\rf|reg6|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(15));

-- Location: FF_X21_Y4_N2
\rf|reg14|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(15));

-- Location: FF_X19_Y4_N29
\rf|reg2|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(15));

-- Location: LABCELL_X21_Y4_N27
\rf|a1|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux0~2_combout\ = ( \a_sel[3]~input_o\ & ( \rf|reg2|q\(15) & ( (!\a_sel[2]~input_o\ & (\rf|reg10|q\(15))) # (\a_sel[2]~input_o\ & ((\rf|reg14|q\(15)))) ) ) ) # ( !\a_sel[3]~input_o\ & ( \rf|reg2|q\(15) & ( (!\a_sel[2]~input_o\) # (\rf|reg6|q\(15)) 
-- ) ) ) # ( \a_sel[3]~input_o\ & ( !\rf|reg2|q\(15) & ( (!\a_sel[2]~input_o\ & (\rf|reg10|q\(15))) # (\a_sel[2]~input_o\ & ((\rf|reg14|q\(15)))) ) ) ) # ( !\a_sel[3]~input_o\ & ( !\rf|reg2|q\(15) & ( (\a_sel[2]~input_o\ & \rf|reg6|q\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \rf|reg10|ALT_INV_q\(15),
	datac => \rf|reg6|ALT_INV_q\(15),
	datad => \rf|reg14|ALT_INV_q\(15),
	datae => \ALT_INV_a_sel[3]~input_o\,
	dataf => \rf|reg2|ALT_INV_q\(15),
	combout => \rf|a1|Mux0~2_combout\);

-- Location: FF_X21_Y4_N20
\rf|reg4|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(15));

-- Location: FF_X23_Y4_N14
\rf|reg0|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(15));

-- Location: FF_X21_Y3_N10
\rf|reg12|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(15));

-- Location: FF_X15_Y1_N34
\rf|reg8|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(15));

-- Location: LABCELL_X23_Y4_N27
\rf|a1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux0~0_combout\ = ( \rf|reg12|q\(15) & ( \rf|reg8|q\(15) & ( ((!\a_sel[2]~input_o\ & ((\rf|reg0|q\(15)))) # (\a_sel[2]~input_o\ & (\rf|reg4|q\(15)))) # (\a_sel[3]~input_o\) ) ) ) # ( !\rf|reg12|q\(15) & ( \rf|reg8|q\(15) & ( (!\a_sel[3]~input_o\ & 
-- ((!\a_sel[2]~input_o\ & ((\rf|reg0|q\(15)))) # (\a_sel[2]~input_o\ & (\rf|reg4|q\(15))))) # (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\)))) ) ) ) # ( \rf|reg12|q\(15) & ( !\rf|reg8|q\(15) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & 
-- ((\rf|reg0|q\(15)))) # (\a_sel[2]~input_o\ & (\rf|reg4|q\(15))))) # (\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\)))) ) ) ) # ( !\rf|reg12|q\(15) & ( !\rf|reg8|q\(15) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|reg0|q\(15)))) # 
-- (\a_sel[2]~input_o\ & (\rf|reg4|q\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg4|ALT_INV_q\(15),
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|reg0|ALT_INV_q\(15),
	datad => \ALT_INV_a_sel[2]~input_o\,
	datae => \rf|reg12|ALT_INV_q\(15),
	dataf => \rf|reg8|ALT_INV_q\(15),
	combout => \rf|a1|Mux0~0_combout\);

-- Location: FF_X23_Y4_N50
\rf|reg7|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(15));

-- Location: FF_X18_Y3_N23
\rf|reg3|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(15));

-- Location: FF_X19_Y4_N56
\rf|reg15|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(15));

-- Location: FF_X23_Y4_N23
\rf|reg11|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[15]~67_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(15));

-- Location: LABCELL_X23_Y4_N33
\rf|a1|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux0~3_combout\ = ( \rf|reg11|q\(15) & ( \a_sel[2]~input_o\ & ( (!\a_sel[3]~input_o\ & (\rf|reg7|q\(15))) # (\a_sel[3]~input_o\ & ((\rf|reg15|q\(15)))) ) ) ) # ( !\rf|reg11|q\(15) & ( \a_sel[2]~input_o\ & ( (!\a_sel[3]~input_o\ & (\rf|reg7|q\(15))) 
-- # (\a_sel[3]~input_o\ & ((\rf|reg15|q\(15)))) ) ) ) # ( \rf|reg11|q\(15) & ( !\a_sel[2]~input_o\ & ( (\a_sel[3]~input_o\) # (\rf|reg3|q\(15)) ) ) ) # ( !\rf|reg11|q\(15) & ( !\a_sel[2]~input_o\ & ( (\rf|reg3|q\(15) & !\a_sel[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg7|ALT_INV_q\(15),
	datab => \rf|reg3|ALT_INV_q\(15),
	datac => \ALT_INV_a_sel[3]~input_o\,
	datad => \rf|reg15|ALT_INV_q\(15),
	datae => \rf|reg11|ALT_INV_q\(15),
	dataf => \ALT_INV_a_sel[2]~input_o\,
	combout => \rf|a1|Mux0~3_combout\);

-- Location: LABCELL_X22_Y4_N15
\rf|a1|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux0~4_combout\ = ( \rf|a1|Mux0~0_combout\ & ( \rf|a1|Mux0~3_combout\ & ( (!\a_sel[1]~input_o\ & (((!\a_sel[0]~input_o\)) # (\rf|a1|Mux0~1_combout\))) # (\a_sel[1]~input_o\ & (((\a_sel[0]~input_o\) # (\rf|a1|Mux0~2_combout\)))) ) ) ) # ( 
-- !\rf|a1|Mux0~0_combout\ & ( \rf|a1|Mux0~3_combout\ & ( (!\a_sel[1]~input_o\ & (\rf|a1|Mux0~1_combout\ & ((\a_sel[0]~input_o\)))) # (\a_sel[1]~input_o\ & (((\a_sel[0]~input_o\) # (\rf|a1|Mux0~2_combout\)))) ) ) ) # ( \rf|a1|Mux0~0_combout\ & ( 
-- !\rf|a1|Mux0~3_combout\ & ( (!\a_sel[1]~input_o\ & (((!\a_sel[0]~input_o\)) # (\rf|a1|Mux0~1_combout\))) # (\a_sel[1]~input_o\ & (((\rf|a1|Mux0~2_combout\ & !\a_sel[0]~input_o\)))) ) ) ) # ( !\rf|a1|Mux0~0_combout\ & ( !\rf|a1|Mux0~3_combout\ & ( 
-- (!\a_sel[1]~input_o\ & (\rf|a1|Mux0~1_combout\ & ((\a_sel[0]~input_o\)))) # (\a_sel[1]~input_o\ & (((\rf|a1|Mux0~2_combout\ & !\a_sel[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \rf|a1|ALT_INV_Mux0~1_combout\,
	datac => \rf|a1|ALT_INV_Mux0~2_combout\,
	datad => \ALT_INV_a_sel[0]~input_o\,
	datae => \rf|a1|ALT_INV_Mux0~0_combout\,
	dataf => \rf|a1|ALT_INV_Mux0~3_combout\,
	combout => \rf|a1|Mux0~4_combout\);

-- Location: MLABCELL_X19_Y4_N36
\al_shift|al|lu|m4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|lu|m4|Mux0~0_combout\ = ( \rf|b1|Mux0~4_combout\ & ( \op_sel[1]~input_o\ & ( !\rf|a1|Mux0~4_combout\ $ (((!\op_sel[0]~input_o\ & (\const_sel~input_o\ & !\const_in[15]~input_o\)))) ) ) ) # ( !\rf|b1|Mux0~4_combout\ & ( \op_sel[1]~input_o\ & ( 
-- !\rf|a1|Mux0~4_combout\ $ (((!\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (!\const_in[15]~input_o\))))) ) ) ) # ( \rf|b1|Mux0~4_combout\ & ( !\op_sel[1]~input_o\ & ( (!\op_sel[0]~input_o\ & (\rf|a1|Mux0~4_combout\ & ((!\const_sel~input_o\) # 
-- (\const_in[15]~input_o\)))) # (\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # ((\rf|a1|Mux0~4_combout\) # (\const_in[15]~input_o\)))) ) ) ) # ( !\rf|b1|Mux0~4_combout\ & ( !\op_sel[1]~input_o\ & ( (!\op_sel[0]~input_o\ & (\const_sel~input_o\ & 
-- (\const_in[15]~input_o\ & \rf|a1|Mux0~4_combout\))) # (\op_sel[0]~input_o\ & (((\const_sel~input_o\ & \const_in[15]~input_o\)) # (\rf|a1|Mux0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111010001011101111101010111101010001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \ALT_INV_const_in[15]~input_o\,
	datad => \rf|a1|ALT_INV_Mux0~4_combout\,
	datae => \rf|b1|ALT_INV_Mux0~4_combout\,
	dataf => \ALT_INV_op_sel[1]~input_o\,
	combout => \al_shift|al|lu|m4|Mux0~0_combout\);

-- Location: MLABCELL_X19_Y4_N42
\al_shift|m2|res[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|m2|res[15]~3_combout\ = ( !\op_sel[3]~input_o\ & ( ((\op_sel[2]~input_o\ & (\al_shift|al|lu|m4|Mux0~0_combout\))) ) ) # ( \op_sel[3]~input_o\ & ( (((\op_sel[0]~input_o\ & (\m2|res[1]~11_combout\ & \op_sel[1]~input_o\))) # 
-- (\al_shift|m2|res[15]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000000000010100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_op_sel[2]~input_o\,
	datac => \m2|ALT_INV_res[1]~11_combout\,
	datad => \ALT_INV_op_sel[1]~input_o\,
	datae => \ALT_INV_op_sel[3]~input_o\,
	dataf => \al_shift|m2|ALT_INV_res[15]~2_combout\,
	datag => \al_shift|al|lu|m4|ALT_INV_Mux0~0_combout\,
	combout => \al_shift|m2|res[15]~3_combout\);

-- Location: IOIBUF_X10_Y0_N92
\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\const_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_const_in(10),
	o => \const_in[10]~input_o\);

-- Location: LABCELL_X18_Y2_N6
\al_shift|al|au|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~9_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux13~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[2]~input_o\))))) ) + ( \al_shift|al|au|Add0~6\ ))
-- \al_shift|al|au|Add0~10\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux13~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[2]~input_o\))))) ) + ( \al_shift|al|au|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux13~4_combout\,
	dataf => \ALT_INV_const_in[2]~input_o\,
	cin => \al_shift|al|au|Add0~6\,
	sumout => \al_shift|al|au|Add0~9_sumout\,
	cout => \al_shift|al|au|Add0~10\);

-- Location: LABCELL_X18_Y2_N9
\al_shift|al|au|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~13_sumout\ = SUM(( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux12~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[3]~input_o\))))) ) + ( GND ) + ( \al_shift|al|au|Add0~10\ ))
-- \al_shift|al|au|Add0~14\ = CARRY(( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux12~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[3]~input_o\))))) ) + ( GND ) + ( \al_shift|al|au|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux12~4_combout\,
	datad => \ALT_INV_const_in[3]~input_o\,
	cin => \al_shift|al|au|Add0~10\,
	sumout => \al_shift|al|au|Add0~13_sumout\,
	cout => \al_shift|al|au|Add0~14\);

-- Location: LABCELL_X18_Y2_N12
\al_shift|al|au|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~17_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux11~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[4]~input_o\))))) ) + ( \al_shift|al|au|Add0~14\ ))
-- \al_shift|al|au|Add0~18\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux11~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[4]~input_o\))))) ) + ( \al_shift|al|au|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux11~4_combout\,
	dataf => \ALT_INV_const_in[4]~input_o\,
	cin => \al_shift|al|au|Add0~14\,
	sumout => \al_shift|al|au|Add0~17_sumout\,
	cout => \al_shift|al|au|Add0~18\);

-- Location: LABCELL_X18_Y2_N15
\al_shift|al|au|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~21_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux10~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[5]~input_o\))))) ) + ( \al_shift|al|au|Add0~18\ ))
-- \al_shift|al|au|Add0~22\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux10~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[5]~input_o\))))) ) + ( \al_shift|al|au|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux10~4_combout\,
	dataf => \ALT_INV_const_in[5]~input_o\,
	cin => \al_shift|al|au|Add0~18\,
	sumout => \al_shift|al|au|Add0~21_sumout\,
	cout => \al_shift|al|au|Add0~22\);

-- Location: LABCELL_X18_Y2_N18
\al_shift|al|au|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~25_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux9~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[6]~input_o\))))) ) + ( \al_shift|al|au|Add0~22\ ))
-- \al_shift|al|au|Add0~26\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux9~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[6]~input_o\))))) ) + ( \al_shift|al|au|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux9~4_combout\,
	dataf => \ALT_INV_const_in[6]~input_o\,
	cin => \al_shift|al|au|Add0~22\,
	sumout => \al_shift|al|au|Add0~25_sumout\,
	cout => \al_shift|al|au|Add0~26\);

-- Location: LABCELL_X18_Y2_N21
\al_shift|al|au|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~29_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux8~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[7]~input_o\))))) ) + ( \al_shift|al|au|Add0~26\ ))
-- \al_shift|al|au|Add0~30\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux8~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[7]~input_o\))))) ) + ( \al_shift|al|au|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux8~4_combout\,
	dataf => \ALT_INV_const_in[7]~input_o\,
	cin => \al_shift|al|au|Add0~26\,
	sumout => \al_shift|al|au|Add0~29_sumout\,
	cout => \al_shift|al|au|Add0~30\);

-- Location: LABCELL_X18_Y2_N24
\al_shift|al|au|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~33_sumout\ = SUM(( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux7~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[8]~input_o\))))) ) + ( GND ) + ( \al_shift|al|au|Add0~30\ ))
-- \al_shift|al|au|Add0~34\ = CARRY(( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux7~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[8]~input_o\))))) ) + ( GND ) + ( \al_shift|al|au|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux7~4_combout\,
	datad => \ALT_INV_const_in[8]~input_o\,
	cin => \al_shift|al|au|Add0~30\,
	sumout => \al_shift|al|au|Add0~33_sumout\,
	cout => \al_shift|al|au|Add0~34\);

-- Location: LABCELL_X18_Y2_N27
\al_shift|al|au|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~37_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux6~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[9]~input_o\))))) ) + ( \al_shift|al|au|Add0~34\ ))
-- \al_shift|al|au|Add0~38\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux6~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[9]~input_o\))))) ) + ( \al_shift|al|au|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux6~4_combout\,
	dataf => \ALT_INV_const_in[9]~input_o\,
	cin => \al_shift|al|au|Add0~34\,
	sumout => \al_shift|al|au|Add0~37_sumout\,
	cout => \al_shift|al|au|Add0~38\);

-- Location: LABCELL_X18_Y2_N30
\al_shift|al|au|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~41_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux5~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[10]~input_o\))))) ) + ( \al_shift|al|au|Add0~38\ ))
-- \al_shift|al|au|Add0~42\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux5~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[10]~input_o\))))) ) + ( \al_shift|al|au|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux5~4_combout\,
	dataf => \ALT_INV_const_in[10]~input_o\,
	cin => \al_shift|al|au|Add0~38\,
	sumout => \al_shift|al|au|Add0~41_sumout\,
	cout => \al_shift|al|au|Add0~42\);

-- Location: LABCELL_X18_Y2_N33
\al_shift|al|au|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~45_sumout\ = SUM(( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux4~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[11]~input_o\))))) ) + ( GND ) + ( \al_shift|al|au|Add0~42\ ))
-- \al_shift|al|au|Add0~46\ = CARRY(( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux4~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[11]~input_o\))))) ) + ( GND ) + ( \al_shift|al|au|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux4~4_combout\,
	datad => \ALT_INV_const_in[11]~input_o\,
	cin => \al_shift|al|au|Add0~42\,
	sumout => \al_shift|al|au|Add0~45_sumout\,
	cout => \al_shift|al|au|Add0~46\);

-- Location: LABCELL_X18_Y2_N36
\al_shift|al|au|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~49_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux3~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[12]~input_o\))))) ) + ( \al_shift|al|au|Add0~46\ ))
-- \al_shift|al|au|Add0~50\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux3~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[12]~input_o\))))) ) + ( \al_shift|al|au|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux3~4_combout\,
	dataf => \ALT_INV_const_in[12]~input_o\,
	cin => \al_shift|al|au|Add0~46\,
	sumout => \al_shift|al|au|Add0~49_sumout\,
	cout => \al_shift|al|au|Add0~50\);

-- Location: LABCELL_X18_Y2_N39
\al_shift|al|au|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~53_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux2~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[13]~input_o\))))) ) + ( \al_shift|al|au|Add0~50\ ))
-- \al_shift|al|au|Add0~54\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux2~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[13]~input_o\))))) ) + ( \al_shift|al|au|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux2~4_combout\,
	dataf => \ALT_INV_const_in[13]~input_o\,
	cin => \al_shift|al|au|Add0~50\,
	sumout => \al_shift|al|au|Add0~53_sumout\,
	cout => \al_shift|al|au|Add0~54\);

-- Location: LABCELL_X18_Y2_N42
\al_shift|al|au|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~57_sumout\ = SUM(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux1~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[14]~input_o\))))) ) + ( \al_shift|al|au|Add0~54\ ))
-- \al_shift|al|au|Add0~58\ = CARRY(( GND ) + ( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux1~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[14]~input_o\))))) ) + ( \al_shift|al|au|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux1~4_combout\,
	dataf => \ALT_INV_const_in[14]~input_o\,
	cin => \al_shift|al|au|Add0~54\,
	sumout => \al_shift|al|au|Add0~57_sumout\,
	cout => \al_shift|al|au|Add0~58\);

-- Location: LABCELL_X18_Y2_N45
\al_shift|al|au|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|Add0~61_sumout\ = SUM(( !\op_sel[0]~input_o\ $ (((!\const_sel~input_o\ & (!\rf|b1|Mux0~4_combout\)) # (\const_sel~input_o\ & ((!\const_in[15]~input_o\))))) ) + ( GND ) + ( \al_shift|al|au|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux0~4_combout\,
	datad => \ALT_INV_const_in[15]~input_o\,
	cin => \al_shift|al|au|Add0~58\,
	sumout => \al_shift|al|au|Add0~61_sumout\);

-- Location: MLABCELL_X19_Y4_N21
\al_shift|m2|res[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|m2|res[15]~1_combout\ = ( \al_shift|al|au|Add0~61_sumout\ & ( (!\op_sel[2]~input_o\ & (!\op_sel[3]~input_o\ & !\rf|a1|Mux0~4_combout\)) ) ) # ( !\al_shift|al|au|Add0~61_sumout\ & ( (!\op_sel[2]~input_o\ & (!\op_sel[3]~input_o\ & 
-- \rf|a1|Mux0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[2]~input_o\,
	datab => \ALT_INV_op_sel[3]~input_o\,
	datac => \rf|a1|ALT_INV_Mux0~4_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~61_sumout\,
	combout => \al_shift|m2|res[15]~1_combout\);

-- Location: MLABCELL_X19_Y4_N0
\al_shift|m2|res[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|m2|res[15]~0_combout\ = ( \al_shift|al|au|Add0~61_sumout\ & ( (\rf|a1|Mux0~4_combout\ & (!\op_sel[2]~input_o\ & !\op_sel[3]~input_o\)) ) ) # ( !\al_shift|al|au|Add0~61_sumout\ & ( (!\rf|a1|Mux0~4_combout\ & (!\op_sel[2]~input_o\ & 
-- !\op_sel[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|a1|ALT_INV_Mux0~4_combout\,
	datac => \ALT_INV_op_sel[2]~input_o\,
	datad => \ALT_INV_op_sel[3]~input_o\,
	dataf => \al_shift|al|au|ALT_INV_Add0~61_sumout\,
	combout => \al_shift|m2|res[15]~0_combout\);

-- Location: FF_X22_Y4_N32
\rf|reg7|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(13));

-- Location: FF_X21_Y2_N14
\rf|reg11|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(13));

-- Location: FF_X21_Y2_N5
\rf|reg15|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(13));

-- Location: LABCELL_X22_Y4_N33
\rf|a1|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux2~3_combout\ = ( \rf|reg11|q\(13) & ( \rf|reg15|q\(13) & ( ((!\a_sel[2]~input_o\ & ((\rf|reg3|q\(13)))) # (\a_sel[2]~input_o\ & (\rf|reg7|q\(13)))) # (\a_sel[3]~input_o\) ) ) ) # ( !\rf|reg11|q\(13) & ( \rf|reg15|q\(13) & ( (!\a_sel[2]~input_o\ 
-- & (((!\a_sel[3]~input_o\ & \rf|reg3|q\(13))))) # (\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\)) # (\rf|reg7|q\(13)))) ) ) ) # ( \rf|reg11|q\(13) & ( !\rf|reg15|q\(13) & ( (!\a_sel[2]~input_o\ & (((\rf|reg3|q\(13)) # (\a_sel[3]~input_o\)))) # 
-- (\a_sel[2]~input_o\ & (\rf|reg7|q\(13) & (!\a_sel[3]~input_o\))) ) ) ) # ( !\rf|reg11|q\(13) & ( !\rf|reg15|q\(13) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|reg3|q\(13)))) # (\a_sel[2]~input_o\ & (\rf|reg7|q\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \rf|reg7|ALT_INV_q\(13),
	datac => \ALT_INV_a_sel[3]~input_o\,
	datad => \rf|reg3|ALT_INV_q\(13),
	datae => \rf|reg11|ALT_INV_q\(13),
	dataf => \rf|reg15|ALT_INV_q\(13),
	combout => \rf|a1|Mux2~3_combout\);

-- Location: FF_X21_Y4_N26
\rf|reg14|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(13));

-- Location: FF_X17_Y2_N40
\rf|reg6|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(13));

-- Location: FF_X21_Y4_N56
\rf|reg10|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(13));

-- Location: FF_X22_Y3_N26
\rf|reg2|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(13));

-- Location: LABCELL_X21_Y4_N57
\rf|a1|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux2~2_combout\ = ( \rf|reg10|q\(13) & ( \rf|reg2|q\(13) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & ((\rf|reg6|q\(13)))) # (\a_sel[3]~input_o\ & (\rf|reg14|q\(13)))) ) ) ) # ( !\rf|reg10|q\(13) & ( \rf|reg2|q\(13) & ( (!\a_sel[3]~input_o\ 
-- & (((!\a_sel[2]~input_o\) # (\rf|reg6|q\(13))))) # (\a_sel[3]~input_o\ & (\rf|reg14|q\(13) & ((\a_sel[2]~input_o\)))) ) ) ) # ( \rf|reg10|q\(13) & ( !\rf|reg2|q\(13) & ( (!\a_sel[3]~input_o\ & (((\rf|reg6|q\(13) & \a_sel[2]~input_o\)))) # 
-- (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\)) # (\rf|reg14|q\(13)))) ) ) ) # ( !\rf|reg10|q\(13) & ( !\rf|reg2|q\(13) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg6|q\(13)))) # (\a_sel[3]~input_o\ & (\rf|reg14|q\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg14|ALT_INV_q\(13),
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|reg6|ALT_INV_q\(13),
	datad => \ALT_INV_a_sel[2]~input_o\,
	datae => \rf|reg10|ALT_INV_q\(13),
	dataf => \rf|reg2|ALT_INV_q\(13),
	combout => \rf|a1|Mux2~2_combout\);

-- Location: FF_X21_Y4_N50
\rf|reg4|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(13));

-- Location: FF_X22_Y4_N44
\rf|reg12|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(13));

-- Location: FF_X18_Y4_N29
\rf|reg0|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(13));

-- Location: FF_X21_Y1_N58
\rf|reg8|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(13));

-- Location: LABCELL_X18_Y4_N6
\rf|a1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux2~0_combout\ = ( \a_sel[3]~input_o\ & ( \rf|reg8|q\(13) & ( (!\a_sel[2]~input_o\) # (\rf|reg12|q\(13)) ) ) ) # ( !\a_sel[3]~input_o\ & ( \rf|reg8|q\(13) & ( (!\a_sel[2]~input_o\ & ((\rf|reg0|q\(13)))) # (\a_sel[2]~input_o\ & (\rf|reg4|q\(13))) ) 
-- ) ) # ( \a_sel[3]~input_o\ & ( !\rf|reg8|q\(13) & ( (\rf|reg12|q\(13) & \a_sel[2]~input_o\) ) ) ) # ( !\a_sel[3]~input_o\ & ( !\rf|reg8|q\(13) & ( (!\a_sel[2]~input_o\ & ((\rf|reg0|q\(13)))) # (\a_sel[2]~input_o\ & (\rf|reg4|q\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg4|ALT_INV_q\(13),
	datab => \rf|reg12|ALT_INV_q\(13),
	datac => \rf|reg0|ALT_INV_q\(13),
	datad => \ALT_INV_a_sel[2]~input_o\,
	datae => \ALT_INV_a_sel[3]~input_o\,
	dataf => \rf|reg8|ALT_INV_q\(13),
	combout => \rf|a1|Mux2~0_combout\);

-- Location: FF_X18_Y4_N53
\rf|reg1|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(13));

-- Location: LABCELL_X22_Y1_N21
\rf|reg13|q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg13|q[13]~feeder_combout\ = ( \m2|res[13]~61_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[13]~61_combout\,
	combout => \rf|reg13|q[13]~feeder_combout\);

-- Location: FF_X22_Y1_N23
\rf|reg13|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg13|q[13]~feeder_combout\,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(13));

-- Location: FF_X22_Y1_N14
\rf|reg5|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(13));

-- Location: FF_X22_Y1_N32
\rf|reg9|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(13));

-- Location: LABCELL_X18_Y4_N33
\rf|a1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux2~1_combout\ = ( \rf|reg9|q\(13) & ( \a_sel[3]~input_o\ & ( (!\a_sel[2]~input_o\) # (\rf|reg13|q\(13)) ) ) ) # ( !\rf|reg9|q\(13) & ( \a_sel[3]~input_o\ & ( (\rf|reg13|q\(13) & \a_sel[2]~input_o\) ) ) ) # ( \rf|reg9|q\(13) & ( 
-- !\a_sel[3]~input_o\ & ( (!\a_sel[2]~input_o\ & (\rf|reg1|q\(13))) # (\a_sel[2]~input_o\ & ((\rf|reg5|q\(13)))) ) ) ) # ( !\rf|reg9|q\(13) & ( !\a_sel[3]~input_o\ & ( (!\a_sel[2]~input_o\ & (\rf|reg1|q\(13))) # (\a_sel[2]~input_o\ & ((\rf|reg5|q\(13)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg1|ALT_INV_q\(13),
	datab => \rf|reg13|ALT_INV_q\(13),
	datac => \rf|reg5|ALT_INV_q\(13),
	datad => \ALT_INV_a_sel[2]~input_o\,
	datae => \rf|reg9|ALT_INV_q\(13),
	dataf => \ALT_INV_a_sel[3]~input_o\,
	combout => \rf|a1|Mux2~1_combout\);

-- Location: LABCELL_X22_Y4_N24
\rf|a1|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux2~4_combout\ = ( \rf|a1|Mux2~0_combout\ & ( \rf|a1|Mux2~1_combout\ & ( (!\a_sel[1]~input_o\) # ((!\a_sel[0]~input_o\ & ((\rf|a1|Mux2~2_combout\))) # (\a_sel[0]~input_o\ & (\rf|a1|Mux2~3_combout\))) ) ) ) # ( !\rf|a1|Mux2~0_combout\ & ( 
-- \rf|a1|Mux2~1_combout\ & ( (!\a_sel[1]~input_o\ & (((\a_sel[0]~input_o\)))) # (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|a1|Mux2~2_combout\))) # (\a_sel[0]~input_o\ & (\rf|a1|Mux2~3_combout\)))) ) ) ) # ( \rf|a1|Mux2~0_combout\ & ( 
-- !\rf|a1|Mux2~1_combout\ & ( (!\a_sel[1]~input_o\ & (((!\a_sel[0]~input_o\)))) # (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|a1|Mux2~2_combout\))) # (\a_sel[0]~input_o\ & (\rf|a1|Mux2~3_combout\)))) ) ) ) # ( !\rf|a1|Mux2~0_combout\ & ( 
-- !\rf|a1|Mux2~1_combout\ & ( (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|a1|Mux2~2_combout\))) # (\a_sel[0]~input_o\ & (\rf|a1|Mux2~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_a_sel[1]~input_o\,
	datac => \ALT_INV_a_sel[0]~input_o\,
	datad => \rf|a1|ALT_INV_Mux2~2_combout\,
	datae => \rf|a1|ALT_INV_Mux2~0_combout\,
	dataf => \rf|a1|ALT_INV_Mux2~1_combout\,
	combout => \rf|a1|Mux2~4_combout\);

-- Location: LABCELL_X15_Y1_N0
\rf|reg11|q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg11|q[14]~feeder_combout\ = ( \m2|res[14]~66_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[14]~66_combout\,
	combout => \rf|reg11|q[14]~feeder_combout\);

-- Location: FF_X15_Y1_N2
\rf|reg11|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg11|q[14]~feeder_combout\,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(14));

-- Location: LABCELL_X15_Y1_N6
\rf|reg10|q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg10|q[14]~feeder_combout\ = ( \m2|res[14]~66_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[14]~66_combout\,
	combout => \rf|reg10|q[14]~feeder_combout\);

-- Location: FF_X15_Y1_N8
\rf|reg10|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg10|q[14]~feeder_combout\,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(14));

-- Location: FF_X15_Y1_N17
\rf|reg8|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(14));

-- Location: FF_X22_Y1_N28
\rf|reg9|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(14));

-- Location: LABCELL_X15_Y1_N45
\rf|a1|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux1~2_combout\ = ( \a_sel[0]~input_o\ & ( \rf|reg9|q\(14) & ( (!\a_sel[1]~input_o\) # (\rf|reg11|q\(14)) ) ) ) # ( !\a_sel[0]~input_o\ & ( \rf|reg9|q\(14) & ( (!\a_sel[1]~input_o\ & ((\rf|reg8|q\(14)))) # (\a_sel[1]~input_o\ & (\rf|reg10|q\(14))) 
-- ) ) ) # ( \a_sel[0]~input_o\ & ( !\rf|reg9|q\(14) & ( (\rf|reg11|q\(14) & \a_sel[1]~input_o\) ) ) ) # ( !\a_sel[0]~input_o\ & ( !\rf|reg9|q\(14) & ( (!\a_sel[1]~input_o\ & ((\rf|reg8|q\(14)))) # (\a_sel[1]~input_o\ & (\rf|reg10|q\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg11|ALT_INV_q\(14),
	datab => \rf|reg10|ALT_INV_q\(14),
	datac => \rf|reg8|ALT_INV_q\(14),
	datad => \ALT_INV_a_sel[1]~input_o\,
	datae => \ALT_INV_a_sel[0]~input_o\,
	dataf => \rf|reg9|ALT_INV_q\(14),
	combout => \rf|a1|Mux1~2_combout\);

-- Location: FF_X14_Y2_N29
\rf|reg6|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(14));

-- Location: FF_X18_Y1_N53
\rf|reg5|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(14));

-- Location: FF_X14_Y2_N8
\rf|reg7|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(14));

-- Location: MLABCELL_X14_Y1_N30
\rf|a1|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux1~1_combout\ = ( \rf|reg5|q\(14) & ( \rf|reg7|q\(14) & ( ((!\a_sel[1]~input_o\ & (\rf|reg4|q\(14))) # (\a_sel[1]~input_o\ & ((\rf|reg6|q\(14))))) # (\a_sel[0]~input_o\) ) ) ) # ( !\rf|reg5|q\(14) & ( \rf|reg7|q\(14) & ( (!\a_sel[0]~input_o\ & 
-- ((!\a_sel[1]~input_o\ & (\rf|reg4|q\(14))) # (\a_sel[1]~input_o\ & ((\rf|reg6|q\(14)))))) # (\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\)))) ) ) ) # ( \rf|reg5|q\(14) & ( !\rf|reg7|q\(14) & ( (!\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & 
-- (\rf|reg4|q\(14))) # (\a_sel[1]~input_o\ & ((\rf|reg6|q\(14)))))) # (\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\)))) ) ) ) # ( !\rf|reg5|q\(14) & ( !\rf|reg7|q\(14) & ( (!\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|reg4|q\(14))) # 
-- (\a_sel[1]~input_o\ & ((\rf|reg6|q\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg4|ALT_INV_q\(14),
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg6|ALT_INV_q\(14),
	datad => \ALT_INV_a_sel[1]~input_o\,
	datae => \rf|reg5|ALT_INV_q\(14),
	dataf => \rf|reg7|ALT_INV_q\(14),
	combout => \rf|a1|Mux1~1_combout\);

-- Location: FF_X17_Y1_N56
\rf|reg12|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(14));

-- Location: FF_X17_Y1_N14
\rf|reg14|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(14));

-- Location: FF_X17_Y4_N56
\rf|reg13|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(14));

-- Location: FF_X18_Y1_N38
\rf|reg15|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(14));

-- Location: LABCELL_X15_Y1_N12
\rf|a1|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux1~3_combout\ = ( \a_sel[0]~input_o\ & ( \rf|reg15|q\(14) & ( (\a_sel[1]~input_o\) # (\rf|reg13|q\(14)) ) ) ) # ( !\a_sel[0]~input_o\ & ( \rf|reg15|q\(14) & ( (!\a_sel[1]~input_o\ & (\rf|reg12|q\(14))) # (\a_sel[1]~input_o\ & 
-- ((\rf|reg14|q\(14)))) ) ) ) # ( \a_sel[0]~input_o\ & ( !\rf|reg15|q\(14) & ( (\rf|reg13|q\(14) & !\a_sel[1]~input_o\) ) ) ) # ( !\a_sel[0]~input_o\ & ( !\rf|reg15|q\(14) & ( (!\a_sel[1]~input_o\ & (\rf|reg12|q\(14))) # (\a_sel[1]~input_o\ & 
-- ((\rf|reg14|q\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg12|ALT_INV_q\(14),
	datab => \rf|reg14|ALT_INV_q\(14),
	datac => \rf|reg13|ALT_INV_q\(14),
	datad => \ALT_INV_a_sel[1]~input_o\,
	datae => \ALT_INV_a_sel[0]~input_o\,
	dataf => \rf|reg15|ALT_INV_q\(14),
	combout => \rf|a1|Mux1~3_combout\);

-- Location: FF_X18_Y4_N35
\rf|reg2|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(14));

-- Location: FF_X18_Y4_N8
\rf|reg1|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(14));

-- Location: FF_X18_Y4_N38
\rf|reg0|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[14]~66_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(14));

-- Location: MLABCELL_X19_Y1_N48
\rf|reg3|q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg3|q[14]~feeder_combout\ = ( \m2|res[14]~66_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[14]~66_combout\,
	combout => \rf|reg3|q[14]~feeder_combout\);

-- Location: FF_X19_Y1_N50
\rf|reg3|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg3|q[14]~feeder_combout\,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(14));

-- Location: LABCELL_X18_Y4_N42
\rf|a1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux1~0_combout\ = ( \rf|reg0|q\(14) & ( \rf|reg3|q\(14) & ( (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\)) # (\rf|reg2|q\(14)))) # (\a_sel[0]~input_o\ & (((\rf|reg1|q\(14)) # (\a_sel[1]~input_o\)))) ) ) ) # ( !\rf|reg0|q\(14) & ( \rf|reg3|q\(14) & 
-- ( (!\a_sel[0]~input_o\ & (\rf|reg2|q\(14) & (\a_sel[1]~input_o\))) # (\a_sel[0]~input_o\ & (((\rf|reg1|q\(14)) # (\a_sel[1]~input_o\)))) ) ) ) # ( \rf|reg0|q\(14) & ( !\rf|reg3|q\(14) & ( (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\)) # 
-- (\rf|reg2|q\(14)))) # (\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\ & \rf|reg1|q\(14))))) ) ) ) # ( !\rf|reg0|q\(14) & ( !\rf|reg3|q\(14) & ( (!\a_sel[0]~input_o\ & (\rf|reg2|q\(14) & (\a_sel[1]~input_o\))) # (\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\ & 
-- \rf|reg1|q\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg2|ALT_INV_q\(14),
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|reg1|ALT_INV_q\(14),
	datae => \rf|reg0|ALT_INV_q\(14),
	dataf => \rf|reg3|ALT_INV_q\(14),
	combout => \rf|a1|Mux1~0_combout\);

-- Location: LABCELL_X17_Y1_N30
\rf|a1|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux1~4_combout\ = ( \rf|a1|Mux1~3_combout\ & ( \rf|a1|Mux1~0_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\) # ((\rf|a1|Mux1~2_combout\)))) # (\a_sel[2]~input_o\ & (((\rf|a1|Mux1~1_combout\)) # (\a_sel[3]~input_o\))) ) ) ) # ( 
-- !\rf|a1|Mux1~3_combout\ & ( \rf|a1|Mux1~0_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\) # ((\rf|a1|Mux1~2_combout\)))) # (\a_sel[2]~input_o\ & (!\a_sel[3]~input_o\ & ((\rf|a1|Mux1~1_combout\)))) ) ) ) # ( \rf|a1|Mux1~3_combout\ & ( 
-- !\rf|a1|Mux1~0_combout\ & ( (!\a_sel[2]~input_o\ & (\a_sel[3]~input_o\ & (\rf|a1|Mux1~2_combout\))) # (\a_sel[2]~input_o\ & (((\rf|a1|Mux1~1_combout\)) # (\a_sel[3]~input_o\))) ) ) ) # ( !\rf|a1|Mux1~3_combout\ & ( !\rf|a1|Mux1~0_combout\ & ( 
-- (!\a_sel[2]~input_o\ & (\a_sel[3]~input_o\ & (\rf|a1|Mux1~2_combout\))) # (\a_sel[2]~input_o\ & (!\a_sel[3]~input_o\ & ((\rf|a1|Mux1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|a1|ALT_INV_Mux1~2_combout\,
	datad => \rf|a1|ALT_INV_Mux1~1_combout\,
	datae => \rf|a1|ALT_INV_Mux1~3_combout\,
	dataf => \rf|a1|ALT_INV_Mux1~0_combout\,
	combout => \rf|a1|Mux1~4_combout\);

-- Location: LABCELL_X22_Y1_N18
\rf|reg13|q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg13|q[11]~feeder_combout\ = ( \m2|res[11]~72_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[11]~72_combout\,
	combout => \rf|reg13|q[11]~feeder_combout\);

-- Location: FF_X22_Y1_N20
\rf|reg13|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg13|q[11]~feeder_combout\,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(11));

-- Location: FF_X23_Y2_N50
\rf|reg5|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(11));

-- Location: FF_X23_Y2_N26
\rf|reg1|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(11));

-- Location: FF_X22_Y1_N2
\rf|reg9|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(11));

-- Location: LABCELL_X23_Y2_N24
\rf|a1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux4~1_combout\ = ( \rf|reg1|q\(11) & ( \rf|reg9|q\(11) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & ((\rf|reg5|q\(11)))) # (\a_sel[3]~input_o\ & (\rf|reg13|q\(11)))) ) ) ) # ( !\rf|reg1|q\(11) & ( \rf|reg9|q\(11) & ( (!\a_sel[3]~input_o\ & 
-- (((\rf|reg5|q\(11) & \a_sel[2]~input_o\)))) # (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\)) # (\rf|reg13|q\(11)))) ) ) ) # ( \rf|reg1|q\(11) & ( !\rf|reg9|q\(11) & ( (!\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\) # (\rf|reg5|q\(11))))) # 
-- (\a_sel[3]~input_o\ & (\rf|reg13|q\(11) & ((\a_sel[2]~input_o\)))) ) ) ) # ( !\rf|reg1|q\(11) & ( !\rf|reg9|q\(11) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg5|q\(11)))) # (\a_sel[3]~input_o\ & (\rf|reg13|q\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[3]~input_o\,
	datab => \rf|reg13|ALT_INV_q\(11),
	datac => \rf|reg5|ALT_INV_q\(11),
	datad => \ALT_INV_a_sel[2]~input_o\,
	datae => \rf|reg1|ALT_INV_q\(11),
	dataf => \rf|reg9|ALT_INV_q\(11),
	combout => \rf|a1|Mux4~1_combout\);

-- Location: LABCELL_X21_Y2_N57
\rf|reg3|q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg3|q[11]~feeder_combout\ = ( \m2|res[11]~72_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[11]~72_combout\,
	combout => \rf|reg3|q[11]~feeder_combout\);

-- Location: FF_X21_Y2_N59
\rf|reg3|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg3|q[11]~feeder_combout\,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(11));

-- Location: FF_X22_Y3_N47
\rf|reg7|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(11));

-- Location: FF_X21_Y2_N2
\rf|reg15|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(11));

-- Location: LABCELL_X22_Y3_N48
\rf|a1|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux4~3_combout\ = ( \rf|reg11|q\(11) & ( \rf|reg15|q\(11) & ( ((!\a_sel[2]~input_o\ & (\rf|reg3|q\(11))) # (\a_sel[2]~input_o\ & ((\rf|reg7|q\(11))))) # (\a_sel[3]~input_o\) ) ) ) # ( !\rf|reg11|q\(11) & ( \rf|reg15|q\(11) & ( (!\a_sel[2]~input_o\ 
-- & (\rf|reg3|q\(11) & (!\a_sel[3]~input_o\))) # (\a_sel[2]~input_o\ & (((\rf|reg7|q\(11)) # (\a_sel[3]~input_o\)))) ) ) ) # ( \rf|reg11|q\(11) & ( !\rf|reg15|q\(11) & ( (!\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\)) # (\rf|reg3|q\(11)))) # 
-- (\a_sel[2]~input_o\ & (((!\a_sel[3]~input_o\ & \rf|reg7|q\(11))))) ) ) ) # ( !\rf|reg11|q\(11) & ( !\rf|reg15|q\(11) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & (\rf|reg3|q\(11))) # (\a_sel[2]~input_o\ & ((\rf|reg7|q\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg3|ALT_INV_q\(11),
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \ALT_INV_a_sel[3]~input_o\,
	datad => \rf|reg7|ALT_INV_q\(11),
	datae => \rf|reg11|ALT_INV_q\(11),
	dataf => \rf|reg15|ALT_INV_q\(11),
	combout => \rf|a1|Mux4~3_combout\);

-- Location: FF_X21_Y4_N47
\rf|reg4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(11));

-- Location: LABCELL_X22_Y4_N3
\rf|reg12|q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg12|q[11]~feeder_combout\ = ( \m2|res[11]~72_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[11]~72_combout\,
	combout => \rf|reg12|q[11]~feeder_combout\);

-- Location: FF_X22_Y4_N5
\rf|reg12|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg12|q[11]~feeder_combout\,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(11));

-- Location: FF_X22_Y3_N55
\rf|reg0|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(11));

-- Location: MLABCELL_X19_Y1_N39
\rf|reg8|q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg8|q[11]~feeder_combout\ = ( \m2|res[11]~72_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[11]~72_combout\,
	combout => \rf|reg8|q[11]~feeder_combout\);

-- Location: FF_X19_Y1_N41
\rf|reg8|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg8|q[11]~feeder_combout\,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(11));

-- Location: LABCELL_X22_Y3_N54
\rf|a1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux4~0_combout\ = ( \rf|reg0|q\(11) & ( \rf|reg8|q\(11) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & (\rf|reg4|q\(11))) # (\a_sel[3]~input_o\ & ((\rf|reg12|q\(11))))) ) ) ) # ( !\rf|reg0|q\(11) & ( \rf|reg8|q\(11) & ( (!\a_sel[3]~input_o\ & 
-- (\rf|reg4|q\(11) & ((\a_sel[2]~input_o\)))) # (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\) # (\rf|reg12|q\(11))))) ) ) ) # ( \rf|reg0|q\(11) & ( !\rf|reg8|q\(11) & ( (!\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\)) # (\rf|reg4|q\(11)))) # 
-- (\a_sel[3]~input_o\ & (((\rf|reg12|q\(11) & \a_sel[2]~input_o\)))) ) ) ) # ( !\rf|reg0|q\(11) & ( !\rf|reg8|q\(11) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|reg4|q\(11))) # (\a_sel[3]~input_o\ & ((\rf|reg12|q\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[3]~input_o\,
	datab => \rf|reg4|ALT_INV_q\(11),
	datac => \rf|reg12|ALT_INV_q\(11),
	datad => \ALT_INV_a_sel[2]~input_o\,
	datae => \rf|reg0|ALT_INV_q\(11),
	dataf => \rf|reg8|ALT_INV_q\(11),
	combout => \rf|a1|Mux4~0_combout\);

-- Location: FF_X21_Y4_N8
\rf|reg14|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(11));

-- Location: FF_X21_Y4_N38
\rf|reg10|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(11));

-- Location: FF_X22_Y3_N14
\rf|reg2|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(11));

-- Location: FF_X17_Y2_N32
\rf|reg6|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(11));

-- Location: LABCELL_X21_Y4_N39
\rf|a1|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux4~2_combout\ = ( \rf|reg2|q\(11) & ( \rf|reg6|q\(11) & ( (!\a_sel[3]~input_o\) # ((!\a_sel[2]~input_o\ & ((\rf|reg10|q\(11)))) # (\a_sel[2]~input_o\ & (\rf|reg14|q\(11)))) ) ) ) # ( !\rf|reg2|q\(11) & ( \rf|reg6|q\(11) & ( (!\a_sel[2]~input_o\ & 
-- (\a_sel[3]~input_o\ & ((\rf|reg10|q\(11))))) # (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\) # ((\rf|reg14|q\(11))))) ) ) ) # ( \rf|reg2|q\(11) & ( !\rf|reg6|q\(11) & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\) # ((\rf|reg10|q\(11))))) # 
-- (\a_sel[2]~input_o\ & (\a_sel[3]~input_o\ & (\rf|reg14|q\(11)))) ) ) ) # ( !\rf|reg2|q\(11) & ( !\rf|reg6|q\(11) & ( (\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|reg10|q\(11)))) # (\a_sel[2]~input_o\ & (\rf|reg14|q\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|reg14|ALT_INV_q\(11),
	datad => \rf|reg10|ALT_INV_q\(11),
	datae => \rf|reg2|ALT_INV_q\(11),
	dataf => \rf|reg6|ALT_INV_q\(11),
	combout => \rf|a1|Mux4~2_combout\);

-- Location: LABCELL_X22_Y3_N6
\rf|a1|Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux4~4_combout\ = ( \rf|a1|Mux4~0_combout\ & ( \rf|a1|Mux4~2_combout\ & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & (\rf|a1|Mux4~1_combout\)) # (\a_sel[1]~input_o\ & ((\rf|a1|Mux4~3_combout\)))) ) ) ) # ( !\rf|a1|Mux4~0_combout\ & ( 
-- \rf|a1|Mux4~2_combout\ & ( (!\a_sel[0]~input_o\ & (\a_sel[1]~input_o\)) # (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|a1|Mux4~1_combout\)) # (\a_sel[1]~input_o\ & ((\rf|a1|Mux4~3_combout\))))) ) ) ) # ( \rf|a1|Mux4~0_combout\ & ( 
-- !\rf|a1|Mux4~2_combout\ & ( (!\a_sel[0]~input_o\ & (!\a_sel[1]~input_o\)) # (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|a1|Mux4~1_combout\)) # (\a_sel[1]~input_o\ & ((\rf|a1|Mux4~3_combout\))))) ) ) ) # ( !\rf|a1|Mux4~0_combout\ & ( 
-- !\rf|a1|Mux4~2_combout\ & ( (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|a1|Mux4~1_combout\)) # (\a_sel[1]~input_o\ & ((\rf|a1|Mux4~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[0]~input_o\,
	datab => \ALT_INV_a_sel[1]~input_o\,
	datac => \rf|a1|ALT_INV_Mux4~1_combout\,
	datad => \rf|a1|ALT_INV_Mux4~3_combout\,
	datae => \rf|a1|ALT_INV_Mux4~0_combout\,
	dataf => \rf|a1|ALT_INV_Mux4~2_combout\,
	combout => \rf|a1|Mux4~4_combout\);

-- Location: FF_X23_Y2_N44
\rf|reg5|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(12));

-- Location: FF_X22_Y3_N32
\rf|reg7|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(12));

-- Location: FF_X17_Y2_N19
\rf|reg4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(12));

-- Location: LABCELL_X22_Y3_N15
\rf|a1|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux3~1_combout\ = ( \rf|reg4|q\(12) & ( \rf|reg6|q\(12) & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & (\rf|reg5|q\(12))) # (\a_sel[1]~input_o\ & ((\rf|reg7|q\(12))))) ) ) ) # ( !\rf|reg4|q\(12) & ( \rf|reg6|q\(12) & ( (!\a_sel[1]~input_o\ & 
-- (\rf|reg5|q\(12) & ((\a_sel[0]~input_o\)))) # (\a_sel[1]~input_o\ & (((!\a_sel[0]~input_o\) # (\rf|reg7|q\(12))))) ) ) ) # ( \rf|reg4|q\(12) & ( !\rf|reg6|q\(12) & ( (!\a_sel[1]~input_o\ & (((!\a_sel[0]~input_o\)) # (\rf|reg5|q\(12)))) # 
-- (\a_sel[1]~input_o\ & (((\rf|reg7|q\(12) & \a_sel[0]~input_o\)))) ) ) ) # ( !\rf|reg4|q\(12) & ( !\rf|reg6|q\(12) & ( (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|reg5|q\(12))) # (\a_sel[1]~input_o\ & ((\rf|reg7|q\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg5|ALT_INV_q\(12),
	datab => \ALT_INV_a_sel[1]~input_o\,
	datac => \rf|reg7|ALT_INV_q\(12),
	datad => \ALT_INV_a_sel[0]~input_o\,
	datae => \rf|reg4|ALT_INV_q\(12),
	dataf => \rf|reg6|ALT_INV_q\(12),
	combout => \rf|a1|Mux3~1_combout\);

-- Location: FF_X23_Y2_N20
\rf|reg1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(12));

-- Location: FF_X22_Y3_N59
\rf|reg0|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(12));

-- Location: FF_X22_Y3_N29
\rf|reg2|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(12));

-- Location: FF_X19_Y2_N5
\rf|reg3|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(12));

-- Location: LABCELL_X22_Y3_N24
\rf|a1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux3~0_combout\ = ( \rf|reg2|q\(12) & ( \rf|reg3|q\(12) & ( ((!\a_sel[0]~input_o\ & ((\rf|reg0|q\(12)))) # (\a_sel[0]~input_o\ & (\rf|reg1|q\(12)))) # (\a_sel[1]~input_o\) ) ) ) # ( !\rf|reg2|q\(12) & ( \rf|reg3|q\(12) & ( (!\a_sel[1]~input_o\ & 
-- ((!\a_sel[0]~input_o\ & ((\rf|reg0|q\(12)))) # (\a_sel[0]~input_o\ & (\rf|reg1|q\(12))))) # (\a_sel[1]~input_o\ & (((\a_sel[0]~input_o\)))) ) ) ) # ( \rf|reg2|q\(12) & ( !\rf|reg3|q\(12) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & 
-- ((\rf|reg0|q\(12)))) # (\a_sel[0]~input_o\ & (\rf|reg1|q\(12))))) # (\a_sel[1]~input_o\ & (((!\a_sel[0]~input_o\)))) ) ) ) # ( !\rf|reg2|q\(12) & ( !\rf|reg3|q\(12) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|reg0|q\(12)))) # 
-- (\a_sel[0]~input_o\ & (\rf|reg1|q\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg1|ALT_INV_q\(12),
	datab => \ALT_INV_a_sel[1]~input_o\,
	datac => \ALT_INV_a_sel[0]~input_o\,
	datad => \rf|reg0|ALT_INV_q\(12),
	datae => \rf|reg2|ALT_INV_q\(12),
	dataf => \rf|reg3|ALT_INV_q\(12),
	combout => \rf|a1|Mux3~0_combout\);

-- Location: FF_X21_Y1_N53
\rf|reg8|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(12));

-- Location: FF_X21_Y1_N20
\rf|reg10|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(12));

-- Location: FF_X21_Y1_N11
\rf|reg11|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(12));

-- Location: FF_X22_Y1_N53
\rf|reg9|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(12));

-- Location: LABCELL_X21_Y1_N39
\rf|a1|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux3~2_combout\ = ( \a_sel[1]~input_o\ & ( \rf|reg9|q\(12) & ( (!\a_sel[0]~input_o\ & (\rf|reg10|q\(12))) # (\a_sel[0]~input_o\ & ((\rf|reg11|q\(12)))) ) ) ) # ( !\a_sel[1]~input_o\ & ( \rf|reg9|q\(12) & ( (\a_sel[0]~input_o\) # (\rf|reg8|q\(12)) ) 
-- ) ) # ( \a_sel[1]~input_o\ & ( !\rf|reg9|q\(12) & ( (!\a_sel[0]~input_o\ & (\rf|reg10|q\(12))) # (\a_sel[0]~input_o\ & ((\rf|reg11|q\(12)))) ) ) ) # ( !\a_sel[1]~input_o\ & ( !\rf|reg9|q\(12) & ( (\rf|reg8|q\(12) & !\a_sel[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg8|ALT_INV_q\(12),
	datab => \rf|reg10|ALT_INV_q\(12),
	datac => \rf|reg11|ALT_INV_q\(12),
	datad => \ALT_INV_a_sel[0]~input_o\,
	datae => \ALT_INV_a_sel[1]~input_o\,
	dataf => \rf|reg9|ALT_INV_q\(12),
	combout => \rf|a1|Mux3~2_combout\);

-- Location: FF_X21_Y3_N38
\rf|reg12|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(12));

-- Location: FF_X19_Y2_N23
\rf|reg15|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(12));

-- Location: LABCELL_X22_Y4_N21
\rf|reg13|q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg13|q[12]~feeder_combout\ = ( \m2|res[12]~68_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[12]~68_combout\,
	combout => \rf|reg13|q[12]~feeder_combout\);

-- Location: FF_X22_Y4_N23
\rf|reg13|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg13|q[12]~feeder_combout\,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(12));

-- Location: FF_X21_Y3_N20
\rf|reg14|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(12));

-- Location: LABCELL_X22_Y4_N45
\rf|a1|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux3~3_combout\ = ( \rf|reg13|q\(12) & ( \rf|reg14|q\(12) & ( (!\a_sel[0]~input_o\ & (((\rf|reg12|q\(12))) # (\a_sel[1]~input_o\))) # (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\) # ((\rf|reg15|q\(12))))) ) ) ) # ( !\rf|reg13|q\(12) & ( 
-- \rf|reg14|q\(12) & ( (!\a_sel[0]~input_o\ & (((\rf|reg12|q\(12))) # (\a_sel[1]~input_o\))) # (\a_sel[0]~input_o\ & (\a_sel[1]~input_o\ & ((\rf|reg15|q\(12))))) ) ) ) # ( \rf|reg13|q\(12) & ( !\rf|reg14|q\(12) & ( (!\a_sel[0]~input_o\ & 
-- (!\a_sel[1]~input_o\ & (\rf|reg12|q\(12)))) # (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\) # ((\rf|reg15|q\(12))))) ) ) ) # ( !\rf|reg13|q\(12) & ( !\rf|reg14|q\(12) & ( (!\a_sel[0]~input_o\ & (!\a_sel[1]~input_o\ & (\rf|reg12|q\(12)))) # 
-- (\a_sel[0]~input_o\ & (\a_sel[1]~input_o\ & ((\rf|reg15|q\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[0]~input_o\,
	datab => \ALT_INV_a_sel[1]~input_o\,
	datac => \rf|reg12|ALT_INV_q\(12),
	datad => \rf|reg15|ALT_INV_q\(12),
	datae => \rf|reg13|ALT_INV_q\(12),
	dataf => \rf|reg14|ALT_INV_q\(12),
	combout => \rf|a1|Mux3~3_combout\);

-- Location: LABCELL_X22_Y3_N18
\rf|a1|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux3~4_combout\ = ( \rf|a1|Mux3~2_combout\ & ( \rf|a1|Mux3~3_combout\ & ( ((!\a_sel[2]~input_o\ & ((\rf|a1|Mux3~0_combout\))) # (\a_sel[2]~input_o\ & (\rf|a1|Mux3~1_combout\))) # (\a_sel[3]~input_o\) ) ) ) # ( !\rf|a1|Mux3~2_combout\ & ( 
-- \rf|a1|Mux3~3_combout\ & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|a1|Mux3~0_combout\))) # (\a_sel[2]~input_o\ & (\rf|a1|Mux3~1_combout\)))) # (\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\)))) ) ) ) # ( \rf|a1|Mux3~2_combout\ & ( 
-- !\rf|a1|Mux3~3_combout\ & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|a1|Mux3~0_combout\))) # (\a_sel[2]~input_o\ & (\rf|a1|Mux3~1_combout\)))) # (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\)))) ) ) ) # ( !\rf|a1|Mux3~2_combout\ & ( 
-- !\rf|a1|Mux3~3_combout\ & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|a1|Mux3~0_combout\))) # (\a_sel[2]~input_o\ & (\rf|a1|Mux3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[3]~input_o\,
	datab => \rf|a1|ALT_INV_Mux3~1_combout\,
	datac => \rf|a1|ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_a_sel[2]~input_o\,
	datae => \rf|a1|ALT_INV_Mux3~2_combout\,
	dataf => \rf|a1|ALT_INV_Mux3~3_combout\,
	combout => \rf|a1|Mux3~4_combout\);

-- Location: LABCELL_X22_Y1_N57
\rf|reg9|q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg9|q[9]~feeder_combout\ = ( \m2|res[9]~76_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[9]~76_combout\,
	combout => \rf|reg9|q[9]~feeder_combout\);

-- Location: FF_X22_Y1_N59
\rf|reg9|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg9|q[9]~feeder_combout\,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(9));

-- Location: LABCELL_X23_Y1_N39
\rf|reg13|q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg13|q[9]~feeder_combout\ = ( \m2|res[9]~76_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[9]~76_combout\,
	combout => \rf|reg13|q[9]~feeder_combout\);

-- Location: FF_X23_Y1_N41
\rf|reg13|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg13|q[9]~feeder_combout\,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(9));

-- Location: FF_X23_Y2_N41
\rf|reg1|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(9));

-- Location: FF_X23_Y2_N2
\rf|reg5|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(9));

-- Location: LABCELL_X23_Y1_N42
\rf|a1|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux6~1_combout\ = ( \rf|reg1|q\(9) & ( \rf|reg5|q\(9) & ( (!\a_sel[3]~input_o\) # ((!\a_sel[2]~input_o\ & (\rf|reg9|q\(9))) # (\a_sel[2]~input_o\ & ((\rf|reg13|q\(9))))) ) ) ) # ( !\rf|reg1|q\(9) & ( \rf|reg5|q\(9) & ( (!\a_sel[2]~input_o\ & 
-- (\a_sel[3]~input_o\ & (\rf|reg9|q\(9)))) # (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\) # ((\rf|reg13|q\(9))))) ) ) ) # ( \rf|reg1|q\(9) & ( !\rf|reg5|q\(9) & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\) # ((\rf|reg9|q\(9))))) # (\a_sel[2]~input_o\ & 
-- (\a_sel[3]~input_o\ & ((\rf|reg13|q\(9))))) ) ) ) # ( !\rf|reg1|q\(9) & ( !\rf|reg5|q\(9) & ( (\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & (\rf|reg9|q\(9))) # (\a_sel[2]~input_o\ & ((\rf|reg13|q\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|reg9|ALT_INV_q\(9),
	datad => \rf|reg13|ALT_INV_q\(9),
	datae => \rf|reg1|ALT_INV_q\(9),
	dataf => \rf|reg5|ALT_INV_q\(9),
	combout => \rf|a1|Mux6~1_combout\);

-- Location: FF_X22_Y2_N11
\rf|reg12|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(9));

-- Location: FF_X22_Y2_N50
\rf|reg4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(9));

-- Location: MLABCELL_X19_Y1_N54
\rf|reg8|q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg8|q[9]~feeder_combout\ = ( \m2|res[9]~76_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[9]~76_combout\,
	combout => \rf|reg8|q[9]~feeder_combout\);

-- Location: FF_X19_Y1_N56
\rf|reg8|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg8|q[9]~feeder_combout\,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(9));

-- Location: FF_X19_Y4_N44
\rf|reg0|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(9));

-- Location: LABCELL_X23_Y2_N12
\rf|a1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux6~0_combout\ = ( \rf|reg8|q\(9) & ( \rf|reg0|q\(9) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & ((\rf|reg4|q\(9)))) # (\a_sel[3]~input_o\ & (\rf|reg12|q\(9)))) ) ) ) # ( !\rf|reg8|q\(9) & ( \rf|reg0|q\(9) & ( (!\a_sel[2]~input_o\ & 
-- (((!\a_sel[3]~input_o\)))) # (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg4|q\(9)))) # (\a_sel[3]~input_o\ & (\rf|reg12|q\(9))))) ) ) ) # ( \rf|reg8|q\(9) & ( !\rf|reg0|q\(9) & ( (!\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\)))) # 
-- (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg4|q\(9)))) # (\a_sel[3]~input_o\ & (\rf|reg12|q\(9))))) ) ) ) # ( !\rf|reg8|q\(9) & ( !\rf|reg0|q\(9) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg4|q\(9)))) # (\a_sel[3]~input_o\ & 
-- (\rf|reg12|q\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg12|ALT_INV_q\(9),
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \ALT_INV_a_sel[3]~input_o\,
	datad => \rf|reg4|ALT_INV_q\(9),
	datae => \rf|reg8|ALT_INV_q\(9),
	dataf => \rf|reg0|ALT_INV_q\(9),
	combout => \rf|a1|Mux6~0_combout\);

-- Location: MLABCELL_X19_Y1_N42
\rf|reg15|q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg15|q[9]~feeder_combout\ = ( \m2|res[9]~76_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[9]~76_combout\,
	combout => \rf|reg15|q[9]~feeder_combout\);

-- Location: FF_X19_Y1_N44
\rf|reg15|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg15|q[9]~feeder_combout\,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(9));

-- Location: LABCELL_X22_Y4_N6
\rf|reg7|q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg7|q[9]~feeder_combout\ = ( \m2|res[9]~76_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[9]~76_combout\,
	combout => \rf|reg7|q[9]~feeder_combout\);

-- Location: FF_X22_Y4_N8
\rf|reg7|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg7|q[9]~feeder_combout\,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(9));

-- Location: FF_X23_Y4_N32
\rf|reg11|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(9));

-- Location: FF_X19_Y3_N13
\rf|reg3|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(9));

-- Location: LABCELL_X22_Y4_N57
\rf|a1|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux6~3_combout\ = ( \rf|reg11|q\(9) & ( \rf|reg3|q\(9) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & ((\rf|reg7|q\(9)))) # (\a_sel[3]~input_o\ & (\rf|reg15|q\(9)))) ) ) ) # ( !\rf|reg11|q\(9) & ( \rf|reg3|q\(9) & ( (!\a_sel[2]~input_o\ & 
-- (((!\a_sel[3]~input_o\)))) # (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg7|q\(9)))) # (\a_sel[3]~input_o\ & (\rf|reg15|q\(9))))) ) ) ) # ( \rf|reg11|q\(9) & ( !\rf|reg3|q\(9) & ( (!\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\)))) # 
-- (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg7|q\(9)))) # (\a_sel[3]~input_o\ & (\rf|reg15|q\(9))))) ) ) ) # ( !\rf|reg11|q\(9) & ( !\rf|reg3|q\(9) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg7|q\(9)))) # (\a_sel[3]~input_o\ & 
-- (\rf|reg15|q\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \rf|reg15|ALT_INV_q\(9),
	datac => \rf|reg7|ALT_INV_q\(9),
	datad => \ALT_INV_a_sel[3]~input_o\,
	datae => \rf|reg11|ALT_INV_q\(9),
	dataf => \rf|reg3|ALT_INV_q\(9),
	combout => \rf|a1|Mux6~3_combout\);

-- Location: FF_X23_Y2_N8
\rf|reg6|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(9));

-- Location: FF_X21_Y1_N32
\rf|reg10|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(9));

-- Location: FF_X19_Y3_N41
\rf|reg2|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(9));

-- Location: LABCELL_X21_Y1_N12
\rf|a1|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux6~2_combout\ = ( \rf|reg14|q\(9) & ( \rf|reg2|q\(9) & ( (!\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\)) # (\rf|reg6|q\(9)))) # (\a_sel[3]~input_o\ & (((\rf|reg10|q\(9)) # (\a_sel[2]~input_o\)))) ) ) ) # ( !\rf|reg14|q\(9) & ( \rf|reg2|q\(9) & ( 
-- (!\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\)) # (\rf|reg6|q\(9)))) # (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\ & \rf|reg10|q\(9))))) ) ) ) # ( \rf|reg14|q\(9) & ( !\rf|reg2|q\(9) & ( (!\a_sel[3]~input_o\ & (\rf|reg6|q\(9) & (\a_sel[2]~input_o\))) # 
-- (\a_sel[3]~input_o\ & (((\rf|reg10|q\(9)) # (\a_sel[2]~input_o\)))) ) ) ) # ( !\rf|reg14|q\(9) & ( !\rf|reg2|q\(9) & ( (!\a_sel[3]~input_o\ & (\rf|reg6|q\(9) & (\a_sel[2]~input_o\))) # (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\ & \rf|reg10|q\(9))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg6|ALT_INV_q\(9),
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \ALT_INV_a_sel[2]~input_o\,
	datad => \rf|reg10|ALT_INV_q\(9),
	datae => \rf|reg14|ALT_INV_q\(9),
	dataf => \rf|reg2|ALT_INV_q\(9),
	combout => \rf|a1|Mux6~2_combout\);

-- Location: LABCELL_X22_Y1_N51
\rf|a1|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux6~4_combout\ = ( \rf|a1|Mux6~3_combout\ & ( \rf|a1|Mux6~2_combout\ & ( ((!\a_sel[0]~input_o\ & ((\rf|a1|Mux6~0_combout\))) # (\a_sel[0]~input_o\ & (\rf|a1|Mux6~1_combout\))) # (\a_sel[1]~input_o\) ) ) ) # ( !\rf|a1|Mux6~3_combout\ & ( 
-- \rf|a1|Mux6~2_combout\ & ( (!\a_sel[0]~input_o\ & (((\rf|a1|Mux6~0_combout\) # (\a_sel[1]~input_o\)))) # (\a_sel[0]~input_o\ & (\rf|a1|Mux6~1_combout\ & (!\a_sel[1]~input_o\))) ) ) ) # ( \rf|a1|Mux6~3_combout\ & ( !\rf|a1|Mux6~2_combout\ & ( 
-- (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\ & \rf|a1|Mux6~0_combout\)))) # (\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\)) # (\rf|a1|Mux6~1_combout\))) ) ) ) # ( !\rf|a1|Mux6~3_combout\ & ( !\rf|a1|Mux6~2_combout\ & ( (!\a_sel[1]~input_o\ & 
-- ((!\a_sel[0]~input_o\ & ((\rf|a1|Mux6~0_combout\))) # (\a_sel[0]~input_o\ & (\rf|a1|Mux6~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[0]~input_o\,
	datab => \rf|a1|ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|a1|ALT_INV_Mux6~0_combout\,
	datae => \rf|a1|ALT_INV_Mux6~3_combout\,
	dataf => \rf|a1|ALT_INV_Mux6~2_combout\,
	combout => \rf|a1|Mux6~4_combout\);

-- Location: FF_X19_Y4_N32
\rf|reg0|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[10]~50_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(10));

-- Location: FF_X18_Y3_N44
\rf|reg1|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[10]~50_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(10));

-- Location: FF_X18_Y3_N29
\rf|reg3|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[10]~50_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(10));

-- Location: FF_X19_Y4_N41
\rf|reg2|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[10]~50_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(10));

-- Location: LABCELL_X18_Y3_N3
\rf|a1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux5~0_combout\ = ( \rf|reg2|q\(10) & ( \a_sel[0]~input_o\ & ( (!\a_sel[1]~input_o\ & (\rf|reg1|q\(10))) # (\a_sel[1]~input_o\ & ((\rf|reg3|q\(10)))) ) ) ) # ( !\rf|reg2|q\(10) & ( \a_sel[0]~input_o\ & ( (!\a_sel[1]~input_o\ & (\rf|reg1|q\(10))) # 
-- (\a_sel[1]~input_o\ & ((\rf|reg3|q\(10)))) ) ) ) # ( \rf|reg2|q\(10) & ( !\a_sel[0]~input_o\ & ( (\a_sel[1]~input_o\) # (\rf|reg0|q\(10)) ) ) ) # ( !\rf|reg2|q\(10) & ( !\a_sel[0]~input_o\ & ( (\rf|reg0|q\(10) & !\a_sel[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg0|ALT_INV_q\(10),
	datab => \rf|reg1|ALT_INV_q\(10),
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|reg3|ALT_INV_q\(10),
	datae => \rf|reg2|ALT_INV_q\(10),
	dataf => \ALT_INV_a_sel[0]~input_o\,
	combout => \rf|a1|Mux5~0_combout\);

-- Location: LABCELL_X17_Y3_N18
\rf|reg9|q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg9|q[10]~feeder_combout\ = ( \m2|res[10]~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[10]~50_combout\,
	combout => \rf|reg9|q[10]~feeder_combout\);

-- Location: FF_X17_Y3_N20
\rf|reg9|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg9|q[10]~feeder_combout\,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(10));

-- Location: FF_X17_Y3_N44
\rf|reg11|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[10]~50_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(10));

-- Location: LABCELL_X15_Y3_N21
\rf|reg10|q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg10|q[10]~feeder_combout\ = ( \m2|res[10]~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[10]~50_combout\,
	combout => \rf|reg10|q[10]~feeder_combout\);

-- Location: FF_X15_Y3_N23
\rf|reg10|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg10|q[10]~feeder_combout\,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(10));

-- Location: FF_X17_Y3_N50
\rf|reg8|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[10]~50_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(10));

-- Location: LABCELL_X15_Y3_N39
\rf|a1|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux5~2_combout\ = ( \rf|reg10|q\(10) & ( \rf|reg8|q\(10) & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & (\rf|reg9|q\(10))) # (\a_sel[1]~input_o\ & ((\rf|reg11|q\(10))))) ) ) ) # ( !\rf|reg10|q\(10) & ( \rf|reg8|q\(10) & ( (!\a_sel[0]~input_o\ 
-- & (((!\a_sel[1]~input_o\)))) # (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|reg9|q\(10))) # (\a_sel[1]~input_o\ & ((\rf|reg11|q\(10)))))) ) ) ) # ( \rf|reg10|q\(10) & ( !\rf|reg8|q\(10) & ( (!\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\)))) # 
-- (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|reg9|q\(10))) # (\a_sel[1]~input_o\ & ((\rf|reg11|q\(10)))))) ) ) ) # ( !\rf|reg10|q\(10) & ( !\rf|reg8|q\(10) & ( (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|reg9|q\(10))) # (\a_sel[1]~input_o\ & 
-- ((\rf|reg11|q\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg9|ALT_INV_q\(10),
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|reg11|ALT_INV_q\(10),
	datae => \rf|reg10|ALT_INV_q\(10),
	dataf => \rf|reg8|ALT_INV_q\(10),
	combout => \rf|a1|Mux5~2_combout\);

-- Location: FF_X21_Y3_N16
\rf|reg12|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[10]~50_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(10));

-- Location: LABCELL_X17_Y4_N30
\rf|reg13|q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg13|q[10]~feeder_combout\ = ( \m2|res[10]~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[10]~50_combout\,
	combout => \rf|reg13|q[10]~feeder_combout\);

-- Location: FF_X17_Y4_N32
\rf|reg13|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg13|q[10]~feeder_combout\,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(10));

-- Location: FF_X19_Y4_N17
\rf|reg15|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[10]~50_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(10));

-- Location: LABCELL_X17_Y4_N51
\rf|a1|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux5~3_combout\ = ( \a_sel[0]~input_o\ & ( \rf|reg15|q\(10) & ( (\rf|reg13|q\(10)) # (\a_sel[1]~input_o\) ) ) ) # ( !\a_sel[0]~input_o\ & ( \rf|reg15|q\(10) & ( (!\a_sel[1]~input_o\ & (\rf|reg12|q\(10))) # (\a_sel[1]~input_o\ & 
-- ((\rf|reg14|q\(10)))) ) ) ) # ( \a_sel[0]~input_o\ & ( !\rf|reg15|q\(10) & ( (!\a_sel[1]~input_o\ & \rf|reg13|q\(10)) ) ) ) # ( !\a_sel[0]~input_o\ & ( !\rf|reg15|q\(10) & ( (!\a_sel[1]~input_o\ & (\rf|reg12|q\(10))) # (\a_sel[1]~input_o\ & 
-- ((\rf|reg14|q\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \rf|reg12|ALT_INV_q\(10),
	datac => \rf|reg13|ALT_INV_q\(10),
	datad => \rf|reg14|ALT_INV_q\(10),
	datae => \ALT_INV_a_sel[0]~input_o\,
	dataf => \rf|reg15|ALT_INV_q\(10),
	combout => \rf|a1|Mux5~3_combout\);

-- Location: LABCELL_X15_Y4_N21
\rf|reg7|q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg7|q[10]~feeder_combout\ = ( \m2|res[10]~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[10]~50_combout\,
	combout => \rf|reg7|q[10]~feeder_combout\);

-- Location: FF_X15_Y4_N23
\rf|reg7|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg7|q[10]~feeder_combout\,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(10));

-- Location: LABCELL_X15_Y4_N42
\rf|reg5|q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg5|q[10]~feeder_combout\ = ( \m2|res[10]~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[10]~50_combout\,
	combout => \rf|reg5|q[10]~feeder_combout\);

-- Location: FF_X15_Y4_N44
\rf|reg5|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg5|q[10]~feeder_combout\,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(10));

-- Location: LABCELL_X17_Y2_N33
\rf|reg6|q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg6|q[10]~feeder_combout\ = ( \m2|res[10]~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[10]~50_combout\,
	combout => \rf|reg6|q[10]~feeder_combout\);

-- Location: FF_X17_Y2_N35
\rf|reg6|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg6|q[10]~feeder_combout\,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(10));

-- Location: LABCELL_X17_Y2_N18
\rf|reg4|q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg4|q[10]~feeder_combout\ = ( \m2|res[10]~50_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[10]~50_combout\,
	combout => \rf|reg4|q[10]~feeder_combout\);

-- Location: FF_X17_Y2_N20
\rf|reg4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg4|q[10]~feeder_combout\,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(10));

-- Location: LABCELL_X15_Y4_N24
\rf|a1|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux5~1_combout\ = ( \rf|reg6|q\(10) & ( \rf|reg4|q\(10) & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & ((\rf|reg5|q\(10)))) # (\a_sel[1]~input_o\ & (\rf|reg7|q\(10)))) ) ) ) # ( !\rf|reg6|q\(10) & ( \rf|reg4|q\(10) & ( (!\a_sel[0]~input_o\ & 
-- (((!\a_sel[1]~input_o\)))) # (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & ((\rf|reg5|q\(10)))) # (\a_sel[1]~input_o\ & (\rf|reg7|q\(10))))) ) ) ) # ( \rf|reg6|q\(10) & ( !\rf|reg4|q\(10) & ( (!\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\)))) # 
-- (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & ((\rf|reg5|q\(10)))) # (\a_sel[1]~input_o\ & (\rf|reg7|q\(10))))) ) ) ) # ( !\rf|reg6|q\(10) & ( !\rf|reg4|q\(10) & ( (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & ((\rf|reg5|q\(10)))) # (\a_sel[1]~input_o\ & 
-- (\rf|reg7|q\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg7|ALT_INV_q\(10),
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|reg5|ALT_INV_q\(10),
	datae => \rf|reg6|ALT_INV_q\(10),
	dataf => \rf|reg4|ALT_INV_q\(10),
	combout => \rf|a1|Mux5~1_combout\);

-- Location: MLABCELL_X19_Y3_N15
\rf|a1|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux5~4_combout\ = ( \rf|a1|Mux5~3_combout\ & ( \rf|a1|Mux5~1_combout\ & ( ((!\a_sel[3]~input_o\ & (\rf|a1|Mux5~0_combout\)) # (\a_sel[3]~input_o\ & ((\rf|a1|Mux5~2_combout\)))) # (\a_sel[2]~input_o\) ) ) ) # ( !\rf|a1|Mux5~3_combout\ & ( 
-- \rf|a1|Mux5~1_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|a1|Mux5~0_combout\)) # (\a_sel[3]~input_o\ & ((\rf|a1|Mux5~2_combout\))))) # (\a_sel[2]~input_o\ & (((!\a_sel[3]~input_o\)))) ) ) ) # ( \rf|a1|Mux5~3_combout\ & ( 
-- !\rf|a1|Mux5~1_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|a1|Mux5~0_combout\)) # (\a_sel[3]~input_o\ & ((\rf|a1|Mux5~2_combout\))))) # (\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\)))) ) ) ) # ( !\rf|a1|Mux5~3_combout\ & ( 
-- !\rf|a1|Mux5~1_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|a1|Mux5~0_combout\)) # (\a_sel[3]~input_o\ & ((\rf|a1|Mux5~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \rf|a1|ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_a_sel[3]~input_o\,
	datad => \rf|a1|ALT_INV_Mux5~2_combout\,
	datae => \rf|a1|ALT_INV_Mux5~3_combout\,
	dataf => \rf|a1|ALT_INV_Mux5~1_combout\,
	combout => \rf|a1|Mux5~4_combout\);

-- Location: FF_X23_Y2_N56
\rf|reg5|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(7));

-- Location: FF_X23_Y1_N32
\rf|reg9|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(7));

-- Location: FF_X23_Y2_N23
\rf|reg1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(7));

-- Location: FF_X22_Y1_N11
\rf|reg13|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(7));

-- Location: LABCELL_X23_Y2_N30
\rf|a1|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux8~1_combout\ = ( \rf|reg1|q\(7) & ( \rf|reg13|q\(7) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\) # ((\rf|reg5|q\(7))))) # (\a_sel[3]~input_o\ & (((\rf|reg9|q\(7))) # (\a_sel[2]~input_o\))) ) ) ) # ( !\rf|reg1|q\(7) & ( \rf|reg13|q\(7) & ( 
-- (!\a_sel[3]~input_o\ & (\a_sel[2]~input_o\ & (\rf|reg5|q\(7)))) # (\a_sel[3]~input_o\ & (((\rf|reg9|q\(7))) # (\a_sel[2]~input_o\))) ) ) ) # ( \rf|reg1|q\(7) & ( !\rf|reg13|q\(7) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\) # ((\rf|reg5|q\(7))))) # 
-- (\a_sel[3]~input_o\ & (!\a_sel[2]~input_o\ & ((\rf|reg9|q\(7))))) ) ) ) # ( !\rf|reg1|q\(7) & ( !\rf|reg13|q\(7) & ( (!\a_sel[3]~input_o\ & (\a_sel[2]~input_o\ & (\rf|reg5|q\(7)))) # (\a_sel[3]~input_o\ & (!\a_sel[2]~input_o\ & ((\rf|reg9|q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[3]~input_o\,
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \rf|reg5|ALT_INV_q\(7),
	datad => \rf|reg9|ALT_INV_q\(7),
	datae => \rf|reg1|ALT_INV_q\(7),
	dataf => \rf|reg13|ALT_INV_q\(7),
	combout => \rf|a1|Mux8~1_combout\);

-- Location: FF_X23_Y3_N23
\rf|reg3|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(7));

-- Location: LABCELL_X23_Y4_N36
\rf|reg11|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg11|q[7]~feeder_combout\ = ( \m2|res[7]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[7]~40_combout\,
	combout => \rf|reg11|q[7]~feeder_combout\);

-- Location: FF_X23_Y4_N38
\rf|reg11|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg11|q[7]~feeder_combout\,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(7));

-- Location: FF_X22_Y3_N38
\rf|reg7|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(7));

-- Location: FF_X23_Y3_N8
\rf|reg15|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(7));

-- Location: LABCELL_X22_Y3_N39
\rf|a1|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux8~3_combout\ = ( \rf|reg15|q\(7) & ( \a_sel[3]~input_o\ & ( (\rf|reg11|q\(7)) # (\a_sel[2]~input_o\) ) ) ) # ( !\rf|reg15|q\(7) & ( \a_sel[3]~input_o\ & ( (!\a_sel[2]~input_o\ & \rf|reg11|q\(7)) ) ) ) # ( \rf|reg15|q\(7) & ( !\a_sel[3]~input_o\ 
-- & ( (!\a_sel[2]~input_o\ & (\rf|reg3|q\(7))) # (\a_sel[2]~input_o\ & ((\rf|reg7|q\(7)))) ) ) ) # ( !\rf|reg15|q\(7) & ( !\a_sel[3]~input_o\ & ( (!\a_sel[2]~input_o\ & (\rf|reg3|q\(7))) # (\a_sel[2]~input_o\ & ((\rf|reg7|q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg3|ALT_INV_q\(7),
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \rf|reg11|ALT_INV_q\(7),
	datad => \rf|reg7|ALT_INV_q\(7),
	datae => \rf|reg15|ALT_INV_q\(7),
	dataf => \ALT_INV_a_sel[3]~input_o\,
	combout => \rf|a1|Mux8~3_combout\);

-- Location: FF_X22_Y2_N20
\rf|reg4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(7));

-- Location: FF_X22_Y2_N14
\rf|reg12|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(7));

-- Location: FF_X22_Y3_N5
\rf|reg0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(7));

-- Location: FF_X23_Y1_N14
\rf|reg8|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(7));

-- Location: LABCELL_X23_Y2_N18
\rf|a1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux8~0_combout\ = ( \rf|reg0|q\(7) & ( \rf|reg8|q\(7) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & (\rf|reg4|q\(7))) # (\a_sel[3]~input_o\ & ((\rf|reg12|q\(7))))) ) ) ) # ( !\rf|reg0|q\(7) & ( \rf|reg8|q\(7) & ( (!\a_sel[3]~input_o\ & 
-- (\a_sel[2]~input_o\ & (\rf|reg4|q\(7)))) # (\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\) # ((\rf|reg12|q\(7))))) ) ) ) # ( \rf|reg0|q\(7) & ( !\rf|reg8|q\(7) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\) # ((\rf|reg4|q\(7))))) # (\a_sel[3]~input_o\ & 
-- (\a_sel[2]~input_o\ & ((\rf|reg12|q\(7))))) ) ) ) # ( !\rf|reg0|q\(7) & ( !\rf|reg8|q\(7) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|reg4|q\(7))) # (\a_sel[3]~input_o\ & ((\rf|reg12|q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[3]~input_o\,
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \rf|reg4|ALT_INV_q\(7),
	datad => \rf|reg12|ALT_INV_q\(7),
	datae => \rf|reg0|ALT_INV_q\(7),
	dataf => \rf|reg8|ALT_INV_q\(7),
	combout => \rf|a1|Mux8~0_combout\);

-- Location: LABCELL_X21_Y4_N12
\rf|reg10|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg10|q[7]~feeder_combout\ = ( \m2|res[7]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[7]~40_combout\,
	combout => \rf|reg10|q[7]~feeder_combout\);

-- Location: FF_X21_Y4_N14
\rf|reg10|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg10|q[7]~feeder_combout\,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(7));

-- Location: FF_X22_Y3_N23
\rf|reg2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(7));

-- Location: FF_X23_Y2_N17
\rf|reg6|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(7));

-- Location: LABCELL_X21_Y4_N42
\rf|a1|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux8~2_combout\ = ( \a_sel[3]~input_o\ & ( \rf|reg6|q\(7) & ( (!\a_sel[2]~input_o\ & ((\rf|reg10|q\(7)))) # (\a_sel[2]~input_o\ & (\rf|reg14|q\(7))) ) ) ) # ( !\a_sel[3]~input_o\ & ( \rf|reg6|q\(7) & ( (\rf|reg2|q\(7)) # (\a_sel[2]~input_o\) ) ) ) 
-- # ( \a_sel[3]~input_o\ & ( !\rf|reg6|q\(7) & ( (!\a_sel[2]~input_o\ & ((\rf|reg10|q\(7)))) # (\a_sel[2]~input_o\ & (\rf|reg14|q\(7))) ) ) ) # ( !\a_sel[3]~input_o\ & ( !\rf|reg6|q\(7) & ( (!\a_sel[2]~input_o\ & \rf|reg2|q\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg14|ALT_INV_q\(7),
	datab => \rf|reg10|ALT_INV_q\(7),
	datac => \ALT_INV_a_sel[2]~input_o\,
	datad => \rf|reg2|ALT_INV_q\(7),
	datae => \ALT_INV_a_sel[3]~input_o\,
	dataf => \rf|reg6|ALT_INV_q\(7),
	combout => \rf|a1|Mux8~2_combout\);

-- Location: LABCELL_X22_Y3_N0
\rf|a1|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux8~4_combout\ = ( \rf|a1|Mux8~0_combout\ & ( \rf|a1|Mux8~2_combout\ & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & (\rf|a1|Mux8~1_combout\)) # (\a_sel[1]~input_o\ & ((\rf|a1|Mux8~3_combout\)))) ) ) ) # ( !\rf|a1|Mux8~0_combout\ & ( 
-- \rf|a1|Mux8~2_combout\ & ( (!\a_sel[1]~input_o\ & (\rf|a1|Mux8~1_combout\ & (\a_sel[0]~input_o\))) # (\a_sel[1]~input_o\ & (((!\a_sel[0]~input_o\) # (\rf|a1|Mux8~3_combout\)))) ) ) ) # ( \rf|a1|Mux8~0_combout\ & ( !\rf|a1|Mux8~2_combout\ & ( 
-- (!\a_sel[1]~input_o\ & (((!\a_sel[0]~input_o\)) # (\rf|a1|Mux8~1_combout\))) # (\a_sel[1]~input_o\ & (((\a_sel[0]~input_o\ & \rf|a1|Mux8~3_combout\)))) ) ) ) # ( !\rf|a1|Mux8~0_combout\ & ( !\rf|a1|Mux8~2_combout\ & ( (\a_sel[0]~input_o\ & 
-- ((!\a_sel[1]~input_o\ & (\rf|a1|Mux8~1_combout\)) # (\a_sel[1]~input_o\ & ((\rf|a1|Mux8~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_a_sel[1]~input_o\,
	datac => \ALT_INV_a_sel[0]~input_o\,
	datad => \rf|a1|ALT_INV_Mux8~3_combout\,
	datae => \rf|a1|ALT_INV_Mux8~0_combout\,
	dataf => \rf|a1|ALT_INV_Mux8~2_combout\,
	combout => \rf|a1|Mux8~4_combout\);

-- Location: FF_X21_Y1_N2
\rf|reg10|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(8));

-- Location: FF_X22_Y1_N50
\rf|reg9|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(8));

-- Location: FF_X21_Y1_N37
\rf|reg8|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(8));

-- Location: FF_X21_Y1_N26
\rf|reg11|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(8));

-- Location: LABCELL_X21_Y1_N3
\rf|a1|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux7~2_combout\ = ( \a_sel[1]~input_o\ & ( \a_sel[0]~input_o\ & ( \rf|reg11|q\(8) ) ) ) # ( !\a_sel[1]~input_o\ & ( \a_sel[0]~input_o\ & ( \rf|reg9|q\(8) ) ) ) # ( \a_sel[1]~input_o\ & ( !\a_sel[0]~input_o\ & ( \rf|reg10|q\(8) ) ) ) # ( 
-- !\a_sel[1]~input_o\ & ( !\a_sel[0]~input_o\ & ( \rf|reg8|q\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg10|ALT_INV_q\(8),
	datab => \rf|reg9|ALT_INV_q\(8),
	datac => \rf|reg8|ALT_INV_q\(8),
	datad => \rf|reg11|ALT_INV_q\(8),
	datae => \ALT_INV_a_sel[1]~input_o\,
	dataf => \ALT_INV_a_sel[0]~input_o\,
	combout => \rf|a1|Mux7~2_combout\);

-- Location: FF_X18_Y4_N46
\rf|reg2|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(8));

-- Location: FF_X18_Y3_N11
\rf|reg3|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(8));

-- Location: FF_X18_Y4_N2
\rf|reg1|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(8));

-- Location: FF_X18_Y4_N56
\rf|reg0|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(8));

-- Location: LABCELL_X18_Y3_N39
\rf|a1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux7~0_combout\ = ( \rf|reg1|q\(8) & ( \rf|reg0|q\(8) & ( (!\a_sel[1]~input_o\) # ((!\a_sel[0]~input_o\ & (\rf|reg2|q\(8))) # (\a_sel[0]~input_o\ & ((\rf|reg3|q\(8))))) ) ) ) # ( !\rf|reg1|q\(8) & ( \rf|reg0|q\(8) & ( (!\a_sel[1]~input_o\ & 
-- (((!\a_sel[0]~input_o\)))) # (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & (\rf|reg2|q\(8))) # (\a_sel[0]~input_o\ & ((\rf|reg3|q\(8)))))) ) ) ) # ( \rf|reg1|q\(8) & ( !\rf|reg0|q\(8) & ( (!\a_sel[1]~input_o\ & (((\a_sel[0]~input_o\)))) # 
-- (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & (\rf|reg2|q\(8))) # (\a_sel[0]~input_o\ & ((\rf|reg3|q\(8)))))) ) ) ) # ( !\rf|reg1|q\(8) & ( !\rf|reg0|q\(8) & ( (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & (\rf|reg2|q\(8))) # (\a_sel[0]~input_o\ & 
-- ((\rf|reg3|q\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg2|ALT_INV_q\(8),
	datab => \rf|reg3|ALT_INV_q\(8),
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \ALT_INV_a_sel[0]~input_o\,
	datae => \rf|reg1|ALT_INV_q\(8),
	dataf => \rf|reg0|ALT_INV_q\(8),
	combout => \rf|a1|Mux7~0_combout\);

-- Location: FF_X25_Y3_N26
\rf|reg13|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(8));

-- Location: LABCELL_X21_Y3_N51
\rf|reg15|q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg15|q[8]~feeder_combout\ = ( \m2|res[8]~80_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[8]~80_combout\,
	combout => \rf|reg15|q[8]~feeder_combout\);

-- Location: FF_X21_Y3_N53
\rf|reg15|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg15|q[8]~feeder_combout\,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(8));

-- Location: FF_X21_Y3_N56
\rf|reg14|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(8));

-- Location: FF_X21_Y3_N47
\rf|reg12|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(8));

-- Location: MLABCELL_X25_Y3_N57
\rf|a1|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux7~3_combout\ = ( \rf|reg14|q\(8) & ( \rf|reg12|q\(8) & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & (\rf|reg13|q\(8))) # (\a_sel[1]~input_o\ & ((\rf|reg15|q\(8))))) ) ) ) # ( !\rf|reg14|q\(8) & ( \rf|reg12|q\(8) & ( (!\a_sel[0]~input_o\ & 
-- (((!\a_sel[1]~input_o\)))) # (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|reg13|q\(8))) # (\a_sel[1]~input_o\ & ((\rf|reg15|q\(8)))))) ) ) ) # ( \rf|reg14|q\(8) & ( !\rf|reg12|q\(8) & ( (!\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\)))) # 
-- (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|reg13|q\(8))) # (\a_sel[1]~input_o\ & ((\rf|reg15|q\(8)))))) ) ) ) # ( !\rf|reg14|q\(8) & ( !\rf|reg12|q\(8) & ( (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|reg13|q\(8))) # (\a_sel[1]~input_o\ & 
-- ((\rf|reg15|q\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg13|ALT_INV_q\(8),
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|reg15|ALT_INV_q\(8),
	datae => \rf|reg14|ALT_INV_q\(8),
	dataf => \rf|reg12|ALT_INV_q\(8),
	combout => \rf|a1|Mux7~3_combout\);

-- Location: FF_X17_Y2_N53
\rf|reg5|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(8));

-- Location: FF_X17_Y4_N29
\rf|reg7|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(8));

-- Location: LABCELL_X17_Y2_N30
\rf|reg6|q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg6|q[8]~feeder_combout\ = ( \m2|res[8]~80_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[8]~80_combout\,
	combout => \rf|reg6|q[8]~feeder_combout\);

-- Location: FF_X17_Y2_N31
\rf|reg6|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg6|q[8]~feeder_combout\,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(8));

-- Location: LABCELL_X17_Y4_N24
\rf|a1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux7~1_combout\ = ( \rf|reg4|q\(8) & ( \a_sel[1]~input_o\ & ( (!\a_sel[0]~input_o\ & ((\rf|reg6|q\(8)))) # (\a_sel[0]~input_o\ & (\rf|reg7|q\(8))) ) ) ) # ( !\rf|reg4|q\(8) & ( \a_sel[1]~input_o\ & ( (!\a_sel[0]~input_o\ & ((\rf|reg6|q\(8)))) # 
-- (\a_sel[0]~input_o\ & (\rf|reg7|q\(8))) ) ) ) # ( \rf|reg4|q\(8) & ( !\a_sel[1]~input_o\ & ( (!\a_sel[0]~input_o\) # (\rf|reg5|q\(8)) ) ) ) # ( !\rf|reg4|q\(8) & ( !\a_sel[1]~input_o\ & ( (\a_sel[0]~input_o\ & \rf|reg5|q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[0]~input_o\,
	datab => \rf|reg5|ALT_INV_q\(8),
	datac => \rf|reg7|ALT_INV_q\(8),
	datad => \rf|reg6|ALT_INV_q\(8),
	datae => \rf|reg4|ALT_INV_q\(8),
	dataf => \ALT_INV_a_sel[1]~input_o\,
	combout => \rf|a1|Mux7~1_combout\);

-- Location: LABCELL_X21_Y1_N6
\rf|a1|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux7~4_combout\ = ( \rf|a1|Mux7~3_combout\ & ( \rf|a1|Mux7~1_combout\ & ( ((!\a_sel[3]~input_o\ & ((\rf|a1|Mux7~0_combout\))) # (\a_sel[3]~input_o\ & (\rf|a1|Mux7~2_combout\))) # (\a_sel[2]~input_o\) ) ) ) # ( !\rf|a1|Mux7~3_combout\ & ( 
-- \rf|a1|Mux7~1_combout\ & ( (!\a_sel[3]~input_o\ & (((\rf|a1|Mux7~0_combout\) # (\a_sel[2]~input_o\)))) # (\a_sel[3]~input_o\ & (\rf|a1|Mux7~2_combout\ & (!\a_sel[2]~input_o\))) ) ) ) # ( \rf|a1|Mux7~3_combout\ & ( !\rf|a1|Mux7~1_combout\ & ( 
-- (!\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\ & \rf|a1|Mux7~0_combout\)))) # (\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\)) # (\rf|a1|Mux7~2_combout\))) ) ) ) # ( !\rf|a1|Mux7~3_combout\ & ( !\rf|a1|Mux7~1_combout\ & ( (!\a_sel[2]~input_o\ & 
-- ((!\a_sel[3]~input_o\ & ((\rf|a1|Mux7~0_combout\))) # (\a_sel[3]~input_o\ & (\rf|a1|Mux7~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \ALT_INV_a_sel[2]~input_o\,
	datad => \rf|a1|ALT_INV_Mux7~0_combout\,
	datae => \rf|a1|ALT_INV_Mux7~3_combout\,
	dataf => \rf|a1|ALT_INV_Mux7~1_combout\,
	combout => \rf|a1|Mux7~4_combout\);

-- Location: FF_X17_Y4_N5
\rf|reg10|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(6));

-- Location: LABCELL_X17_Y3_N33
\rf|reg9|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg9|q[6]~feeder_combout\ = ( \m2|res[6]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[6]~35_combout\,
	combout => \rf|reg9|q[6]~feeder_combout\);

-- Location: FF_X17_Y3_N35
\rf|reg9|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg9|q[6]~feeder_combout\,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(6));

-- Location: FF_X17_Y3_N8
\rf|reg11|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(6));

-- Location: LABCELL_X17_Y3_N36
\rf|reg8|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg8|q[6]~feeder_combout\ = ( \m2|res[6]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[6]~35_combout\,
	combout => \rf|reg8|q[6]~feeder_combout\);

-- Location: FF_X17_Y3_N38
\rf|reg8|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg8|q[6]~feeder_combout\,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(6));

-- Location: LABCELL_X17_Y4_N9
\rf|a1|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux9~2_combout\ = ( \rf|reg11|q\(6) & ( \rf|reg8|q\(6) & ( (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\)) # (\rf|reg10|q\(6)))) # (\a_sel[0]~input_o\ & (((\rf|reg9|q\(6)) # (\a_sel[1]~input_o\)))) ) ) ) # ( !\rf|reg11|q\(6) & ( \rf|reg8|q\(6) & ( 
-- (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\)) # (\rf|reg10|q\(6)))) # (\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\ & \rf|reg9|q\(6))))) ) ) ) # ( \rf|reg11|q\(6) & ( !\rf|reg8|q\(6) & ( (!\a_sel[0]~input_o\ & (\rf|reg10|q\(6) & (\a_sel[1]~input_o\))) # 
-- (\a_sel[0]~input_o\ & (((\rf|reg9|q\(6)) # (\a_sel[1]~input_o\)))) ) ) ) # ( !\rf|reg11|q\(6) & ( !\rf|reg8|q\(6) & ( (!\a_sel[0]~input_o\ & (\rf|reg10|q\(6) & (\a_sel[1]~input_o\))) # (\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\ & \rf|reg9|q\(6))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg10|ALT_INV_q\(6),
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|reg9|ALT_INV_q\(6),
	datae => \rf|reg11|ALT_INV_q\(6),
	dataf => \rf|reg8|ALT_INV_q\(6),
	combout => \rf|a1|Mux9~2_combout\);

-- Location: LABCELL_X17_Y4_N39
\rf|reg7|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg7|q[6]~feeder_combout\ = ( \m2|res[6]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[6]~35_combout\,
	combout => \rf|reg7|q[6]~feeder_combout\);

-- Location: FF_X17_Y4_N41
\rf|reg7|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg7|q[6]~feeder_combout\,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(6));

-- Location: FF_X17_Y2_N26
\rf|reg4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(6));

-- Location: FF_X17_Y2_N2
\rf|reg5|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(6));

-- Location: LABCELL_X17_Y4_N57
\rf|a1|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux9~1_combout\ = ( \rf|reg4|q\(6) & ( \rf|reg5|q\(6) & ( (!\a_sel[1]~input_o\) # ((!\a_sel[0]~input_o\ & ((\rf|reg6|q\(6)))) # (\a_sel[0]~input_o\ & (\rf|reg7|q\(6)))) ) ) ) # ( !\rf|reg4|q\(6) & ( \rf|reg5|q\(6) & ( (!\a_sel[1]~input_o\ & 
-- (((\a_sel[0]~input_o\)))) # (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|reg6|q\(6)))) # (\a_sel[0]~input_o\ & (\rf|reg7|q\(6))))) ) ) ) # ( \rf|reg4|q\(6) & ( !\rf|reg5|q\(6) & ( (!\a_sel[1]~input_o\ & (((!\a_sel[0]~input_o\)))) # 
-- (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|reg6|q\(6)))) # (\a_sel[0]~input_o\ & (\rf|reg7|q\(6))))) ) ) ) # ( !\rf|reg4|q\(6) & ( !\rf|reg5|q\(6) & ( (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|reg6|q\(6)))) # (\a_sel[0]~input_o\ & 
-- (\rf|reg7|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \rf|reg7|ALT_INV_q\(6),
	datac => \rf|reg6|ALT_INV_q\(6),
	datad => \ALT_INV_a_sel[0]~input_o\,
	datae => \rf|reg4|ALT_INV_q\(6),
	dataf => \rf|reg5|ALT_INV_q\(6),
	combout => \rf|a1|Mux9~1_combout\);

-- Location: FF_X18_Y4_N23
\rf|reg1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(6));

-- Location: FF_X18_Y4_N32
\rf|reg2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(6));

-- Location: FF_X18_Y3_N35
\rf|reg3|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(6));

-- Location: FF_X18_Y4_N26
\rf|reg0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(6));

-- Location: LABCELL_X18_Y4_N36
\rf|a1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux9~0_combout\ = ( \rf|reg3|q\(6) & ( \rf|reg0|q\(6) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\) # ((\rf|reg1|q\(6))))) # (\a_sel[1]~input_o\ & (((\rf|reg2|q\(6))) # (\a_sel[0]~input_o\))) ) ) ) # ( !\rf|reg3|q\(6) & ( \rf|reg0|q\(6) & ( 
-- (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\) # ((\rf|reg1|q\(6))))) # (\a_sel[1]~input_o\ & (!\a_sel[0]~input_o\ & ((\rf|reg2|q\(6))))) ) ) ) # ( \rf|reg3|q\(6) & ( !\rf|reg0|q\(6) & ( (!\a_sel[1]~input_o\ & (\a_sel[0]~input_o\ & (\rf|reg1|q\(6)))) # 
-- (\a_sel[1]~input_o\ & (((\rf|reg2|q\(6))) # (\a_sel[0]~input_o\))) ) ) ) # ( !\rf|reg3|q\(6) & ( !\rf|reg0|q\(6) & ( (!\a_sel[1]~input_o\ & (\a_sel[0]~input_o\ & (\rf|reg1|q\(6)))) # (\a_sel[1]~input_o\ & (!\a_sel[0]~input_o\ & ((\rf|reg2|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg1|ALT_INV_q\(6),
	datad => \rf|reg2|ALT_INV_q\(6),
	datae => \rf|reg3|ALT_INV_q\(6),
	dataf => \rf|reg0|ALT_INV_q\(6),
	combout => \rf|a1|Mux9~0_combout\);

-- Location: FF_X21_Y3_N2
\rf|reg14|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(6));

-- Location: LABCELL_X22_Y4_N36
\rf|reg13|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg13|q[6]~feeder_combout\ = ( \m2|res[6]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[6]~35_combout\,
	combout => \rf|reg13|q[6]~feeder_combout\);

-- Location: FF_X22_Y4_N38
\rf|reg13|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg13|q[6]~feeder_combout\,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(6));

-- Location: LABCELL_X21_Y3_N48
\rf|reg15|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg15|q[6]~feeder_combout\ = ( \m2|res[6]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[6]~35_combout\,
	combout => \rf|reg15|q[6]~feeder_combout\);

-- Location: FF_X21_Y3_N50
\rf|reg15|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg15|q[6]~feeder_combout\,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(6));

-- Location: FF_X21_Y3_N14
\rf|reg12|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[6]~35_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(6));

-- Location: LABCELL_X22_Y4_N51
\rf|a1|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux9~3_combout\ = ( \rf|reg15|q\(6) & ( \rf|reg12|q\(6) & ( (!\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\) # ((\rf|reg14|q\(6))))) # (\a_sel[0]~input_o\ & (((\rf|reg13|q\(6))) # (\a_sel[1]~input_o\))) ) ) ) # ( !\rf|reg15|q\(6) & ( \rf|reg12|q\(6) & 
-- ( (!\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\) # ((\rf|reg14|q\(6))))) # (\a_sel[0]~input_o\ & (!\a_sel[1]~input_o\ & ((\rf|reg13|q\(6))))) ) ) ) # ( \rf|reg15|q\(6) & ( !\rf|reg12|q\(6) & ( (!\a_sel[0]~input_o\ & (\a_sel[1]~input_o\ & 
-- (\rf|reg14|q\(6)))) # (\a_sel[0]~input_o\ & (((\rf|reg13|q\(6))) # (\a_sel[1]~input_o\))) ) ) ) # ( !\rf|reg15|q\(6) & ( !\rf|reg12|q\(6) & ( (!\a_sel[0]~input_o\ & (\a_sel[1]~input_o\ & (\rf|reg14|q\(6)))) # (\a_sel[0]~input_o\ & (!\a_sel[1]~input_o\ & 
-- ((\rf|reg13|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[0]~input_o\,
	datab => \ALT_INV_a_sel[1]~input_o\,
	datac => \rf|reg14|ALT_INV_q\(6),
	datad => \rf|reg13|ALT_INV_q\(6),
	datae => \rf|reg15|ALT_INV_q\(6),
	dataf => \rf|reg12|ALT_INV_q\(6),
	combout => \rf|a1|Mux9~3_combout\);

-- Location: LABCELL_X18_Y4_N57
\rf|a1|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux9~4_combout\ = ( \rf|a1|Mux9~0_combout\ & ( \rf|a1|Mux9~3_combout\ & ( (!\a_sel[2]~input_o\ & (((!\a_sel[3]~input_o\)) # (\rf|a1|Mux9~2_combout\))) # (\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\) # (\rf|a1|Mux9~1_combout\)))) ) ) ) # ( 
-- !\rf|a1|Mux9~0_combout\ & ( \rf|a1|Mux9~3_combout\ & ( (!\a_sel[2]~input_o\ & (\rf|a1|Mux9~2_combout\ & ((\a_sel[3]~input_o\)))) # (\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\) # (\rf|a1|Mux9~1_combout\)))) ) ) ) # ( \rf|a1|Mux9~0_combout\ & ( 
-- !\rf|a1|Mux9~3_combout\ & ( (!\a_sel[2]~input_o\ & (((!\a_sel[3]~input_o\)) # (\rf|a1|Mux9~2_combout\))) # (\a_sel[2]~input_o\ & (((\rf|a1|Mux9~1_combout\ & !\a_sel[3]~input_o\)))) ) ) ) # ( !\rf|a1|Mux9~0_combout\ & ( !\rf|a1|Mux9~3_combout\ & ( 
-- (!\a_sel[2]~input_o\ & (\rf|a1|Mux9~2_combout\ & ((\a_sel[3]~input_o\)))) # (\a_sel[2]~input_o\ & (((\rf|a1|Mux9~1_combout\ & !\a_sel[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \rf|a1|ALT_INV_Mux9~2_combout\,
	datac => \rf|a1|ALT_INV_Mux9~1_combout\,
	datad => \ALT_INV_a_sel[3]~input_o\,
	datae => \rf|a1|ALT_INV_Mux9~0_combout\,
	dataf => \rf|a1|ALT_INV_Mux9~3_combout\,
	combout => \rf|a1|Mux9~4_combout\);

-- Location: MLABCELL_X19_Y2_N57
\al_shift|al|au|f6|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f6|c~0_combout\ = ( \al_shift|al|au|Add0~25_sumout\ & ( \rf|a1|Mux9~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rf|a1|ALT_INV_Mux9~4_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~25_sumout\,
	combout => \al_shift|al|au|f6|c~0_combout\);

-- Location: FF_X18_Y3_N2
\rf|reg1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(4));

-- Location: FF_X18_Y4_N41
\rf|reg0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(4));

-- Location: FF_X18_Y4_N44
\rf|reg2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(4));

-- Location: LABCELL_X18_Y3_N15
\rf|a1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux11~0_combout\ = ( \rf|reg0|q\(4) & ( \rf|reg2|q\(4) & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & ((\rf|reg1|q\(4)))) # (\a_sel[1]~input_o\ & (\rf|reg3|q\(4)))) ) ) ) # ( !\rf|reg0|q\(4) & ( \rf|reg2|q\(4) & ( (!\a_sel[1]~input_o\ & 
-- (\a_sel[0]~input_o\ & ((\rf|reg1|q\(4))))) # (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\) # ((\rf|reg3|q\(4))))) ) ) ) # ( \rf|reg0|q\(4) & ( !\rf|reg2|q\(4) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\) # ((\rf|reg1|q\(4))))) # (\a_sel[1]~input_o\ & 
-- (\a_sel[0]~input_o\ & (\rf|reg3|q\(4)))) ) ) ) # ( !\rf|reg0|q\(4) & ( !\rf|reg2|q\(4) & ( (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & ((\rf|reg1|q\(4)))) # (\a_sel[1]~input_o\ & (\rf|reg3|q\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg3|ALT_INV_q\(4),
	datad => \rf|reg1|ALT_INV_q\(4),
	datae => \rf|reg0|ALT_INV_q\(4),
	dataf => \rf|reg2|ALT_INV_q\(4),
	combout => \rf|a1|Mux11~0_combout\);

-- Location: LABCELL_X15_Y1_N36
\rf|reg11|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg11|q[4]~feeder_combout\ = ( \m2|res[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[4]~23_combout\,
	combout => \rf|reg11|q[4]~feeder_combout\);

-- Location: FF_X15_Y1_N38
\rf|reg11|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg11|q[4]~feeder_combout\,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(4));

-- Location: FF_X15_Y1_N44
\rf|reg10|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(4));

-- Location: LABCELL_X15_Y1_N48
\rf|reg8|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg8|q[4]~feeder_combout\ = ( \m2|res[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[4]~23_combout\,
	combout => \rf|reg8|q[4]~feeder_combout\);

-- Location: FF_X15_Y1_N49
\rf|reg8|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg8|q[4]~feeder_combout\,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(4));

-- Location: MLABCELL_X14_Y1_N48
\rf|reg9|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg9|q[4]~feeder_combout\ = ( \m2|res[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[4]~23_combout\,
	combout => \rf|reg9|q[4]~feeder_combout\);

-- Location: FF_X14_Y1_N49
\rf|reg9|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg9|q[4]~feeder_combout\,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(4));

-- Location: LABCELL_X15_Y1_N30
\rf|a1|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux11~2_combout\ = ( \rf|reg8|q\(4) & ( \rf|reg9|q\(4) & ( (!\a_sel[1]~input_o\) # ((!\a_sel[0]~input_o\ & ((\rf|reg10|q\(4)))) # (\a_sel[0]~input_o\ & (\rf|reg11|q\(4)))) ) ) ) # ( !\rf|reg8|q\(4) & ( \rf|reg9|q\(4) & ( (!\a_sel[0]~input_o\ & 
-- (\a_sel[1]~input_o\ & ((\rf|reg10|q\(4))))) # (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\) # ((\rf|reg11|q\(4))))) ) ) ) # ( \rf|reg8|q\(4) & ( !\rf|reg9|q\(4) & ( (!\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\) # ((\rf|reg10|q\(4))))) # (\a_sel[0]~input_o\ 
-- & (\a_sel[1]~input_o\ & (\rf|reg11|q\(4)))) ) ) ) # ( !\rf|reg8|q\(4) & ( !\rf|reg9|q\(4) & ( (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|reg10|q\(4)))) # (\a_sel[0]~input_o\ & (\rf|reg11|q\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[0]~input_o\,
	datab => \ALT_INV_a_sel[1]~input_o\,
	datac => \rf|reg11|ALT_INV_q\(4),
	datad => \rf|reg10|ALT_INV_q\(4),
	datae => \rf|reg8|ALT_INV_q\(4),
	dataf => \rf|reg9|ALT_INV_q\(4),
	combout => \rf|a1|Mux11~2_combout\);

-- Location: FF_X17_Y2_N11
\rf|reg6|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(4));

-- Location: FF_X17_Y4_N17
\rf|reg7|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(4));

-- Location: FF_X17_Y2_N17
\rf|reg4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(4));

-- Location: FF_X17_Y2_N56
\rf|reg5|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(4));

-- Location: LABCELL_X17_Y4_N42
\rf|a1|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux11~1_combout\ = ( \rf|reg4|q\(4) & ( \rf|reg5|q\(4) & ( (!\a_sel[1]~input_o\) # ((!\a_sel[0]~input_o\ & (\rf|reg6|q\(4))) # (\a_sel[0]~input_o\ & ((\rf|reg7|q\(4))))) ) ) ) # ( !\rf|reg4|q\(4) & ( \rf|reg5|q\(4) & ( (!\a_sel[1]~input_o\ & 
-- (\a_sel[0]~input_o\)) # (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & (\rf|reg6|q\(4))) # (\a_sel[0]~input_o\ & ((\rf|reg7|q\(4)))))) ) ) ) # ( \rf|reg4|q\(4) & ( !\rf|reg5|q\(4) & ( (!\a_sel[1]~input_o\ & (!\a_sel[0]~input_o\)) # (\a_sel[1]~input_o\ & 
-- ((!\a_sel[0]~input_o\ & (\rf|reg6|q\(4))) # (\a_sel[0]~input_o\ & ((\rf|reg7|q\(4)))))) ) ) ) # ( !\rf|reg4|q\(4) & ( !\rf|reg5|q\(4) & ( (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & (\rf|reg6|q\(4))) # (\a_sel[0]~input_o\ & ((\rf|reg7|q\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg6|ALT_INV_q\(4),
	datad => \rf|reg7|ALT_INV_q\(4),
	datae => \rf|reg4|ALT_INV_q\(4),
	dataf => \rf|reg5|ALT_INV_q\(4),
	combout => \rf|a1|Mux11~1_combout\);

-- Location: FF_X15_Y3_N56
\rf|reg13|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(4));

-- Location: FF_X18_Y3_N38
\rf|reg14|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(4));

-- Location: LABCELL_X17_Y1_N27
\rf|reg12|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg12|q[4]~feeder_combout\ = ( \m2|res[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[4]~23_combout\,
	combout => \rf|reg12|q[4]~feeder_combout\);

-- Location: FF_X17_Y1_N29
\rf|reg12|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg12|q[4]~feeder_combout\,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(4));

-- Location: LABCELL_X18_Y1_N33
\rf|reg15|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg15|q[4]~feeder_combout\ = ( \m2|res[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[4]~23_combout\,
	combout => \rf|reg15|q[4]~feeder_combout\);

-- Location: FF_X18_Y1_N35
\rf|reg15|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg15|q[4]~feeder_combout\,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(4));

-- Location: LABCELL_X15_Y3_N57
\rf|a1|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux11~3_combout\ = ( \rf|reg12|q\(4) & ( \rf|reg15|q\(4) & ( (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\) # (\rf|reg14|q\(4))))) # (\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\)) # (\rf|reg13|q\(4)))) ) ) ) # ( !\rf|reg12|q\(4) & ( \rf|reg15|q\(4) 
-- & ( (!\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\ & \rf|reg14|q\(4))))) # (\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\)) # (\rf|reg13|q\(4)))) ) ) ) # ( \rf|reg12|q\(4) & ( !\rf|reg15|q\(4) & ( (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\) # 
-- (\rf|reg14|q\(4))))) # (\a_sel[0]~input_o\ & (\rf|reg13|q\(4) & (!\a_sel[1]~input_o\))) ) ) ) # ( !\rf|reg12|q\(4) & ( !\rf|reg15|q\(4) & ( (!\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\ & \rf|reg14|q\(4))))) # (\a_sel[0]~input_o\ & (\rf|reg13|q\(4) & 
-- (!\a_sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg13|ALT_INV_q\(4),
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|reg14|ALT_INV_q\(4),
	datae => \rf|reg12|ALT_INV_q\(4),
	dataf => \rf|reg15|ALT_INV_q\(4),
	combout => \rf|a1|Mux11~3_combout\);

-- Location: LABCELL_X18_Y1_N54
\rf|a1|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux11~4_combout\ = ( \rf|a1|Mux11~1_combout\ & ( \rf|a1|Mux11~3_combout\ & ( ((!\a_sel[3]~input_o\ & (\rf|a1|Mux11~0_combout\)) # (\a_sel[3]~input_o\ & ((\rf|a1|Mux11~2_combout\)))) # (\a_sel[2]~input_o\) ) ) ) # ( !\rf|a1|Mux11~1_combout\ & ( 
-- \rf|a1|Mux11~3_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|a1|Mux11~0_combout\)) # (\a_sel[3]~input_o\ & ((\rf|a1|Mux11~2_combout\))))) # (\a_sel[2]~input_o\ & (\a_sel[3]~input_o\)) ) ) ) # ( \rf|a1|Mux11~1_combout\ & ( 
-- !\rf|a1|Mux11~3_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|a1|Mux11~0_combout\)) # (\a_sel[3]~input_o\ & ((\rf|a1|Mux11~2_combout\))))) # (\a_sel[2]~input_o\ & (!\a_sel[3]~input_o\)) ) ) ) # ( !\rf|a1|Mux11~1_combout\ & ( 
-- !\rf|a1|Mux11~3_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|a1|Mux11~0_combout\)) # (\a_sel[3]~input_o\ & ((\rf|a1|Mux11~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|a1|ALT_INV_Mux11~0_combout\,
	datad => \rf|a1|ALT_INV_Mux11~2_combout\,
	datae => \rf|a1|ALT_INV_Mux11~1_combout\,
	dataf => \rf|a1|ALT_INV_Mux11~3_combout\,
	combout => \rf|a1|Mux11~4_combout\);

-- Location: MLABCELL_X19_Y2_N33
\al_shift|al|au|f6|c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f6|c~1_combout\ = ( !\al_shift|al|au|Add0~25_sumout\ & ( !\rf|a1|Mux9~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rf|a1|ALT_INV_Mux9~4_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~25_sumout\,
	combout => \al_shift|al|au|f6|c~1_combout\);

-- Location: FF_X23_Y3_N41
\rf|reg15|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(5));

-- Location: LABCELL_X23_Y4_N54
\rf|reg11|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg11|q[5]~feeder_combout\ = ( \m2|res[5]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[5]~29_combout\,
	combout => \rf|reg11|q[5]~feeder_combout\);

-- Location: FF_X23_Y4_N56
\rf|reg11|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg11|q[5]~feeder_combout\,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(5));

-- Location: LABCELL_X23_Y4_N0
\rf|reg7|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg7|q[5]~feeder_combout\ = ( \m2|res[5]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[5]~29_combout\,
	combout => \rf|reg7|q[5]~feeder_combout\);

-- Location: FF_X23_Y4_N2
\rf|reg7|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg7|q[5]~feeder_combout\,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(5));

-- Location: FF_X23_Y3_N58
\rf|reg3|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(5));

-- Location: LABCELL_X23_Y4_N51
\rf|a1|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux10~3_combout\ = ( \rf|reg7|q\(5) & ( \rf|reg3|q\(5) & ( (!\a_sel[3]~input_o\) # ((!\a_sel[2]~input_o\ & ((\rf|reg11|q\(5)))) # (\a_sel[2]~input_o\ & (\rf|reg15|q\(5)))) ) ) ) # ( !\rf|reg7|q\(5) & ( \rf|reg3|q\(5) & ( (!\a_sel[2]~input_o\ & 
-- (((!\a_sel[3]~input_o\) # (\rf|reg11|q\(5))))) # (\a_sel[2]~input_o\ & (\rf|reg15|q\(5) & (\a_sel[3]~input_o\))) ) ) ) # ( \rf|reg7|q\(5) & ( !\rf|reg3|q\(5) & ( (!\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\ & \rf|reg11|q\(5))))) # (\a_sel[2]~input_o\ & 
-- (((!\a_sel[3]~input_o\)) # (\rf|reg15|q\(5)))) ) ) ) # ( !\rf|reg7|q\(5) & ( !\rf|reg3|q\(5) & ( (\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|reg11|q\(5)))) # (\a_sel[2]~input_o\ & (\rf|reg15|q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg15|ALT_INV_q\(5),
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \ALT_INV_a_sel[3]~input_o\,
	datad => \rf|reg11|ALT_INV_q\(5),
	datae => \rf|reg7|ALT_INV_q\(5),
	dataf => \rf|reg3|ALT_INV_q\(5),
	combout => \rf|a1|Mux10~3_combout\);

-- Location: FF_X22_Y3_N53
\rf|reg0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(5));

-- Location: FF_X22_Y2_N2
\rf|reg12|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(5));

-- Location: FF_X23_Y3_N35
\rf|reg8|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(5));

-- Location: LABCELL_X22_Y2_N3
\rf|a1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux10~0_combout\ = ( \rf|reg12|q\(5) & ( \rf|reg8|q\(5) & ( ((!\a_sel[2]~input_o\ & ((\rf|reg0|q\(5)))) # (\a_sel[2]~input_o\ & (\rf|reg4|q\(5)))) # (\a_sel[3]~input_o\) ) ) ) # ( !\rf|reg12|q\(5) & ( \rf|reg8|q\(5) & ( (!\a_sel[3]~input_o\ & 
-- ((!\a_sel[2]~input_o\ & ((\rf|reg0|q\(5)))) # (\a_sel[2]~input_o\ & (\rf|reg4|q\(5))))) # (\a_sel[3]~input_o\ & (!\a_sel[2]~input_o\)) ) ) ) # ( \rf|reg12|q\(5) & ( !\rf|reg8|q\(5) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|reg0|q\(5)))) # 
-- (\a_sel[2]~input_o\ & (\rf|reg4|q\(5))))) # (\a_sel[3]~input_o\ & (\a_sel[2]~input_o\)) ) ) ) # ( !\rf|reg12|q\(5) & ( !\rf|reg8|q\(5) & ( (!\a_sel[3]~input_o\ & ((!\a_sel[2]~input_o\ & ((\rf|reg0|q\(5)))) # (\a_sel[2]~input_o\ & (\rf|reg4|q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[3]~input_o\,
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \rf|reg4|ALT_INV_q\(5),
	datad => \rf|reg0|ALT_INV_q\(5),
	datae => \rf|reg12|ALT_INV_q\(5),
	dataf => \rf|reg8|ALT_INV_q\(5),
	combout => \rf|a1|Mux10~0_combout\);

-- Location: LABCELL_X22_Y1_N36
\rf|reg13|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg13|q[5]~feeder_combout\ = ( \m2|res[5]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[5]~29_combout\,
	combout => \rf|reg13|q[5]~feeder_combout\);

-- Location: FF_X22_Y1_N38
\rf|reg13|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg13|q[5]~feeder_combout\,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(5));

-- Location: LABCELL_X22_Y1_N42
\rf|reg5|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg5|q[5]~feeder_combout\ = ( \m2|res[5]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[5]~29_combout\,
	combout => \rf|reg5|q[5]~feeder_combout\);

-- Location: FF_X22_Y1_N44
\rf|reg5|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg5|q[5]~feeder_combout\,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(5));

-- Location: LABCELL_X22_Y1_N54
\rf|reg9|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg9|q[5]~feeder_combout\ = ( \m2|res[5]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[5]~29_combout\,
	combout => \rf|reg9|q[5]~feeder_combout\);

-- Location: FF_X22_Y1_N56
\rf|reg9|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg9|q[5]~feeder_combout\,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(5));

-- Location: FF_X23_Y2_N29
\rf|reg1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(5));

-- Location: LABCELL_X22_Y1_N6
\rf|a1|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux10~1_combout\ = ( \rf|reg9|q\(5) & ( \rf|reg1|q\(5) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & ((\rf|reg5|q\(5)))) # (\a_sel[3]~input_o\ & (\rf|reg13|q\(5)))) ) ) ) # ( !\rf|reg9|q\(5) & ( \rf|reg1|q\(5) & ( (!\a_sel[2]~input_o\ & 
-- (!\a_sel[3]~input_o\)) # (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg5|q\(5)))) # (\a_sel[3]~input_o\ & (\rf|reg13|q\(5))))) ) ) ) # ( \rf|reg9|q\(5) & ( !\rf|reg1|q\(5) & ( (!\a_sel[2]~input_o\ & (\a_sel[3]~input_o\)) # (\a_sel[2]~input_o\ & 
-- ((!\a_sel[3]~input_o\ & ((\rf|reg5|q\(5)))) # (\a_sel[3]~input_o\ & (\rf|reg13|q\(5))))) ) ) ) # ( !\rf|reg9|q\(5) & ( !\rf|reg1|q\(5) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg5|q\(5)))) # (\a_sel[3]~input_o\ & (\rf|reg13|q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|reg13|ALT_INV_q\(5),
	datad => \rf|reg5|ALT_INV_q\(5),
	datae => \rf|reg9|ALT_INV_q\(5),
	dataf => \rf|reg1|ALT_INV_q\(5),
	combout => \rf|a1|Mux10~1_combout\);

-- Location: FF_X23_Y2_N34
\rf|reg6|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(5));

-- Location: FF_X21_Y1_N17
\rf|reg10|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(5));

-- Location: FF_X22_Y2_N56
\rf|reg14|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(5));

-- Location: FF_X22_Y3_N11
\rf|reg2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(5));

-- Location: LABCELL_X21_Y1_N42
\rf|a1|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux10~2_combout\ = ( \rf|reg14|q\(5) & ( \rf|reg2|q\(5) & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\) # ((\rf|reg10|q\(5))))) # (\a_sel[2]~input_o\ & (((\rf|reg6|q\(5))) # (\a_sel[3]~input_o\))) ) ) ) # ( !\rf|reg14|q\(5) & ( \rf|reg2|q\(5) & ( 
-- (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\) # ((\rf|reg10|q\(5))))) # (\a_sel[2]~input_o\ & (!\a_sel[3]~input_o\ & (\rf|reg6|q\(5)))) ) ) ) # ( \rf|reg14|q\(5) & ( !\rf|reg2|q\(5) & ( (!\a_sel[2]~input_o\ & (\a_sel[3]~input_o\ & ((\rf|reg10|q\(5))))) # 
-- (\a_sel[2]~input_o\ & (((\rf|reg6|q\(5))) # (\a_sel[3]~input_o\))) ) ) ) # ( !\rf|reg14|q\(5) & ( !\rf|reg2|q\(5) & ( (!\a_sel[2]~input_o\ & (\a_sel[3]~input_o\ & ((\rf|reg10|q\(5))))) # (\a_sel[2]~input_o\ & (!\a_sel[3]~input_o\ & (\rf|reg6|q\(5)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|reg6|ALT_INV_q\(5),
	datad => \rf|reg10|ALT_INV_q\(5),
	datae => \rf|reg14|ALT_INV_q\(5),
	dataf => \rf|reg2|ALT_INV_q\(5),
	combout => \rf|a1|Mux10~2_combout\);

-- Location: LABCELL_X22_Y1_N3
\rf|a1|Mux10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux10~4_combout\ = ( \rf|a1|Mux10~2_combout\ & ( \a_sel[1]~input_o\ & ( (!\a_sel[0]~input_o\) # (\rf|a1|Mux10~3_combout\) ) ) ) # ( !\rf|a1|Mux10~2_combout\ & ( \a_sel[1]~input_o\ & ( (\rf|a1|Mux10~3_combout\ & \a_sel[0]~input_o\) ) ) ) # ( 
-- \rf|a1|Mux10~2_combout\ & ( !\a_sel[1]~input_o\ & ( (!\a_sel[0]~input_o\ & (\rf|a1|Mux10~0_combout\)) # (\a_sel[0]~input_o\ & ((\rf|a1|Mux10~1_combout\))) ) ) ) # ( !\rf|a1|Mux10~2_combout\ & ( !\a_sel[1]~input_o\ & ( (!\a_sel[0]~input_o\ & 
-- (\rf|a1|Mux10~0_combout\)) # (\a_sel[0]~input_o\ & ((\rf|a1|Mux10~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux10~3_combout\,
	datab => \rf|a1|ALT_INV_Mux10~0_combout\,
	datac => \rf|a1|ALT_INV_Mux10~1_combout\,
	datad => \ALT_INV_a_sel[0]~input_o\,
	datae => \rf|a1|ALT_INV_Mux10~2_combout\,
	dataf => \ALT_INV_a_sel[1]~input_o\,
	combout => \rf|a1|Mux10~4_combout\);

-- Location: FF_X14_Y4_N47
\rf|reg11|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(3));

-- Location: FF_X15_Y4_N17
\rf|reg7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(3));

-- Location: FF_X14_Y4_N53
\rf|reg3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(3));

-- Location: FF_X14_Y4_N8
\rf|reg15|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(3));

-- Location: LABCELL_X15_Y4_N48
\rf|a1|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux12~3_combout\ = ( \rf|reg3|q\(3) & ( \rf|reg15|q\(3) & ( (!\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\) # (\rf|reg7|q\(3))))) # (\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\)) # (\rf|reg11|q\(3)))) ) ) ) # ( !\rf|reg3|q\(3) & ( \rf|reg15|q\(3) & ( 
-- (!\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\ & \rf|reg7|q\(3))))) # (\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\)) # (\rf|reg11|q\(3)))) ) ) ) # ( \rf|reg3|q\(3) & ( !\rf|reg15|q\(3) & ( (!\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\) # (\rf|reg7|q\(3))))) 
-- # (\a_sel[3]~input_o\ & (\rf|reg11|q\(3) & (!\a_sel[2]~input_o\))) ) ) ) # ( !\rf|reg3|q\(3) & ( !\rf|reg15|q\(3) & ( (!\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\ & \rf|reg7|q\(3))))) # (\a_sel[3]~input_o\ & (\rf|reg11|q\(3) & (!\a_sel[2]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[3]~input_o\,
	datab => \rf|reg11|ALT_INV_q\(3),
	datac => \ALT_INV_a_sel[2]~input_o\,
	datad => \rf|reg7|ALT_INV_q\(3),
	datae => \rf|reg3|ALT_INV_q\(3),
	dataf => \rf|reg15|ALT_INV_q\(3),
	combout => \rf|a1|Mux12~3_combout\);

-- Location: LABCELL_X13_Y2_N36
\rf|reg12|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg12|q[3]~feeder_combout\ = ( \m2|res[3]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[3]~19_combout\,
	combout => \rf|reg12|q[3]~feeder_combout\);

-- Location: FF_X13_Y2_N38
\rf|reg12|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg12|q[3]~feeder_combout\,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(3));

-- Location: FF_X14_Y2_N47
\rf|reg4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(3));

-- Location: MLABCELL_X14_Y1_N6
\rf|reg8|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg8|q[3]~feeder_combout\ = ( \m2|res[3]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[3]~19_combout\,
	combout => \rf|reg8|q[3]~feeder_combout\);

-- Location: FF_X14_Y1_N7
\rf|reg8|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg8|q[3]~feeder_combout\,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(3));

-- Location: LABCELL_X13_Y3_N3
\rf|reg0|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg0|q[3]~feeder_combout\ = ( \m2|res[3]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[3]~19_combout\,
	combout => \rf|reg0|q[3]~feeder_combout\);

-- Location: FF_X13_Y3_N5
\rf|reg0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg0|q[3]~feeder_combout\,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(3));

-- Location: LABCELL_X13_Y2_N57
\rf|a1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux12~0_combout\ = ( \rf|reg8|q\(3) & ( \rf|reg0|q\(3) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & ((\rf|reg4|q\(3)))) # (\a_sel[3]~input_o\ & (\rf|reg12|q\(3)))) ) ) ) # ( !\rf|reg8|q\(3) & ( \rf|reg0|q\(3) & ( (!\a_sel[3]~input_o\ & 
-- (((!\a_sel[2]~input_o\) # (\rf|reg4|q\(3))))) # (\a_sel[3]~input_o\ & (\rf|reg12|q\(3) & (\a_sel[2]~input_o\))) ) ) ) # ( \rf|reg8|q\(3) & ( !\rf|reg0|q\(3) & ( (!\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\ & \rf|reg4|q\(3))))) # (\a_sel[3]~input_o\ & 
-- (((!\a_sel[2]~input_o\)) # (\rf|reg12|q\(3)))) ) ) ) # ( !\rf|reg8|q\(3) & ( !\rf|reg0|q\(3) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|reg4|q\(3)))) # (\a_sel[3]~input_o\ & (\rf|reg12|q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg12|ALT_INV_q\(3),
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \ALT_INV_a_sel[2]~input_o\,
	datad => \rf|reg4|ALT_INV_q\(3),
	datae => \rf|reg8|ALT_INV_q\(3),
	dataf => \rf|reg0|ALT_INV_q\(3),
	combout => \rf|a1|Mux12~0_combout\);

-- Location: FF_X15_Y2_N20
\rf|reg5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(3));

-- Location: FF_X15_Y2_N2
\rf|reg13|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(3));

-- Location: LABCELL_X17_Y3_N30
\rf|reg9|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg9|q[3]~feeder_combout\ = ( \m2|res[3]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[3]~19_combout\,
	combout => \rf|reg9|q[3]~feeder_combout\);

-- Location: FF_X17_Y3_N31
\rf|reg9|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg9|q[3]~feeder_combout\,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(3));

-- Location: FF_X18_Y4_N11
\rf|reg1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(3));

-- Location: LABCELL_X15_Y2_N57
\rf|a1|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux12~1_combout\ = ( \rf|reg9|q\(3) & ( \rf|reg1|q\(3) & ( (!\a_sel[2]~input_o\) # ((!\a_sel[3]~input_o\ & (\rf|reg5|q\(3))) # (\a_sel[3]~input_o\ & ((\rf|reg13|q\(3))))) ) ) ) # ( !\rf|reg9|q\(3) & ( \rf|reg1|q\(3) & ( (!\a_sel[2]~input_o\ & 
-- (((!\a_sel[3]~input_o\)))) # (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|reg5|q\(3))) # (\a_sel[3]~input_o\ & ((\rf|reg13|q\(3)))))) ) ) ) # ( \rf|reg9|q\(3) & ( !\rf|reg1|q\(3) & ( (!\a_sel[2]~input_o\ & (((\a_sel[3]~input_o\)))) # 
-- (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|reg5|q\(3))) # (\a_sel[3]~input_o\ & ((\rf|reg13|q\(3)))))) ) ) ) # ( !\rf|reg9|q\(3) & ( !\rf|reg1|q\(3) & ( (\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & (\rf|reg5|q\(3))) # (\a_sel[3]~input_o\ & 
-- ((\rf|reg13|q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg5|ALT_INV_q\(3),
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \ALT_INV_a_sel[3]~input_o\,
	datad => \rf|reg13|ALT_INV_q\(3),
	datae => \rf|reg9|ALT_INV_q\(3),
	dataf => \rf|reg1|ALT_INV_q\(3),
	combout => \rf|a1|Mux12~1_combout\);

-- Location: LABCELL_X13_Y2_N48
\rf|reg10|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg10|q[3]~feeder_combout\ = ( \m2|res[3]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[3]~19_combout\,
	combout => \rf|reg10|q[3]~feeder_combout\);

-- Location: FF_X13_Y2_N50
\rf|reg10|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg10|q[3]~feeder_combout\,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(3));

-- Location: FF_X18_Y4_N13
\rf|reg2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(3));

-- Location: FF_X15_Y2_N38
\rf|reg14|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[3]~19_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(3));

-- Location: LABCELL_X13_Y2_N45
\rf|a1|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux12~2_combout\ = ( \rf|reg2|q\(3) & ( \rf|reg14|q\(3) & ( (!\a_sel[2]~input_o\ & (((!\a_sel[3]~input_o\)) # (\rf|reg10|q\(3)))) # (\a_sel[2]~input_o\ & (((\rf|reg6|q\(3)) # (\a_sel[3]~input_o\)))) ) ) ) # ( !\rf|reg2|q\(3) & ( \rf|reg14|q\(3) & ( 
-- (!\a_sel[2]~input_o\ & (\rf|reg10|q\(3) & (\a_sel[3]~input_o\))) # (\a_sel[2]~input_o\ & (((\rf|reg6|q\(3)) # (\a_sel[3]~input_o\)))) ) ) ) # ( \rf|reg2|q\(3) & ( !\rf|reg14|q\(3) & ( (!\a_sel[2]~input_o\ & (((!\a_sel[3]~input_o\)) # (\rf|reg10|q\(3)))) # 
-- (\a_sel[2]~input_o\ & (((!\a_sel[3]~input_o\ & \rf|reg6|q\(3))))) ) ) ) # ( !\rf|reg2|q\(3) & ( !\rf|reg14|q\(3) & ( (!\a_sel[2]~input_o\ & (\rf|reg10|q\(3) & (\a_sel[3]~input_o\))) # (\a_sel[2]~input_o\ & (((!\a_sel[3]~input_o\ & \rf|reg6|q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg10|ALT_INV_q\(3),
	datab => \ALT_INV_a_sel[2]~input_o\,
	datac => \ALT_INV_a_sel[3]~input_o\,
	datad => \rf|reg6|ALT_INV_q\(3),
	datae => \rf|reg2|ALT_INV_q\(3),
	dataf => \rf|reg14|ALT_INV_q\(3),
	combout => \rf|a1|Mux12~2_combout\);

-- Location: MLABCELL_X14_Y2_N42
\rf|a1|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux12~4_combout\ = ( \rf|a1|Mux12~1_combout\ & ( \rf|a1|Mux12~2_combout\ & ( (!\a_sel[0]~input_o\ & (((\rf|a1|Mux12~0_combout\) # (\a_sel[1]~input_o\)))) # (\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\)) # (\rf|a1|Mux12~3_combout\))) ) ) ) # ( 
-- !\rf|a1|Mux12~1_combout\ & ( \rf|a1|Mux12~2_combout\ & ( (!\a_sel[0]~input_o\ & (((\rf|a1|Mux12~0_combout\) # (\a_sel[1]~input_o\)))) # (\a_sel[0]~input_o\ & (\rf|a1|Mux12~3_combout\ & (\a_sel[1]~input_o\))) ) ) ) # ( \rf|a1|Mux12~1_combout\ & ( 
-- !\rf|a1|Mux12~2_combout\ & ( (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\ & \rf|a1|Mux12~0_combout\)))) # (\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\)) # (\rf|a1|Mux12~3_combout\))) ) ) ) # ( !\rf|a1|Mux12~1_combout\ & ( !\rf|a1|Mux12~2_combout\ & ( 
-- (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\ & \rf|a1|Mux12~0_combout\)))) # (\a_sel[0]~input_o\ & (\rf|a1|Mux12~3_combout\ & (\a_sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[0]~input_o\,
	datab => \rf|a1|ALT_INV_Mux12~3_combout\,
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|a1|ALT_INV_Mux12~0_combout\,
	datae => \rf|a1|ALT_INV_Mux12~1_combout\,
	dataf => \rf|a1|ALT_INV_Mux12~2_combout\,
	combout => \rf|a1|Mux12~4_combout\);

-- Location: FF_X15_Y3_N50
\rf|reg10|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(2));

-- Location: LABCELL_X17_Y3_N39
\rf|reg8|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg8|q[2]~feeder_combout\ = ( \m2|res[2]~84_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[2]~84_combout\,
	combout => \rf|reg8|q[2]~feeder_combout\);

-- Location: FF_X17_Y3_N41
\rf|reg8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg8|q[2]~feeder_combout\,
	ena => \rf|d1|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg8|q\(2));

-- Location: LABCELL_X17_Y3_N21
\rf|reg9|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg9|q[2]~feeder_combout\ = ( \m2|res[2]~84_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[2]~84_combout\,
	combout => \rf|reg9|q[2]~feeder_combout\);

-- Location: FF_X17_Y3_N23
\rf|reg9|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg9|q[2]~feeder_combout\,
	ena => \rf|d1|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg9|q\(2));

-- Location: FF_X17_Y3_N26
\rf|reg11|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(2));

-- Location: LABCELL_X15_Y3_N24
\rf|a1|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux13~2_combout\ = ( \rf|reg9|q\(2) & ( \rf|reg11|q\(2) & ( ((!\a_sel[1]~input_o\ & ((\rf|reg8|q\(2)))) # (\a_sel[1]~input_o\ & (\rf|reg10|q\(2)))) # (\a_sel[0]~input_o\) ) ) ) # ( !\rf|reg9|q\(2) & ( \rf|reg11|q\(2) & ( (!\a_sel[1]~input_o\ & 
-- (!\a_sel[0]~input_o\ & ((\rf|reg8|q\(2))))) # (\a_sel[1]~input_o\ & (((\rf|reg10|q\(2))) # (\a_sel[0]~input_o\))) ) ) ) # ( \rf|reg9|q\(2) & ( !\rf|reg11|q\(2) & ( (!\a_sel[1]~input_o\ & (((\rf|reg8|q\(2))) # (\a_sel[0]~input_o\))) # (\a_sel[1]~input_o\ & 
-- (!\a_sel[0]~input_o\ & (\rf|reg10|q\(2)))) ) ) ) # ( !\rf|reg9|q\(2) & ( !\rf|reg11|q\(2) & ( (!\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & ((\rf|reg8|q\(2)))) # (\a_sel[1]~input_o\ & (\rf|reg10|q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg10|ALT_INV_q\(2),
	datad => \rf|reg8|ALT_INV_q\(2),
	datae => \rf|reg9|ALT_INV_q\(2),
	dataf => \rf|reg11|ALT_INV_q\(2),
	combout => \rf|a1|Mux13~2_combout\);

-- Location: FF_X19_Y3_N59
\rf|reg3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(2));

-- Location: FF_X19_Y3_N26
\rf|reg1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg1|q\(2));

-- Location: FF_X15_Y3_N29
\rf|reg0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(2));

-- Location: MLABCELL_X19_Y3_N36
\rf|a1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux13~0_combout\ = ( \rf|reg2|q\(2) & ( \rf|reg0|q\(2) & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & ((\rf|reg1|q\(2)))) # (\a_sel[1]~input_o\ & (\rf|reg3|q\(2)))) ) ) ) # ( !\rf|reg2|q\(2) & ( \rf|reg0|q\(2) & ( (!\a_sel[1]~input_o\ & 
-- (((!\a_sel[0]~input_o\) # (\rf|reg1|q\(2))))) # (\a_sel[1]~input_o\ & (\rf|reg3|q\(2) & ((\a_sel[0]~input_o\)))) ) ) ) # ( \rf|reg2|q\(2) & ( !\rf|reg0|q\(2) & ( (!\a_sel[1]~input_o\ & (((\rf|reg1|q\(2) & \a_sel[0]~input_o\)))) # (\a_sel[1]~input_o\ & 
-- (((!\a_sel[0]~input_o\)) # (\rf|reg3|q\(2)))) ) ) ) # ( !\rf|reg2|q\(2) & ( !\rf|reg0|q\(2) & ( (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & ((\rf|reg1|q\(2)))) # (\a_sel[1]~input_o\ & (\rf|reg3|q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \rf|reg3|ALT_INV_q\(2),
	datac => \rf|reg1|ALT_INV_q\(2),
	datad => \ALT_INV_a_sel[0]~input_o\,
	datae => \rf|reg2|ALT_INV_q\(2),
	dataf => \rf|reg0|ALT_INV_q\(2),
	combout => \rf|a1|Mux13~0_combout\);

-- Location: FF_X17_Y2_N50
\rf|reg5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg5|q\(2));

-- Location: LABCELL_X13_Y2_N12
\rf|reg7|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg7|q[2]~feeder_combout\ = ( \m2|res[2]~84_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[2]~84_combout\,
	combout => \rf|reg7|q[2]~feeder_combout\);

-- Location: FF_X13_Y2_N14
\rf|reg7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg7|q[2]~feeder_combout\,
	ena => \rf|d1|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg7|q\(2));

-- Location: FF_X17_Y2_N23
\rf|reg4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(2));

-- Location: FF_X17_Y2_N44
\rf|reg6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(2));

-- Location: LABCELL_X13_Y2_N18
\rf|a1|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux13~1_combout\ = ( \rf|reg4|q\(2) & ( \rf|reg6|q\(2) & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & (\rf|reg5|q\(2))) # (\a_sel[1]~input_o\ & ((\rf|reg7|q\(2))))) ) ) ) # ( !\rf|reg4|q\(2) & ( \rf|reg6|q\(2) & ( (!\a_sel[1]~input_o\ & 
-- (\a_sel[0]~input_o\ & (\rf|reg5|q\(2)))) # (\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\) # ((\rf|reg7|q\(2))))) ) ) ) # ( \rf|reg4|q\(2) & ( !\rf|reg6|q\(2) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\) # ((\rf|reg5|q\(2))))) # (\a_sel[1]~input_o\ & 
-- (\a_sel[0]~input_o\ & ((\rf|reg7|q\(2))))) ) ) ) # ( !\rf|reg4|q\(2) & ( !\rf|reg6|q\(2) & ( (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & (\rf|reg5|q\(2))) # (\a_sel[1]~input_o\ & ((\rf|reg7|q\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg5|ALT_INV_q\(2),
	datad => \rf|reg7|ALT_INV_q\(2),
	datae => \rf|reg4|ALT_INV_q\(2),
	dataf => \rf|reg6|ALT_INV_q\(2),
	combout => \rf|a1|Mux13~1_combout\);

-- Location: FF_X23_Y3_N14
\rf|reg15|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m2|res[2]~84_combout\,
	ena => \rf|d1|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg15|q\(2));

-- Location: FF_X15_Y3_N38
\rf|reg13|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg13|q\(2));

-- Location: FF_X18_Y3_N56
\rf|reg14|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(2));

-- Location: FF_X21_Y3_N29
\rf|reg12|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg12|q\(2));

-- Location: LABCELL_X15_Y3_N42
\rf|a1|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux13~3_combout\ = ( \rf|reg14|q\(2) & ( \rf|reg12|q\(2) & ( (!\a_sel[0]~input_o\) # ((!\a_sel[1]~input_o\ & ((\rf|reg13|q\(2)))) # (\a_sel[1]~input_o\ & (\rf|reg15|q\(2)))) ) ) ) # ( !\rf|reg14|q\(2) & ( \rf|reg12|q\(2) & ( (!\a_sel[0]~input_o\ & 
-- (((!\a_sel[1]~input_o\)))) # (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & ((\rf|reg13|q\(2)))) # (\a_sel[1]~input_o\ & (\rf|reg15|q\(2))))) ) ) ) # ( \rf|reg14|q\(2) & ( !\rf|reg12|q\(2) & ( (!\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\)))) # 
-- (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & ((\rf|reg13|q\(2)))) # (\a_sel[1]~input_o\ & (\rf|reg15|q\(2))))) ) ) ) # ( !\rf|reg14|q\(2) & ( !\rf|reg12|q\(2) & ( (\a_sel[0]~input_o\ & ((!\a_sel[1]~input_o\ & ((\rf|reg13|q\(2)))) # (\a_sel[1]~input_o\ & 
-- (\rf|reg15|q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg15|ALT_INV_q\(2),
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg13|ALT_INV_q\(2),
	datad => \ALT_INV_a_sel[1]~input_o\,
	datae => \rf|reg14|ALT_INV_q\(2),
	dataf => \rf|reg12|ALT_INV_q\(2),
	combout => \rf|a1|Mux13~3_combout\);

-- Location: MLABCELL_X19_Y3_N51
\rf|a1|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux13~4_combout\ = ( \rf|a1|Mux13~1_combout\ & ( \rf|a1|Mux13~3_combout\ & ( ((!\a_sel[3]~input_o\ & ((\rf|a1|Mux13~0_combout\))) # (\a_sel[3]~input_o\ & (\rf|a1|Mux13~2_combout\))) # (\a_sel[2]~input_o\) ) ) ) # ( !\rf|a1|Mux13~1_combout\ & ( 
-- \rf|a1|Mux13~3_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|a1|Mux13~0_combout\))) # (\a_sel[3]~input_o\ & (\rf|a1|Mux13~2_combout\)))) # (\a_sel[2]~input_o\ & (\a_sel[3]~input_o\)) ) ) ) # ( \rf|a1|Mux13~1_combout\ & ( 
-- !\rf|a1|Mux13~3_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|a1|Mux13~0_combout\))) # (\a_sel[3]~input_o\ & (\rf|a1|Mux13~2_combout\)))) # (\a_sel[2]~input_o\ & (!\a_sel[3]~input_o\)) ) ) ) # ( !\rf|a1|Mux13~1_combout\ & ( 
-- !\rf|a1|Mux13~3_combout\ & ( (!\a_sel[2]~input_o\ & ((!\a_sel[3]~input_o\ & ((\rf|a1|Mux13~0_combout\))) # (\a_sel[3]~input_o\ & (\rf|a1|Mux13~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[2]~input_o\,
	datab => \ALT_INV_a_sel[3]~input_o\,
	datac => \rf|a1|ALT_INV_Mux13~2_combout\,
	datad => \rf|a1|ALT_INV_Mux13~0_combout\,
	datae => \rf|a1|ALT_INV_Mux13~1_combout\,
	dataf => \rf|a1|ALT_INV_Mux13~3_combout\,
	combout => \rf|a1|Mux13~4_combout\);

-- Location: MLABCELL_X19_Y2_N0
\al_shift|al|au|f1|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f1|c~0_combout\ = ( \rf|a1|Mux15~4_combout\ & ( \al_shift|al|au|Add0~5_sumout\ & ( (!\al_shift|al|au|Add0~1_sumout\) # (\rf|a1|Mux14~4_combout\) ) ) ) # ( !\rf|a1|Mux15~4_combout\ & ( \al_shift|al|au|Add0~5_sumout\ & ( 
-- (\al_shift|al|au|Add0~1_sumout\) # (\rf|a1|Mux14~4_combout\) ) ) ) # ( \rf|a1|Mux15~4_combout\ & ( !\al_shift|al|au|Add0~5_sumout\ & ( (\rf|a1|Mux14~4_combout\ & !\al_shift|al|au|Add0~1_sumout\) ) ) ) # ( !\rf|a1|Mux15~4_combout\ & ( 
-- !\al_shift|al|au|Add0~5_sumout\ & ( (\rf|a1|Mux14~4_combout\ & \al_shift|al|au|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000001111111111111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rf|a1|ALT_INV_Mux14~4_combout\,
	datad => \al_shift|al|au|ALT_INV_Add0~1_sumout\,
	datae => \rf|a1|ALT_INV_Mux15~4_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~5_sumout\,
	combout => \al_shift|al|au|f1|c~0_combout\);

-- Location: MLABCELL_X19_Y2_N30
\al_shift|al|au|f3|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f3|c~0_combout\ = ( \al_shift|al|au|Add0~13_sumout\ & ( ((!\rf|a1|Mux13~4_combout\ & (\al_shift|al|au|Add0~9_sumout\ & \al_shift|al|au|f1|c~0_combout\)) # (\rf|a1|Mux13~4_combout\ & ((\al_shift|al|au|f1|c~0_combout\) # 
-- (\al_shift|al|au|Add0~9_sumout\)))) # (\rf|a1|Mux12~4_combout\) ) ) # ( !\al_shift|al|au|Add0~13_sumout\ & ( (\rf|a1|Mux12~4_combout\ & ((!\rf|a1|Mux13~4_combout\ & (\al_shift|al|au|Add0~9_sumout\ & \al_shift|al|au|f1|c~0_combout\)) # 
-- (\rf|a1|Mux13~4_combout\ & ((\al_shift|al|au|f1|c~0_combout\) # (\al_shift|al|au|Add0~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux12~4_combout\,
	datab => \rf|a1|ALT_INV_Mux13~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~9_sumout\,
	datad => \al_shift|al|au|f1|ALT_INV_c~0_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~13_sumout\,
	combout => \al_shift|al|au|f3|c~0_combout\);

-- Location: MLABCELL_X19_Y2_N42
\al_shift|al|au|f6|c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f6|c~2_combout\ = ( \al_shift|al|au|Add0~17_sumout\ & ( \al_shift|al|au|f3|c~0_combout\ & ( (!\al_shift|al|au|f6|c~1_combout\ & ((\rf|a1|Mux10~4_combout\) # (\al_shift|al|au|Add0~21_sumout\))) ) ) ) # ( !\al_shift|al|au|Add0~17_sumout\ & ( 
-- \al_shift|al|au|f3|c~0_combout\ & ( (!\al_shift|al|au|f6|c~1_combout\ & ((!\rf|a1|Mux11~4_combout\ & (\al_shift|al|au|Add0~21_sumout\ & \rf|a1|Mux10~4_combout\)) # (\rf|a1|Mux11~4_combout\ & ((\rf|a1|Mux10~4_combout\) # 
-- (\al_shift|al|au|Add0~21_sumout\))))) ) ) ) # ( \al_shift|al|au|Add0~17_sumout\ & ( !\al_shift|al|au|f3|c~0_combout\ & ( (!\al_shift|al|au|f6|c~1_combout\ & ((!\rf|a1|Mux11~4_combout\ & (\al_shift|al|au|Add0~21_sumout\ & \rf|a1|Mux10~4_combout\)) # 
-- (\rf|a1|Mux11~4_combout\ & ((\rf|a1|Mux10~4_combout\) # (\al_shift|al|au|Add0~21_sumout\))))) ) ) ) # ( !\al_shift|al|au|Add0~17_sumout\ & ( !\al_shift|al|au|f3|c~0_combout\ & ( (\al_shift|al|au|Add0~21_sumout\ & (!\al_shift|al|au|f6|c~1_combout\ & 
-- \rf|a1|Mux10~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000100000111000000010000011100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux11~4_combout\,
	datab => \al_shift|al|au|ALT_INV_Add0~21_sumout\,
	datac => \al_shift|al|au|f6|ALT_INV_c~1_combout\,
	datad => \rf|a1|ALT_INV_Mux10~4_combout\,
	datae => \al_shift|al|au|ALT_INV_Add0~17_sumout\,
	dataf => \al_shift|al|au|f3|ALT_INV_c~0_combout\,
	combout => \al_shift|al|au|f6|c~2_combout\);

-- Location: MLABCELL_X19_Y2_N48
\al_shift|al|au|f8|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f8|c~0_combout\ = ( \al_shift|al|au|f6|c~0_combout\ & ( \al_shift|al|au|f6|c~2_combout\ & ( (!\rf|a1|Mux7~4_combout\ & ((!\al_shift|al|au|Add0~33_sumout\) # ((!\rf|a1|Mux8~4_combout\ & !\al_shift|al|au|Add0~29_sumout\)))) # 
-- (\rf|a1|Mux7~4_combout\ & (!\rf|a1|Mux8~4_combout\ & (!\al_shift|al|au|Add0~29_sumout\ & !\al_shift|al|au|Add0~33_sumout\))) ) ) ) # ( !\al_shift|al|au|f6|c~0_combout\ & ( \al_shift|al|au|f6|c~2_combout\ & ( (!\rf|a1|Mux7~4_combout\ & 
-- ((!\al_shift|al|au|Add0~33_sumout\) # ((!\rf|a1|Mux8~4_combout\ & !\al_shift|al|au|Add0~29_sumout\)))) # (\rf|a1|Mux7~4_combout\ & (!\rf|a1|Mux8~4_combout\ & (!\al_shift|al|au|Add0~29_sumout\ & !\al_shift|al|au|Add0~33_sumout\))) ) ) ) # ( 
-- \al_shift|al|au|f6|c~0_combout\ & ( !\al_shift|al|au|f6|c~2_combout\ & ( (!\rf|a1|Mux7~4_combout\ & ((!\al_shift|al|au|Add0~33_sumout\) # ((!\rf|a1|Mux8~4_combout\ & !\al_shift|al|au|Add0~29_sumout\)))) # (\rf|a1|Mux7~4_combout\ & (!\rf|a1|Mux8~4_combout\ 
-- & (!\al_shift|al|au|Add0~29_sumout\ & !\al_shift|al|au|Add0~33_sumout\))) ) ) ) # ( !\al_shift|al|au|f6|c~0_combout\ & ( !\al_shift|al|au|f6|c~2_combout\ & ( (!\rf|a1|Mux7~4_combout\ & ((!\rf|a1|Mux8~4_combout\) # ((!\al_shift|al|au|Add0~29_sumout\) # 
-- (!\al_shift|al|au|Add0~33_sumout\)))) # (\rf|a1|Mux7~4_combout\ & (!\al_shift|al|au|Add0~33_sumout\ & ((!\rf|a1|Mux8~4_combout\) # (!\al_shift|al|au|Add0~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011001000111011001000000011101100100000001110110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux8~4_combout\,
	datab => \rf|a1|ALT_INV_Mux7~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~29_sumout\,
	datad => \al_shift|al|au|ALT_INV_Add0~33_sumout\,
	datae => \al_shift|al|au|f6|ALT_INV_c~0_combout\,
	dataf => \al_shift|al|au|f6|ALT_INV_c~2_combout\,
	combout => \al_shift|al|au|f8|c~0_combout\);

-- Location: MLABCELL_X19_Y2_N24
\al_shift|al|au|f10|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f10|c~0_combout\ = ( \al_shift|al|au|f8|c~0_combout\ & ( (!\rf|a1|Mux5~4_combout\ & (\rf|a1|Mux6~4_combout\ & (\al_shift|al|au|Add0~41_sumout\ & \al_shift|al|au|Add0~37_sumout\))) # (\rf|a1|Mux5~4_combout\ & (((\rf|a1|Mux6~4_combout\ & 
-- \al_shift|al|au|Add0~37_sumout\)) # (\al_shift|al|au|Add0~41_sumout\))) ) ) # ( !\al_shift|al|au|f8|c~0_combout\ & ( (!\rf|a1|Mux5~4_combout\ & (\al_shift|al|au|Add0~41_sumout\ & ((\al_shift|al|au|Add0~37_sumout\) # (\rf|a1|Mux6~4_combout\)))) # 
-- (\rf|a1|Mux5~4_combout\ & (((\al_shift|al|au|Add0~37_sumout\) # (\al_shift|al|au|Add0~41_sumout\)) # (\rf|a1|Mux6~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100111111000101110011111100000011000101110000001100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux6~4_combout\,
	datab => \rf|a1|ALT_INV_Mux5~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~41_sumout\,
	datad => \al_shift|al|au|ALT_INV_Add0~37_sumout\,
	dataf => \al_shift|al|au|f8|ALT_INV_c~0_combout\,
	combout => \al_shift|al|au|f10|c~0_combout\);

-- Location: MLABCELL_X19_Y2_N54
\al_shift|al|au|f12|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f12|c~0_combout\ = ( \al_shift|al|au|f10|c~0_combout\ & ( (!\rf|a1|Mux3~4_combout\ & (\al_shift|al|au|Add0~49_sumout\ & ((\al_shift|al|au|Add0~45_sumout\) # (\rf|a1|Mux4~4_combout\)))) # (\rf|a1|Mux3~4_combout\ & 
-- (((\al_shift|al|au|Add0~45_sumout\) # (\al_shift|al|au|Add0~49_sumout\)) # (\rf|a1|Mux4~4_combout\))) ) ) # ( !\al_shift|al|au|f10|c~0_combout\ & ( (!\rf|a1|Mux3~4_combout\ & (\rf|a1|Mux4~4_combout\ & (\al_shift|al|au|Add0~49_sumout\ & 
-- \al_shift|al|au|Add0~45_sumout\))) # (\rf|a1|Mux3~4_combout\ & (((\rf|a1|Mux4~4_combout\ & \al_shift|al|au|Add0~45_sumout\)) # (\al_shift|al|au|Add0~49_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux4~4_combout\,
	datab => \rf|a1|ALT_INV_Mux3~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~49_sumout\,
	datad => \al_shift|al|au|ALT_INV_Add0~45_sumout\,
	dataf => \al_shift|al|au|f10|ALT_INV_c~0_combout\,
	combout => \al_shift|al|au|f12|c~0_combout\);

-- Location: MLABCELL_X19_Y4_N6
\al_shift|al|au|f14|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f14|c~0_combout\ = ( \al_shift|al|au|Add0~53_sumout\ & ( \al_shift|al|au|f12|c~0_combout\ & ( (\al_shift|al|au|Add0~57_sumout\) # (\rf|a1|Mux1~4_combout\) ) ) ) # ( !\al_shift|al|au|Add0~53_sumout\ & ( \al_shift|al|au|f12|c~0_combout\ & ( 
-- (!\rf|a1|Mux2~4_combout\ & (\rf|a1|Mux1~4_combout\ & \al_shift|al|au|Add0~57_sumout\)) # (\rf|a1|Mux2~4_combout\ & ((\al_shift|al|au|Add0~57_sumout\) # (\rf|a1|Mux1~4_combout\))) ) ) ) # ( \al_shift|al|au|Add0~53_sumout\ & ( 
-- !\al_shift|al|au|f12|c~0_combout\ & ( (!\rf|a1|Mux2~4_combout\ & (\rf|a1|Mux1~4_combout\ & \al_shift|al|au|Add0~57_sumout\)) # (\rf|a1|Mux2~4_combout\ & ((\al_shift|al|au|Add0~57_sumout\) # (\rf|a1|Mux1~4_combout\))) ) ) ) # ( 
-- !\al_shift|al|au|Add0~53_sumout\ & ( !\al_shift|al|au|f12|c~0_combout\ & ( (\rf|a1|Mux1~4_combout\ & \al_shift|al|au|Add0~57_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000101110001011100010111000101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux2~4_combout\,
	datab => \rf|a1|ALT_INV_Mux1~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~57_sumout\,
	datae => \al_shift|al|au|ALT_INV_Add0~53_sumout\,
	dataf => \al_shift|al|au|f12|ALT_INV_c~0_combout\,
	combout => \al_shift|al|au|f14|c~0_combout\);

-- Location: MLABCELL_X19_Y4_N57
\m2|res[15]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[15]~67_combout\ = ( \al_shift|m2|res[15]~0_combout\ & ( \al_shift|al|au|f14|c~0_combout\ & ( (!\data_sel~input_o\) # (\data_in[15]~input_o\) ) ) ) # ( !\al_shift|m2|res[15]~0_combout\ & ( \al_shift|al|au|f14|c~0_combout\ & ( (!\data_sel~input_o\ & 
-- (\al_shift|m2|res[15]~3_combout\)) # (\data_sel~input_o\ & ((\data_in[15]~input_o\))) ) ) ) # ( \al_shift|m2|res[15]~0_combout\ & ( !\al_shift|al|au|f14|c~0_combout\ & ( (!\data_sel~input_o\ & (((\al_shift|m2|res[15]~1_combout\)) # 
-- (\al_shift|m2|res[15]~3_combout\))) # (\data_sel~input_o\ & (((\data_in[15]~input_o\)))) ) ) ) # ( !\al_shift|m2|res[15]~0_combout\ & ( !\al_shift|al|au|f14|c~0_combout\ & ( (!\data_sel~input_o\ & (((\al_shift|m2|res[15]~1_combout\)) # 
-- (\al_shift|m2|res[15]~3_combout\))) # (\data_sel~input_o\ & (((\data_in[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110101111001001111010111100100111001001111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_sel~input_o\,
	datab => \al_shift|m2|ALT_INV_res[15]~3_combout\,
	datac => \ALT_INV_data_in[15]~input_o\,
	datad => \al_shift|m2|ALT_INV_res[15]~1_combout\,
	datae => \al_shift|m2|ALT_INV_res[15]~0_combout\,
	dataf => \al_shift|al|au|f14|ALT_INV_c~0_combout\,
	combout => \m2|res[15]~67_combout\);

-- Location: LABCELL_X21_Y4_N15
\rf|reg10|q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg10|q[15]~feeder_combout\ = ( \m2|res[15]~67_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[15]~67_combout\,
	combout => \rf|reg10|q[15]~feeder_combout\);

-- Location: FF_X21_Y4_N17
\rf|reg10|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg10|q[15]~feeder_combout\,
	ena => \rf|d1|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg10|q\(15));

-- Location: LABCELL_X21_Y4_N33
\rf|b1|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux0~2_combout\ = ( \rf|reg14|q\(15) & ( \rf|reg6|q\(15) & ( ((!\b_sel[3]~input_o\ & ((\rf|reg2|q\(15)))) # (\b_sel[3]~input_o\ & (\rf|reg10|q\(15)))) # (\b_sel[2]~input_o\) ) ) ) # ( !\rf|reg14|q\(15) & ( \rf|reg6|q\(15) & ( (!\b_sel[3]~input_o\ & 
-- (((\rf|reg2|q\(15)) # (\b_sel[2]~input_o\)))) # (\b_sel[3]~input_o\ & (\rf|reg10|q\(15) & (!\b_sel[2]~input_o\))) ) ) ) # ( \rf|reg14|q\(15) & ( !\rf|reg6|q\(15) & ( (!\b_sel[3]~input_o\ & (((!\b_sel[2]~input_o\ & \rf|reg2|q\(15))))) # (\b_sel[3]~input_o\ 
-- & (((\b_sel[2]~input_o\)) # (\rf|reg10|q\(15)))) ) ) ) # ( !\rf|reg14|q\(15) & ( !\rf|reg6|q\(15) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg2|q\(15)))) # (\b_sel[3]~input_o\ & (\rf|reg10|q\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[3]~input_o\,
	datab => \rf|reg10|ALT_INV_q\(15),
	datac => \ALT_INV_b_sel[2]~input_o\,
	datad => \rf|reg2|ALT_INV_q\(15),
	datae => \rf|reg14|ALT_INV_q\(15),
	dataf => \rf|reg6|ALT_INV_q\(15),
	combout => \rf|b1|Mux0~2_combout\);

-- Location: LABCELL_X17_Y4_N12
\rf|b1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux0~0_combout\ = ( \rf|reg0|q\(15) & ( \rf|reg12|q\(15) & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|reg4|q\(15))))) # (\b_sel[3]~input_o\ & (((\rf|reg8|q\(15))) # (\b_sel[2]~input_o\))) ) ) ) # ( !\rf|reg0|q\(15) & ( \rf|reg12|q\(15) 
-- & ( (!\b_sel[3]~input_o\ & (\b_sel[2]~input_o\ & (\rf|reg4|q\(15)))) # (\b_sel[3]~input_o\ & (((\rf|reg8|q\(15))) # (\b_sel[2]~input_o\))) ) ) ) # ( \rf|reg0|q\(15) & ( !\rf|reg12|q\(15) & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # 
-- ((\rf|reg4|q\(15))))) # (\b_sel[3]~input_o\ & (!\b_sel[2]~input_o\ & ((\rf|reg8|q\(15))))) ) ) ) # ( !\rf|reg0|q\(15) & ( !\rf|reg12|q\(15) & ( (!\b_sel[3]~input_o\ & (\b_sel[2]~input_o\ & (\rf|reg4|q\(15)))) # (\b_sel[3]~input_o\ & (!\b_sel[2]~input_o\ & 
-- ((\rf|reg8|q\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[3]~input_o\,
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \rf|reg4|ALT_INV_q\(15),
	datad => \rf|reg8|ALT_INV_q\(15),
	datae => \rf|reg0|ALT_INV_q\(15),
	dataf => \rf|reg12|ALT_INV_q\(15),
	combout => \rf|b1|Mux0~0_combout\);

-- Location: LABCELL_X23_Y4_N18
\rf|b1|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux0~3_combout\ = ( \rf|reg15|q\(15) & ( \rf|reg3|q\(15) & ( (!\b_sel[3]~input_o\ & (((!\b_sel[2]~input_o\) # (\rf|reg7|q\(15))))) # (\b_sel[3]~input_o\ & (((\b_sel[2]~input_o\)) # (\rf|reg11|q\(15)))) ) ) ) # ( !\rf|reg15|q\(15) & ( 
-- \rf|reg3|q\(15) & ( (!\b_sel[3]~input_o\ & (((!\b_sel[2]~input_o\) # (\rf|reg7|q\(15))))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(15) & ((!\b_sel[2]~input_o\)))) ) ) ) # ( \rf|reg15|q\(15) & ( !\rf|reg3|q\(15) & ( (!\b_sel[3]~input_o\ & (((\rf|reg7|q\(15) & 
-- \b_sel[2]~input_o\)))) # (\b_sel[3]~input_o\ & (((\b_sel[2]~input_o\)) # (\rf|reg11|q\(15)))) ) ) ) # ( !\rf|reg15|q\(15) & ( !\rf|reg3|q\(15) & ( (!\b_sel[3]~input_o\ & (((\rf|reg7|q\(15) & \b_sel[2]~input_o\)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(15) 
-- & ((!\b_sel[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg11|ALT_INV_q\(15),
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg7|ALT_INV_q\(15),
	datad => \ALT_INV_b_sel[2]~input_o\,
	datae => \rf|reg15|ALT_INV_q\(15),
	dataf => \rf|reg3|ALT_INV_q\(15),
	combout => \rf|b1|Mux0~3_combout\);

-- Location: LABCELL_X15_Y4_N36
\rf|b1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux0~1_combout\ = ( \rf|reg13|q\(15) & ( \rf|reg9|q\(15) & ( ((!\b_sel[2]~input_o\ & (\rf|reg1|q\(15))) # (\b_sel[2]~input_o\ & ((\rf|reg5|q\(15))))) # (\b_sel[3]~input_o\) ) ) ) # ( !\rf|reg13|q\(15) & ( \rf|reg9|q\(15) & ( (!\b_sel[2]~input_o\ & 
-- (((\b_sel[3]~input_o\)) # (\rf|reg1|q\(15)))) # (\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\ & \rf|reg5|q\(15))))) ) ) ) # ( \rf|reg13|q\(15) & ( !\rf|reg9|q\(15) & ( (!\b_sel[2]~input_o\ & (\rf|reg1|q\(15) & (!\b_sel[3]~input_o\))) # (\b_sel[2]~input_o\ 
-- & (((\rf|reg5|q\(15)) # (\b_sel[3]~input_o\)))) ) ) ) # ( !\rf|reg13|q\(15) & ( !\rf|reg9|q\(15) & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & (\rf|reg1|q\(15))) # (\b_sel[2]~input_o\ & ((\rf|reg5|q\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001001010111010100101010011110100010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \rf|reg1|ALT_INV_q\(15),
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|reg5|ALT_INV_q\(15),
	datae => \rf|reg13|ALT_INV_q\(15),
	dataf => \rf|reg9|ALT_INV_q\(15),
	combout => \rf|b1|Mux0~1_combout\);

-- Location: LABCELL_X17_Y4_N18
\rf|b1|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux0~4_combout\ = ( \rf|b1|Mux0~3_combout\ & ( \rf|b1|Mux0~1_combout\ & ( ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux0~0_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux0~2_combout\))) # (\b_sel[0]~input_o\) ) ) ) # ( !\rf|b1|Mux0~3_combout\ & ( 
-- \rf|b1|Mux0~1_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux0~0_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux0~2_combout\)))) # (\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\)) ) ) ) # ( \rf|b1|Mux0~3_combout\ & ( 
-- !\rf|b1|Mux0~1_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux0~0_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux0~2_combout\)))) # (\b_sel[0]~input_o\ & (\b_sel[1]~input_o\)) ) ) ) # ( !\rf|b1|Mux0~3_combout\ & ( 
-- !\rf|b1|Mux0~1_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux0~0_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|b1|ALT_INV_Mux0~2_combout\,
	datad => \rf|b1|ALT_INV_Mux0~0_combout\,
	datae => \rf|b1|ALT_INV_Mux0~3_combout\,
	dataf => \rf|b1|ALT_INV_Mux0~1_combout\,
	combout => \rf|b1|Mux0~4_combout\);

-- Location: LABCELL_X18_Y1_N18
\m2|res[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[14]~0_combout\ = ( \const_in[15]~input_o\ & ( \rf|b1|Mux0~4_combout\ ) ) # ( !\const_in[15]~input_o\ & ( \rf|b1|Mux0~4_combout\ & ( !\const_sel~input_o\ ) ) ) # ( \const_in[15]~input_o\ & ( !\rf|b1|Mux0~4_combout\ & ( \const_sel~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_const_sel~input_o\,
	datae => \ALT_INV_const_in[15]~input_o\,
	dataf => \rf|b1|ALT_INV_Mux0~4_combout\,
	combout => \m2|res[14]~0_combout\);

-- Location: LABCELL_X17_Y1_N42
\m2|res[14]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[14]~64_combout\ = ( \op_sel[0]~input_o\ & ( \rf|a1|Mux1~4_combout\ & ( !\op_sel[1]~input_o\ ) ) ) # ( !\op_sel[0]~input_o\ & ( \rf|a1|Mux1~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\const_sel~input_o\ & ((!\rf|b1|Mux1~4_combout\))) # 
-- (\const_sel~input_o\ & (!\const_in[14]~input_o\)))) ) ) ) # ( \op_sel[0]~input_o\ & ( !\rf|a1|Mux1~4_combout\ & ( ((!\const_sel~input_o\ & ((\rf|b1|Mux1~4_combout\))) # (\const_sel~input_o\ & (\const_in[14]~input_o\))) # (\op_sel[1]~input_o\) ) ) ) # ( 
-- !\op_sel[0]~input_o\ & ( !\rf|a1|Mux1~4_combout\ & ( (\op_sel[1]~input_o\ & ((!\const_sel~input_o\ & ((\rf|b1|Mux1~4_combout\))) # (\const_sel~input_o\ & (\const_in[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001010101111111011101010110101001101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[1]~input_o\,
	datab => \ALT_INV_const_in[14]~input_o\,
	datac => \ALT_INV_const_sel~input_o\,
	datad => \rf|b1|ALT_INV_Mux1~4_combout\,
	datae => \ALT_INV_op_sel[0]~input_o\,
	dataf => \rf|a1|ALT_INV_Mux1~4_combout\,
	combout => \m2|res[14]~64_combout\);

-- Location: LABCELL_X17_Y1_N21
\m2|res[14]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[14]~65_combout\ = ( \m2|res[14]~64_combout\ & ( (!\op_sel[3]~input_o\ & (\op_sel[2]~input_o\)) # (\op_sel[3]~input_o\ & ((\m2|res[14]~0_combout\))) ) ) # ( !\m2|res[14]~64_combout\ & ( (\op_sel[3]~input_o\ & \m2|res[14]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[2]~input_o\,
	datac => \ALT_INV_op_sel[3]~input_o\,
	datad => \m2|ALT_INV_res[14]~0_combout\,
	dataf => \m2|ALT_INV_res[14]~64_combout\,
	combout => \m2|res[14]~65_combout\);

-- Location: MLABCELL_X19_Y2_N27
\m2|res[14]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[14]~62_combout\ = ( !\op_sel[3]~input_o\ & ( !\m2|res[1]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_res[1]~7_combout\,
	dataf => \ALT_INV_op_sel[3]~input_o\,
	combout => \m2|res[14]~62_combout\);

-- Location: MLABCELL_X19_Y2_N6
\m2|res[14]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[14]~63_combout\ = ( \al_shift|al|au|f12|c~0_combout\ & ( \al_shift|al|au|Add0~57_sumout\ & ( (\m2|res[14]~62_combout\ & (!\rf|a1|Mux1~4_combout\ $ (((\al_shift|al|au|Add0~53_sumout\) # (\rf|a1|Mux2~4_combout\))))) ) ) ) # ( 
-- !\al_shift|al|au|f12|c~0_combout\ & ( \al_shift|al|au|Add0~57_sumout\ & ( (\m2|res[14]~62_combout\ & (!\rf|a1|Mux1~4_combout\ $ (((\rf|a1|Mux2~4_combout\ & \al_shift|al|au|Add0~53_sumout\))))) ) ) ) # ( \al_shift|al|au|f12|c~0_combout\ & ( 
-- !\al_shift|al|au|Add0~57_sumout\ & ( (\m2|res[14]~62_combout\ & (!\rf|a1|Mux1~4_combout\ $ (((!\rf|a1|Mux2~4_combout\ & !\al_shift|al|au|Add0~53_sumout\))))) ) ) ) # ( !\al_shift|al|au|f12|c~0_combout\ & ( !\al_shift|al|au|Add0~57_sumout\ & ( 
-- (\m2|res[14]~62_combout\ & (!\rf|a1|Mux1~4_combout\ $ (((!\rf|a1|Mux2~4_combout\) # (!\al_shift|al|au|Add0~53_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110110000000000110110000000000110010010000000010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux2~4_combout\,
	datab => \rf|a1|ALT_INV_Mux1~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~53_sumout\,
	datad => \m2|ALT_INV_res[14]~62_combout\,
	datae => \al_shift|al|au|f12|ALT_INV_c~0_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~57_sumout\,
	combout => \m2|res[14]~63_combout\);

-- Location: LABCELL_X18_Y1_N0
\m2|res[14]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[14]~66_combout\ = ( \m2|res[14]~65_combout\ & ( \m2|res[14]~63_combout\ & ( (!\data_sel~input_o\ & (((!\m2|res[1]~10_combout\) # (\m2|res[14]~56_combout\)))) # (\data_sel~input_o\ & (\data_in[14]~input_o\)) ) ) ) # ( !\m2|res[14]~65_combout\ & ( 
-- \m2|res[14]~63_combout\ & ( (!\data_sel~input_o\ & (((!\m2|res[1]~10_combout\) # (\m2|res[14]~56_combout\)))) # (\data_sel~input_o\ & (\data_in[14]~input_o\)) ) ) ) # ( \m2|res[14]~65_combout\ & ( !\m2|res[14]~63_combout\ & ( (!\data_sel~input_o\ & 
-- (((!\m2|res[1]~10_combout\) # (\m2|res[14]~56_combout\)))) # (\data_sel~input_o\ & (\data_in[14]~input_o\)) ) ) ) # ( !\m2|res[14]~65_combout\ & ( !\m2|res[14]~63_combout\ & ( (!\data_sel~input_o\ & (((\m2|res[14]~56_combout\ & \m2|res[1]~10_combout\)))) 
-- # (\data_sel~input_o\ & (\data_in[14]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101111100110101010111110011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[14]~input_o\,
	datab => \m2|ALT_INV_res[14]~56_combout\,
	datac => \m2|ALT_INV_res[1]~10_combout\,
	datad => \ALT_INV_data_sel~input_o\,
	datae => \m2|ALT_INV_res[14]~65_combout\,
	dataf => \m2|ALT_INV_res[14]~63_combout\,
	combout => \m2|res[14]~66_combout\);

-- Location: MLABCELL_X14_Y1_N21
\rf|reg4|q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg4|q[14]~feeder_combout\ = ( \m2|res[14]~66_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[14]~66_combout\,
	combout => \rf|reg4|q[14]~feeder_combout\);

-- Location: FF_X14_Y1_N23
\rf|reg4|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg4|q[14]~feeder_combout\,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(14));

-- Location: MLABCELL_X14_Y1_N57
\rf|b1|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux1~1_combout\ = ( \rf|reg5|q\(14) & ( \rf|reg7|q\(14) & ( ((!\b_sel[1]~input_o\ & (\rf|reg4|q\(14))) # (\b_sel[1]~input_o\ & ((\rf|reg6|q\(14))))) # (\b_sel[0]~input_o\) ) ) ) # ( !\rf|reg5|q\(14) & ( \rf|reg7|q\(14) & ( (!\b_sel[0]~input_o\ & 
-- ((!\b_sel[1]~input_o\ & (\rf|reg4|q\(14))) # (\b_sel[1]~input_o\ & ((\rf|reg6|q\(14)))))) # (\b_sel[0]~input_o\ & (((\b_sel[1]~input_o\)))) ) ) ) # ( \rf|reg5|q\(14) & ( !\rf|reg7|q\(14) & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & 
-- (\rf|reg4|q\(14))) # (\b_sel[1]~input_o\ & ((\rf|reg6|q\(14)))))) # (\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\)))) ) ) ) # ( !\rf|reg5|q\(14) & ( !\rf|reg7|q\(14) & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|reg4|q\(14))) # 
-- (\b_sel[1]~input_o\ & ((\rf|reg6|q\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg4|ALT_INV_q\(14),
	datab => \ALT_INV_b_sel[0]~input_o\,
	datac => \ALT_INV_b_sel[1]~input_o\,
	datad => \rf|reg6|ALT_INV_q\(14),
	datae => \rf|reg5|ALT_INV_q\(14),
	dataf => \rf|reg7|ALT_INV_q\(14),
	combout => \rf|b1|Mux1~1_combout\);

-- Location: LABCELL_X17_Y1_N6
\rf|b1|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux1~3_combout\ = ( \rf|reg12|q\(14) & ( \rf|reg13|q\(14) & ( (!\b_sel[1]~input_o\) # ((!\b_sel[0]~input_o\ & (\rf|reg14|q\(14))) # (\b_sel[0]~input_o\ & ((\rf|reg15|q\(14))))) ) ) ) # ( !\rf|reg12|q\(14) & ( \rf|reg13|q\(14) & ( 
-- (!\b_sel[0]~input_o\ & (\rf|reg14|q\(14) & (\b_sel[1]~input_o\))) # (\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\) # (\rf|reg15|q\(14))))) ) ) ) # ( \rf|reg12|q\(14) & ( !\rf|reg13|q\(14) & ( (!\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\)) # 
-- (\rf|reg14|q\(14)))) # (\b_sel[0]~input_o\ & (((\b_sel[1]~input_o\ & \rf|reg15|q\(14))))) ) ) ) # ( !\rf|reg12|q\(14) & ( !\rf|reg13|q\(14) & ( (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & (\rf|reg14|q\(14))) # (\b_sel[0]~input_o\ & 
-- ((\rf|reg15|q\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \rf|reg14|ALT_INV_q\(14),
	datac => \ALT_INV_b_sel[1]~input_o\,
	datad => \rf|reg15|ALT_INV_q\(14),
	datae => \rf|reg12|ALT_INV_q\(14),
	dataf => \rf|reg13|ALT_INV_q\(14),
	combout => \rf|b1|Mux1~3_combout\);

-- Location: LABCELL_X18_Y4_N15
\rf|b1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux1~0_combout\ = ( \rf|reg3|q\(14) & ( \rf|reg2|q\(14) & ( ((!\b_sel[0]~input_o\ & ((\rf|reg0|q\(14)))) # (\b_sel[0]~input_o\ & (\rf|reg1|q\(14)))) # (\b_sel[1]~input_o\) ) ) ) # ( !\rf|reg3|q\(14) & ( \rf|reg2|q\(14) & ( (!\b_sel[0]~input_o\ & 
-- (((\rf|reg0|q\(14)) # (\b_sel[1]~input_o\)))) # (\b_sel[0]~input_o\ & (\rf|reg1|q\(14) & (!\b_sel[1]~input_o\))) ) ) ) # ( \rf|reg3|q\(14) & ( !\rf|reg2|q\(14) & ( (!\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\ & \rf|reg0|q\(14))))) # (\b_sel[0]~input_o\ & 
-- (((\b_sel[1]~input_o\)) # (\rf|reg1|q\(14)))) ) ) ) # ( !\rf|reg3|q\(14) & ( !\rf|reg2|q\(14) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & ((\rf|reg0|q\(14)))) # (\b_sel[0]~input_o\ & (\rf|reg1|q\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \rf|reg1|ALT_INV_q\(14),
	datac => \ALT_INV_b_sel[1]~input_o\,
	datad => \rf|reg0|ALT_INV_q\(14),
	datae => \rf|reg3|ALT_INV_q\(14),
	dataf => \rf|reg2|ALT_INV_q\(14),
	combout => \rf|b1|Mux1~0_combout\);

-- Location: LABCELL_X15_Y1_N27
\rf|b1|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux1~2_combout\ = ( \b_sel[0]~input_o\ & ( \rf|reg9|q\(14) & ( (!\b_sel[1]~input_o\) # (\rf|reg11|q\(14)) ) ) ) # ( !\b_sel[0]~input_o\ & ( \rf|reg9|q\(14) & ( (!\b_sel[1]~input_o\ & (\rf|reg8|q\(14))) # (\b_sel[1]~input_o\ & ((\rf|reg10|q\(14)))) 
-- ) ) ) # ( \b_sel[0]~input_o\ & ( !\rf|reg9|q\(14) & ( (\b_sel[1]~input_o\ & \rf|reg11|q\(14)) ) ) ) # ( !\b_sel[0]~input_o\ & ( !\rf|reg9|q\(14) & ( (!\b_sel[1]~input_o\ & (\rf|reg8|q\(14))) # (\b_sel[1]~input_o\ & ((\rf|reg10|q\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[1]~input_o\,
	datab => \rf|reg8|ALT_INV_q\(14),
	datac => \rf|reg10|ALT_INV_q\(14),
	datad => \rf|reg11|ALT_INV_q\(14),
	datae => \ALT_INV_b_sel[0]~input_o\,
	dataf => \rf|reg9|ALT_INV_q\(14),
	combout => \rf|b1|Mux1~2_combout\);

-- Location: LABCELL_X17_Y1_N15
\rf|b1|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux1~4_combout\ = ( \rf|b1|Mux1~0_combout\ & ( \rf|b1|Mux1~2_combout\ & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & (\rf|b1|Mux1~1_combout\)) # (\b_sel[3]~input_o\ & ((\rf|b1|Mux1~3_combout\)))) ) ) ) # ( !\rf|b1|Mux1~0_combout\ & ( 
-- \rf|b1|Mux1~2_combout\ & ( (!\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\)))) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|b1|Mux1~1_combout\)) # (\b_sel[3]~input_o\ & ((\rf|b1|Mux1~3_combout\))))) ) ) ) # ( \rf|b1|Mux1~0_combout\ & ( 
-- !\rf|b1|Mux1~2_combout\ & ( (!\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\)))) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|b1|Mux1~1_combout\)) # (\b_sel[3]~input_o\ & ((\rf|b1|Mux1~3_combout\))))) ) ) ) # ( !\rf|b1|Mux1~0_combout\ & ( 
-- !\rf|b1|Mux1~2_combout\ & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|b1|Mux1~1_combout\)) # (\b_sel[3]~input_o\ & ((\rf|b1|Mux1~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \rf|b1|ALT_INV_Mux1~1_combout\,
	datac => \rf|b1|ALT_INV_Mux1~3_combout\,
	datad => \ALT_INV_b_sel[3]~input_o\,
	datae => \rf|b1|ALT_INV_Mux1~0_combout\,
	dataf => \rf|b1|ALT_INV_Mux1~2_combout\,
	combout => \rf|b1|Mux1~4_combout\);

-- Location: LABCELL_X17_Y1_N51
\m2|res[13]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[13]~58_combout\ = ( \const_in[14]~input_o\ & ( \rf|b1|Mux1~4_combout\ & ( \op_sel[3]~input_o\ ) ) ) # ( !\const_in[14]~input_o\ & ( \rf|b1|Mux1~4_combout\ & ( (!\const_sel~input_o\ & \op_sel[3]~input_o\) ) ) ) # ( \const_in[14]~input_o\ & ( 
-- !\rf|b1|Mux1~4_combout\ & ( (\const_sel~input_o\ & \op_sel[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100001010000010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_sel~input_o\,
	datac => \ALT_INV_op_sel[3]~input_o\,
	datae => \ALT_INV_const_in[14]~input_o\,
	dataf => \rf|b1|ALT_INV_Mux1~4_combout\,
	combout => \m2|res[13]~58_combout\);

-- Location: IOIBUF_X38_Y0_N52
\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: LABCELL_X21_Y1_N54
\m2|res[13]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[13]~59_combout\ = ( \rf|b1|Mux2~4_combout\ & ( \rf|a1|Mux2~4_combout\ & ( !\op_sel[1]~input_o\ $ (((\const_sel~input_o\ & (!\op_sel[0]~input_o\ & !\const_in[13]~input_o\)))) ) ) ) # ( !\rf|b1|Mux2~4_combout\ & ( \rf|a1|Mux2~4_combout\ & ( 
-- !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (!\const_in[13]~input_o\))))) ) ) ) # ( \rf|b1|Mux2~4_combout\ & ( !\rf|a1|Mux2~4_combout\ & ( (!\op_sel[0]~input_o\ & (\op_sel[1]~input_o\ & ((!\const_sel~input_o\) # 
-- (\const_in[13]~input_o\)))) # (\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # ((\op_sel[1]~input_o\) # (\const_in[13]~input_o\)))) ) ) ) # ( !\rf|b1|Mux2~4_combout\ & ( !\rf|a1|Mux2~4_combout\ & ( (!\op_sel[0]~input_o\ & (\const_sel~input_o\ & 
-- (\const_in[13]~input_o\ & \op_sel[1]~input_o\))) # (\op_sel[0]~input_o\ & (((\const_sel~input_o\ & \const_in[13]~input_o\)) # (\op_sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111001000111011111100110111110010001011111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_sel~input_o\,
	datab => \ALT_INV_op_sel[0]~input_o\,
	datac => \ALT_INV_const_in[13]~input_o\,
	datad => \ALT_INV_op_sel[1]~input_o\,
	datae => \rf|b1|ALT_INV_Mux2~4_combout\,
	dataf => \rf|a1|ALT_INV_Mux2~4_combout\,
	combout => \m2|res[13]~59_combout\);

-- Location: LABCELL_X21_Y2_N6
\m2|res[13]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[13]~60_combout\ = ( \al_shift|al|au|Add0~53_sumout\ & ( \al_shift|al|au|f12|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & ((\rf|a1|Mux2~4_combout\))) # (\m2|res[1]~7_combout\ & (\m2|res[13]~59_combout\)))) ) ) ) # ( 
-- !\al_shift|al|au|Add0~53_sumout\ & ( \al_shift|al|au|f12|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & ((!\rf|a1|Mux2~4_combout\))) # (\m2|res[1]~7_combout\ & (\m2|res[13]~59_combout\)))) ) ) ) # ( \al_shift|al|au|Add0~53_sumout\ & ( 
-- !\al_shift|al|au|f12|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & ((!\rf|a1|Mux2~4_combout\))) # (\m2|res[1]~7_combout\ & (\m2|res[13]~59_combout\)))) ) ) ) # ( !\al_shift|al|au|Add0~53_sumout\ & ( !\al_shift|al|au|f12|c~0_combout\ 
-- & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & ((\rf|a1|Mux2~4_combout\))) # (\m2|res[1]~7_combout\ & (\m2|res[13]~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000101100000001000010110000000100000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_res[1]~7_combout\,
	datab => \m2|ALT_INV_res[13]~59_combout\,
	datac => \ALT_INV_op_sel[3]~input_o\,
	datad => \rf|a1|ALT_INV_Mux2~4_combout\,
	datae => \al_shift|al|au|ALT_INV_Add0~53_sumout\,
	dataf => \al_shift|al|au|f12|ALT_INV_c~0_combout\,
	combout => \m2|res[13]~60_combout\);

-- Location: LABCELL_X21_Y2_N51
\m2|res[13]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[13]~61_combout\ = ( \data_in[13]~input_o\ & ( \m2|res[13]~60_combout\ & ( ((!\m2|res[1]~10_combout\) # (\data_sel~input_o\)) # (\m2|res[13]~53_combout\) ) ) ) # ( !\data_in[13]~input_o\ & ( \m2|res[13]~60_combout\ & ( (!\data_sel~input_o\ & 
-- ((!\m2|res[1]~10_combout\) # (\m2|res[13]~53_combout\))) ) ) ) # ( \data_in[13]~input_o\ & ( !\m2|res[13]~60_combout\ & ( ((!\m2|res[1]~10_combout\ & ((\m2|res[13]~58_combout\))) # (\m2|res[1]~10_combout\ & (\m2|res[13]~53_combout\))) # 
-- (\data_sel~input_o\) ) ) ) # ( !\data_in[13]~input_o\ & ( !\m2|res[13]~60_combout\ & ( (!\data_sel~input_o\ & ((!\m2|res[1]~10_combout\ & ((\m2|res[13]~58_combout\))) # (\m2|res[1]~10_combout\ & (\m2|res[13]~53_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101111111011111000100110001001111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_res[13]~53_combout\,
	datab => \ALT_INV_data_sel~input_o\,
	datac => \m2|ALT_INV_res[1]~10_combout\,
	datad => \m2|ALT_INV_res[13]~58_combout\,
	datae => \ALT_INV_data_in[13]~input_o\,
	dataf => \m2|ALT_INV_res[13]~60_combout\,
	combout => \m2|res[13]~61_combout\);

-- Location: FF_X21_Y2_N41
\rf|reg3|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[13]~61_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(13));

-- Location: LABCELL_X21_Y2_N15
\rf|b1|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux2~3_combout\ = ( \rf|reg15|q\(13) & ( \rf|reg7|q\(13) & ( ((!\b_sel[3]~input_o\ & (\rf|reg3|q\(13))) # (\b_sel[3]~input_o\ & ((\rf|reg11|q\(13))))) # (\b_sel[2]~input_o\) ) ) ) # ( !\rf|reg15|q\(13) & ( \rf|reg7|q\(13) & ( (!\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & (\rf|reg3|q\(13))) # (\b_sel[3]~input_o\ & ((\rf|reg11|q\(13)))))) # (\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\)))) ) ) ) # ( \rf|reg15|q\(13) & ( !\rf|reg7|q\(13) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & 
-- (\rf|reg3|q\(13))) # (\b_sel[3]~input_o\ & ((\rf|reg11|q\(13)))))) # (\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\)))) ) ) ) # ( !\rf|reg15|q\(13) & ( !\rf|reg7|q\(13) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg3|q\(13))) # 
-- (\b_sel[3]~input_o\ & ((\rf|reg11|q\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \rf|reg3|ALT_INV_q\(13),
	datac => \rf|reg11|ALT_INV_q\(13),
	datad => \ALT_INV_b_sel[3]~input_o\,
	datae => \rf|reg15|ALT_INV_q\(13),
	dataf => \rf|reg7|ALT_INV_q\(13),
	combout => \rf|b1|Mux2~3_combout\);

-- Location: LABCELL_X22_Y1_N15
\rf|b1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux2~1_combout\ = ( \rf|reg1|q\(13) & ( \rf|reg9|q\(13) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(13))) # (\b_sel[3]~input_o\ & ((\rf|reg13|q\(13))))) ) ) ) # ( !\rf|reg1|q\(13) & ( \rf|reg9|q\(13) & ( (!\b_sel[2]~input_o\ & 
-- (((\b_sel[3]~input_o\)))) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(13))) # (\b_sel[3]~input_o\ & ((\rf|reg13|q\(13)))))) ) ) ) # ( \rf|reg1|q\(13) & ( !\rf|reg9|q\(13) & ( (!\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\)))) # 
-- (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(13))) # (\b_sel[3]~input_o\ & ((\rf|reg13|q\(13)))))) ) ) ) # ( !\rf|reg1|q\(13) & ( !\rf|reg9|q\(13) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(13))) # (\b_sel[3]~input_o\ & 
-- ((\rf|reg13|q\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \rf|reg5|ALT_INV_q\(13),
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|reg13|ALT_INV_q\(13),
	datae => \rf|reg1|ALT_INV_q\(13),
	dataf => \rf|reg9|ALT_INV_q\(13),
	combout => \rf|b1|Mux2~1_combout\);

-- Location: LABCELL_X21_Y4_N21
\rf|b1|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux2~2_combout\ = ( \rf|reg6|q\(13) & ( \rf|reg2|q\(13) & ( (!\b_sel[3]~input_o\) # ((!\b_sel[2]~input_o\ & ((\rf|reg10|q\(13)))) # (\b_sel[2]~input_o\ & (\rf|reg14|q\(13)))) ) ) ) # ( !\rf|reg6|q\(13) & ( \rf|reg2|q\(13) & ( (!\b_sel[3]~input_o\ & 
-- (((!\b_sel[2]~input_o\)))) # (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & ((\rf|reg10|q\(13)))) # (\b_sel[2]~input_o\ & (\rf|reg14|q\(13))))) ) ) ) # ( \rf|reg6|q\(13) & ( !\rf|reg2|q\(13) & ( (!\b_sel[3]~input_o\ & (((\b_sel[2]~input_o\)))) # 
-- (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & ((\rf|reg10|q\(13)))) # (\b_sel[2]~input_o\ & (\rf|reg14|q\(13))))) ) ) ) # ( !\rf|reg6|q\(13) & ( !\rf|reg2|q\(13) & ( (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & ((\rf|reg10|q\(13)))) # (\b_sel[2]~input_o\ 
-- & (\rf|reg14|q\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg14|ALT_INV_q\(13),
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \ALT_INV_b_sel[2]~input_o\,
	datad => \rf|reg10|ALT_INV_q\(13),
	datae => \rf|reg6|ALT_INV_q\(13),
	dataf => \rf|reg2|ALT_INV_q\(13),
	combout => \rf|b1|Mux2~2_combout\);

-- Location: LABCELL_X21_Y4_N51
\rf|b1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux2~0_combout\ = ( \rf|reg12|q\(13) & ( \rf|reg8|q\(13) & ( ((!\b_sel[2]~input_o\ & (\rf|reg0|q\(13))) # (\b_sel[2]~input_o\ & ((\rf|reg4|q\(13))))) # (\b_sel[3]~input_o\) ) ) ) # ( !\rf|reg12|q\(13) & ( \rf|reg8|q\(13) & ( (!\b_sel[2]~input_o\ & 
-- (((\b_sel[3]~input_o\)) # (\rf|reg0|q\(13)))) # (\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\ & \rf|reg4|q\(13))))) ) ) ) # ( \rf|reg12|q\(13) & ( !\rf|reg8|q\(13) & ( (!\b_sel[2]~input_o\ & (\rf|reg0|q\(13) & (!\b_sel[3]~input_o\))) # (\b_sel[2]~input_o\ 
-- & (((\rf|reg4|q\(13)) # (\b_sel[3]~input_o\)))) ) ) ) # ( !\rf|reg12|q\(13) & ( !\rf|reg8|q\(13) & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & (\rf|reg0|q\(13))) # (\b_sel[2]~input_o\ & ((\rf|reg4|q\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg0|ALT_INV_q\(13),
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|reg4|ALT_INV_q\(13),
	datae => \rf|reg12|ALT_INV_q\(13),
	dataf => \rf|reg8|ALT_INV_q\(13),
	combout => \rf|b1|Mux2~0_combout\);

-- Location: LABCELL_X22_Y1_N33
\rf|b1|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux2~4_combout\ = ( \rf|b1|Mux2~2_combout\ & ( \rf|b1|Mux2~0_combout\ & ( (!\b_sel[0]~input_o\) # ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux2~1_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux2~3_combout\))) ) ) ) # ( !\rf|b1|Mux2~2_combout\ & ( 
-- \rf|b1|Mux2~0_combout\ & ( (!\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\) # (\rf|b1|Mux2~1_combout\)))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux2~3_combout\ & ((\b_sel[0]~input_o\)))) ) ) ) # ( \rf|b1|Mux2~2_combout\ & ( !\rf|b1|Mux2~0_combout\ & ( 
-- (!\b_sel[1]~input_o\ & (((\rf|b1|Mux2~1_combout\ & \b_sel[0]~input_o\)))) # (\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\)) # (\rf|b1|Mux2~3_combout\))) ) ) ) # ( !\rf|b1|Mux2~2_combout\ & ( !\rf|b1|Mux2~0_combout\ & ( (\b_sel[0]~input_o\ & 
-- ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux2~1_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux2~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|b1|ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|b1|ALT_INV_Mux2~1_combout\,
	datad => \ALT_INV_b_sel[0]~input_o\,
	datae => \rf|b1|ALT_INV_Mux2~2_combout\,
	dataf => \rf|b1|ALT_INV_Mux2~0_combout\,
	combout => \rf|b1|Mux2~4_combout\);

-- Location: LABCELL_X21_Y1_N27
\m2|res[14]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[14]~56_combout\ = ( \rf|b1|Mux2~4_combout\ & ( (!\const_sel~input_o\) # (\const_in[13]~input_o\) ) ) # ( !\rf|b1|Mux2~4_combout\ & ( (\const_sel~input_o\ & \const_in[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_sel~input_o\,
	datad => \ALT_INV_const_in[13]~input_o\,
	datae => \rf|b1|ALT_INV_Mux2~4_combout\,
	combout => \m2|res[14]~56_combout\);

-- Location: LABCELL_X21_Y1_N33
\m2|res[12]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[12]~57_combout\ = ( \m2|res[14]~56_combout\ & ( \rf|b1|Mux4~4_combout\ & ( (\op_sel[3]~input_o\ & (((!\const_sel~input_o\) # (\op_sel[0]~input_o\)) # (\const_in[11]~input_o\))) ) ) ) # ( !\m2|res[14]~56_combout\ & ( \rf|b1|Mux4~4_combout\ & ( 
-- (\op_sel[3]~input_o\ & (!\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (\const_in[11]~input_o\)))) ) ) ) # ( \m2|res[14]~56_combout\ & ( !\rf|b1|Mux4~4_combout\ & ( (\op_sel[3]~input_o\ & (((\const_in[11]~input_o\ & \const_sel~input_o\)) # 
-- (\op_sel[0]~input_o\))) ) ) ) # ( !\m2|res[14]~56_combout\ & ( !\rf|b1|Mux4~4_combout\ & ( (\op_sel[3]~input_o\ & (\const_in[11]~input_o\ & (!\op_sel[0]~input_o\ & \const_sel~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000001010001010101010000000100000101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[3]~input_o\,
	datab => \ALT_INV_const_in[11]~input_o\,
	datac => \ALT_INV_op_sel[0]~input_o\,
	datad => \ALT_INV_const_sel~input_o\,
	datae => \m2|ALT_INV_res[14]~56_combout\,
	dataf => \rf|b1|ALT_INV_Mux4~4_combout\,
	combout => \m2|res[12]~57_combout\);

-- Location: MLABCELL_X19_Y2_N18
\m2|res[12]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[12]~55_combout\ = ( \rf|a1|Mux3~4_combout\ & ( \al_shift|al|au|f10|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (!\al_shift|al|au|Add0~49_sumout\ $ (((\al_shift|al|au|Add0~45_sumout\) # (\rf|a1|Mux4~4_combout\))))) ) ) ) # ( !\rf|a1|Mux3~4_combout\ 
-- & ( \al_shift|al|au|f10|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (!\al_shift|al|au|Add0~49_sumout\ $ (((!\rf|a1|Mux4~4_combout\ & !\al_shift|al|au|Add0~45_sumout\))))) ) ) ) # ( \rf|a1|Mux3~4_combout\ & ( !\al_shift|al|au|f10|c~0_combout\ & ( 
-- (!\m2|res[1]~7_combout\ & (!\al_shift|al|au|Add0~49_sumout\ $ (((\rf|a1|Mux4~4_combout\ & \al_shift|al|au|Add0~45_sumout\))))) ) ) ) # ( !\rf|a1|Mux3~4_combout\ & ( !\al_shift|al|au|f10|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & 
-- (!\al_shift|al|au|Add0~49_sumout\ $ (((!\rf|a1|Mux4~4_combout\) # (!\al_shift|al|au|Add0~45_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001001000110000001000010001001000110000001000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux4~4_combout\,
	datab => \m2|ALT_INV_res[1]~7_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~49_sumout\,
	datad => \al_shift|al|au|ALT_INV_Add0~45_sumout\,
	datae => \rf|a1|ALT_INV_Mux3~4_combout\,
	dataf => \al_shift|al|au|f10|ALT_INV_c~0_combout\,
	combout => \m2|res[12]~55_combout\);

-- Location: MLABCELL_X19_Y1_N3
\m2|res[12]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[12]~54_combout\ = ( \rf|b1|Mux3~4_combout\ & ( \rf|a1|Mux3~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & (!\const_in[12]~input_o\ & \const_sel~input_o\)))) ) ) ) # ( !\rf|b1|Mux3~4_combout\ & ( \rf|a1|Mux3~4_combout\ & ( 
-- !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & ((!\const_in[12]~input_o\) # (!\const_sel~input_o\))))) ) ) ) # ( \rf|b1|Mux3~4_combout\ & ( !\rf|a1|Mux3~4_combout\ & ( (!\op_sel[0]~input_o\ & (\op_sel[1]~input_o\ & ((!\const_sel~input_o\) # 
-- (\const_in[12]~input_o\)))) # (\op_sel[0]~input_o\ & (((!\const_sel~input_o\) # (\op_sel[1]~input_o\)) # (\const_in[12]~input_o\))) ) ) ) # ( !\rf|b1|Mux3~4_combout\ & ( !\rf|a1|Mux3~4_combout\ & ( (!\op_sel[0]~input_o\ & (\const_in[12]~input_o\ & 
-- (\const_sel~input_o\ & \op_sel[1]~input_o\))) # (\op_sel[0]~input_o\ & (((\const_in[12]~input_o\ & \const_sel~input_o\)) # (\op_sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111010100011111011101010111101010001111011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_in[12]~input_o\,
	datac => \ALT_INV_const_sel~input_o\,
	datad => \ALT_INV_op_sel[1]~input_o\,
	datae => \rf|b1|ALT_INV_Mux3~4_combout\,
	dataf => \rf|a1|ALT_INV_Mux3~4_combout\,
	combout => \m2|res[12]~54_combout\);

-- Location: MLABCELL_X19_Y2_N36
\m2|res[12]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[12]~68_combout\ = ( !\data_sel~input_o\ & ( ((!\op_sel[3]~input_o\ & (((\m2|res[1]~7_combout\ & \m2|res[12]~54_combout\)) # (\m2|res[12]~55_combout\)))) # (\m2|res[12]~57_combout\) ) ) # ( \data_sel~input_o\ & ( (((\data_in[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011111111000011110000111110101010111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[3]~input_o\,
	datab => \m2|ALT_INV_res[1]~7_combout\,
	datac => \ALT_INV_data_in[12]~input_o\,
	datad => \m2|ALT_INV_res[12]~57_combout\,
	datae => \ALT_INV_data_sel~input_o\,
	dataf => \m2|ALT_INV_res[12]~55_combout\,
	datag => \m2|ALT_INV_res[12]~54_combout\,
	combout => \m2|res[12]~68_combout\);

-- Location: FF_X23_Y2_N32
\rf|reg6|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[12]~68_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(12));

-- Location: LABCELL_X23_Y2_N57
\rf|b1|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux3~1_combout\ = ( \rf|reg4|q\(12) & ( \rf|reg7|q\(12) & ( (!\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\)) # (\rf|reg6|q\(12)))) # (\b_sel[0]~input_o\ & (((\b_sel[1]~input_o\) # (\rf|reg5|q\(12))))) ) ) ) # ( !\rf|reg4|q\(12) & ( \rf|reg7|q\(12) & 
-- ( (!\b_sel[0]~input_o\ & (\rf|reg6|q\(12) & ((\b_sel[1]~input_o\)))) # (\b_sel[0]~input_o\ & (((\b_sel[1]~input_o\) # (\rf|reg5|q\(12))))) ) ) ) # ( \rf|reg4|q\(12) & ( !\rf|reg7|q\(12) & ( (!\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\)) # 
-- (\rf|reg6|q\(12)))) # (\b_sel[0]~input_o\ & (((\rf|reg5|q\(12) & !\b_sel[1]~input_o\)))) ) ) ) # ( !\rf|reg4|q\(12) & ( !\rf|reg7|q\(12) & ( (!\b_sel[0]~input_o\ & (\rf|reg6|q\(12) & ((\b_sel[1]~input_o\)))) # (\b_sel[0]~input_o\ & (((\rf|reg5|q\(12) & 
-- !\b_sel[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \rf|reg6|ALT_INV_q\(12),
	datac => \rf|reg5|ALT_INV_q\(12),
	datad => \ALT_INV_b_sel[1]~input_o\,
	datae => \rf|reg4|ALT_INV_q\(12),
	dataf => \rf|reg7|ALT_INV_q\(12),
	combout => \rf|b1|Mux3~1_combout\);

-- Location: LABCELL_X23_Y2_N36
\rf|b1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux3~0_combout\ = ( \rf|reg3|q\(12) & ( \rf|reg2|q\(12) & ( ((!\b_sel[0]~input_o\ & ((\rf|reg0|q\(12)))) # (\b_sel[0]~input_o\ & (\rf|reg1|q\(12)))) # (\b_sel[1]~input_o\) ) ) ) # ( !\rf|reg3|q\(12) & ( \rf|reg2|q\(12) & ( (!\b_sel[0]~input_o\ & 
-- (((\rf|reg0|q\(12))) # (\b_sel[1]~input_o\))) # (\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & (\rf|reg1|q\(12)))) ) ) ) # ( \rf|reg3|q\(12) & ( !\rf|reg2|q\(12) & ( (!\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & ((\rf|reg0|q\(12))))) # (\b_sel[0]~input_o\ & 
-- (((\rf|reg1|q\(12))) # (\b_sel[1]~input_o\))) ) ) ) # ( !\rf|reg3|q\(12) & ( !\rf|reg2|q\(12) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & ((\rf|reg0|q\(12)))) # (\b_sel[0]~input_o\ & (\rf|reg1|q\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg1|ALT_INV_q\(12),
	datad => \rf|reg0|ALT_INV_q\(12),
	datae => \rf|reg3|ALT_INV_q\(12),
	dataf => \rf|reg2|ALT_INV_q\(12),
	combout => \rf|b1|Mux3~0_combout\);

-- Location: LABCELL_X21_Y1_N21
\rf|b1|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux3~2_combout\ = ( \b_sel[1]~input_o\ & ( \rf|reg8|q\(12) & ( (!\b_sel[0]~input_o\ & (\rf|reg10|q\(12))) # (\b_sel[0]~input_o\ & ((\rf|reg11|q\(12)))) ) ) ) # ( !\b_sel[1]~input_o\ & ( \rf|reg8|q\(12) & ( (!\b_sel[0]~input_o\) # (\rf|reg9|q\(12)) 
-- ) ) ) # ( \b_sel[1]~input_o\ & ( !\rf|reg8|q\(12) & ( (!\b_sel[0]~input_o\ & (\rf|reg10|q\(12))) # (\b_sel[0]~input_o\ & ((\rf|reg11|q\(12)))) ) ) ) # ( !\b_sel[1]~input_o\ & ( !\rf|reg8|q\(12) & ( (\b_sel[0]~input_o\ & \rf|reg9|q\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \rf|reg10|ALT_INV_q\(12),
	datac => \rf|reg11|ALT_INV_q\(12),
	datad => \rf|reg9|ALT_INV_q\(12),
	datae => \ALT_INV_b_sel[1]~input_o\,
	dataf => \rf|reg8|ALT_INV_q\(12),
	combout => \rf|b1|Mux3~2_combout\);

-- Location: LABCELL_X21_Y3_N21
\rf|b1|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux3~3_combout\ = ( \rf|reg13|q\(12) & ( \rf|reg15|q\(12) & ( ((!\b_sel[1]~input_o\ & (\rf|reg12|q\(12))) # (\b_sel[1]~input_o\ & ((\rf|reg14|q\(12))))) # (\b_sel[0]~input_o\) ) ) ) # ( !\rf|reg13|q\(12) & ( \rf|reg15|q\(12) & ( 
-- (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|reg12|q\(12))) # (\b_sel[1]~input_o\ & ((\rf|reg14|q\(12)))))) # (\b_sel[0]~input_o\ & (((\b_sel[1]~input_o\)))) ) ) ) # ( \rf|reg13|q\(12) & ( !\rf|reg15|q\(12) & ( (!\b_sel[0]~input_o\ & 
-- ((!\b_sel[1]~input_o\ & (\rf|reg12|q\(12))) # (\b_sel[1]~input_o\ & ((\rf|reg14|q\(12)))))) # (\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\)))) ) ) ) # ( !\rf|reg13|q\(12) & ( !\rf|reg15|q\(12) & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & 
-- (\rf|reg12|q\(12))) # (\b_sel[1]~input_o\ & ((\rf|reg14|q\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg12|ALT_INV_q\(12),
	datab => \ALT_INV_b_sel[0]~input_o\,
	datac => \ALT_INV_b_sel[1]~input_o\,
	datad => \rf|reg14|ALT_INV_q\(12),
	datae => \rf|reg13|ALT_INV_q\(12),
	dataf => \rf|reg15|ALT_INV_q\(12),
	combout => \rf|b1|Mux3~3_combout\);

-- Location: LABCELL_X22_Y2_N27
\rf|b1|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux3~4_combout\ = ( \b_sel[3]~input_o\ & ( \rf|b1|Mux3~3_combout\ & ( (\rf|b1|Mux3~2_combout\) # (\b_sel[2]~input_o\) ) ) ) # ( !\b_sel[3]~input_o\ & ( \rf|b1|Mux3~3_combout\ & ( (!\b_sel[2]~input_o\ & ((\rf|b1|Mux3~0_combout\))) # 
-- (\b_sel[2]~input_o\ & (\rf|b1|Mux3~1_combout\)) ) ) ) # ( \b_sel[3]~input_o\ & ( !\rf|b1|Mux3~3_combout\ & ( (!\b_sel[2]~input_o\ & \rf|b1|Mux3~2_combout\) ) ) ) # ( !\b_sel[3]~input_o\ & ( !\rf|b1|Mux3~3_combout\ & ( (!\b_sel[2]~input_o\ & 
-- ((\rf|b1|Mux3~0_combout\))) # (\b_sel[2]~input_o\ & (\rf|b1|Mux3~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \rf|b1|ALT_INV_Mux3~1_combout\,
	datac => \rf|b1|ALT_INV_Mux3~0_combout\,
	datad => \rf|b1|ALT_INV_Mux3~2_combout\,
	datae => \ALT_INV_b_sel[3]~input_o\,
	dataf => \rf|b1|ALT_INV_Mux3~3_combout\,
	combout => \rf|b1|Mux3~4_combout\);

-- Location: LABCELL_X21_Y2_N0
\m2|res[13]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[13]~53_combout\ = ( \rf|b1|Mux3~4_combout\ & ( (!\const_sel~input_o\) # (\const_in[12]~input_o\) ) ) # ( !\rf|b1|Mux3~4_combout\ & ( (\const_sel~input_o\ & \const_in[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_const_sel~input_o\,
	datac => \ALT_INV_const_in[12]~input_o\,
	datae => \rf|b1|ALT_INV_Mux3~4_combout\,
	combout => \m2|res[13]~53_combout\);

-- Location: LABCELL_X21_Y2_N36
\m2|res[11]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[11]~51_combout\ = ( \op_sel[1]~input_o\ & ( \const_in[11]~input_o\ & ( !\rf|a1|Mux4~4_combout\ $ (((!\op_sel[0]~input_o\ & (!\const_sel~input_o\ & !\rf|b1|Mux4~4_combout\)))) ) ) ) # ( !\op_sel[1]~input_o\ & ( \const_in[11]~input_o\ & ( 
-- (!\op_sel[0]~input_o\ & (\rf|a1|Mux4~4_combout\ & ((\rf|b1|Mux4~4_combout\) # (\const_sel~input_o\)))) # (\op_sel[0]~input_o\ & (((\rf|a1|Mux4~4_combout\) # (\rf|b1|Mux4~4_combout\)) # (\const_sel~input_o\))) ) ) ) # ( \op_sel[1]~input_o\ & ( 
-- !\const_in[11]~input_o\ & ( !\rf|a1|Mux4~4_combout\ $ (((!\op_sel[0]~input_o\ & ((!\rf|b1|Mux4~4_combout\) # (\const_sel~input_o\))))) ) ) ) # ( !\op_sel[1]~input_o\ & ( !\const_in[11]~input_o\ & ( (!\op_sel[0]~input_o\ & (!\const_sel~input_o\ & 
-- (\rf|b1|Mux4~4_combout\ & \rf|a1|Mux4~4_combout\))) # (\op_sel[0]~input_o\ & (((!\const_sel~input_o\ & \rf|b1|Mux4~4_combout\)) # (\rf|a1|Mux4~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001011101010111011010001000010101011111110111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \rf|b1|ALT_INV_Mux4~4_combout\,
	datad => \rf|a1|ALT_INV_Mux4~4_combout\,
	datae => \ALT_INV_op_sel[1]~input_o\,
	dataf => \ALT_INV_const_in[11]~input_o\,
	combout => \m2|res[11]~51_combout\);

-- Location: LABCELL_X21_Y2_N42
\m2|res[11]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[11]~52_combout\ = ( \al_shift|al|au|Add0~45_sumout\ & ( \al_shift|al|au|f10|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (\rf|a1|Mux4~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[11]~51_combout\))))) ) ) ) # ( 
-- !\al_shift|al|au|Add0~45_sumout\ & ( \al_shift|al|au|f10|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (!\rf|a1|Mux4~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[11]~51_combout\))))) ) ) ) # ( \al_shift|al|au|Add0~45_sumout\ & ( 
-- !\al_shift|al|au|f10|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (!\rf|a1|Mux4~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[11]~51_combout\))))) ) ) ) # ( !\al_shift|al|au|Add0~45_sumout\ & ( !\al_shift|al|au|f10|c~0_combout\ 
-- & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (\rf|a1|Mux4~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[11]~51_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000100011010000000010001101000000000010011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_res[1]~7_combout\,
	datab => \rf|a1|ALT_INV_Mux4~4_combout\,
	datac => \m2|ALT_INV_res[11]~51_combout\,
	datad => \ALT_INV_op_sel[3]~input_o\,
	datae => \al_shift|al|au|ALT_INV_Add0~45_sumout\,
	dataf => \al_shift|al|au|f10|ALT_INV_c~0_combout\,
	combout => \m2|res[11]~52_combout\);

-- Location: LABCELL_X21_Y2_N18
\m2|res[11]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[11]~72_combout\ = ( !\op_sel[0]~input_o\ & ( (!\data_sel~input_o\ & ((!\op_sel[3]~input_o\ & (((\m2|res[11]~52_combout\)))) # (\op_sel[3]~input_o\ & (((\m2|res[11]~46_combout\)))))) # (\data_sel~input_o\ & (((\data_in[11]~input_o\)))) ) ) # ( 
-- \op_sel[0]~input_o\ & ( (!\data_sel~input_o\ & ((((\op_sel[3]~input_o\ & \m2|res[13]~53_combout\)) # (\m2|res[11]~52_combout\)))) # (\data_sel~input_o\ & (((\data_in[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011000001010011001110101111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[3]~input_o\,
	datab => \ALT_INV_data_in[11]~input_o\,
	datac => \m2|ALT_INV_res[13]~53_combout\,
	datad => \ALT_INV_data_sel~input_o\,
	datae => \ALT_INV_op_sel[0]~input_o\,
	dataf => \m2|ALT_INV_res[11]~52_combout\,
	datag => \m2|ALT_INV_res[11]~46_combout\,
	combout => \m2|res[11]~72_combout\);

-- Location: FF_X21_Y2_N32
\rf|reg11|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[11]~72_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(11));

-- Location: LABCELL_X21_Y2_N33
\rf|b1|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux4~3_combout\ = ( \rf|reg15|q\(11) & ( \rf|reg7|q\(11) & ( ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(11)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(11)))) # (\b_sel[2]~input_o\) ) ) ) # ( !\rf|reg15|q\(11) & ( \rf|reg7|q\(11) & ( (!\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(11)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(11))))) # (\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\)))) ) ) ) # ( \rf|reg15|q\(11) & ( !\rf|reg7|q\(11) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & 
-- ((\rf|reg3|q\(11)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(11))))) # (\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\)))) ) ) ) # ( !\rf|reg15|q\(11) & ( !\rf|reg7|q\(11) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(11)))) # 
-- (\b_sel[3]~input_o\ & (\rf|reg11|q\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \rf|reg11|ALT_INV_q\(11),
	datac => \rf|reg3|ALT_INV_q\(11),
	datad => \ALT_INV_b_sel[3]~input_o\,
	datae => \rf|reg15|ALT_INV_q\(11),
	dataf => \rf|reg7|ALT_INV_q\(11),
	combout => \rf|b1|Mux4~3_combout\);

-- Location: LABCELL_X23_Y2_N51
\rf|b1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux4~1_combout\ = ( \rf|reg13|q\(11) & ( \rf|reg9|q\(11) & ( ((!\b_sel[2]~input_o\ & (\rf|reg1|q\(11))) # (\b_sel[2]~input_o\ & ((\rf|reg5|q\(11))))) # (\b_sel[3]~input_o\) ) ) ) # ( !\rf|reg13|q\(11) & ( \rf|reg9|q\(11) & ( (!\b_sel[2]~input_o\ & 
-- (((\b_sel[3]~input_o\)) # (\rf|reg1|q\(11)))) # (\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\ & \rf|reg5|q\(11))))) ) ) ) # ( \rf|reg13|q\(11) & ( !\rf|reg9|q\(11) & ( (!\b_sel[2]~input_o\ & (\rf|reg1|q\(11) & (!\b_sel[3]~input_o\))) # (\b_sel[2]~input_o\ 
-- & (((\rf|reg5|q\(11)) # (\b_sel[3]~input_o\)))) ) ) ) # ( !\rf|reg13|q\(11) & ( !\rf|reg9|q\(11) & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & (\rf|reg1|q\(11))) # (\b_sel[2]~input_o\ & ((\rf|reg5|q\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg1|ALT_INV_q\(11),
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|reg5|ALT_INV_q\(11),
	datae => \rf|reg13|ALT_INV_q\(11),
	dataf => \rf|reg9|ALT_INV_q\(11),
	combout => \rf|b1|Mux4~1_combout\);

-- Location: LABCELL_X21_Y4_N9
\rf|b1|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux4~2_combout\ = ( \rf|reg10|q\(11) & ( \b_sel[3]~input_o\ & ( (!\b_sel[2]~input_o\) # (\rf|reg14|q\(11)) ) ) ) # ( !\rf|reg10|q\(11) & ( \b_sel[3]~input_o\ & ( (\rf|reg14|q\(11) & \b_sel[2]~input_o\) ) ) ) # ( \rf|reg10|q\(11) & ( 
-- !\b_sel[3]~input_o\ & ( (!\b_sel[2]~input_o\ & ((\rf|reg2|q\(11)))) # (\b_sel[2]~input_o\ & (\rf|reg6|q\(11))) ) ) ) # ( !\rf|reg10|q\(11) & ( !\b_sel[3]~input_o\ & ( (!\b_sel[2]~input_o\ & ((\rf|reg2|q\(11)))) # (\b_sel[2]~input_o\ & (\rf|reg6|q\(11))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg6|ALT_INV_q\(11),
	datab => \rf|reg14|ALT_INV_q\(11),
	datac => \ALT_INV_b_sel[2]~input_o\,
	datad => \rf|reg2|ALT_INV_q\(11),
	datae => \rf|reg10|ALT_INV_q\(11),
	dataf => \ALT_INV_b_sel[3]~input_o\,
	combout => \rf|b1|Mux4~2_combout\);

-- Location: LABCELL_X21_Y4_N3
\rf|b1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux4~0_combout\ = ( \rf|reg0|q\(11) & ( \rf|reg8|q\(11) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & (\rf|reg4|q\(11))) # (\b_sel[3]~input_o\ & ((\rf|reg12|q\(11))))) ) ) ) # ( !\rf|reg0|q\(11) & ( \rf|reg8|q\(11) & ( (!\b_sel[3]~input_o\ & 
-- (\b_sel[2]~input_o\ & (\rf|reg4|q\(11)))) # (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|reg12|q\(11))))) ) ) ) # ( \rf|reg0|q\(11) & ( !\rf|reg8|q\(11) & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|reg4|q\(11))))) # 
-- (\b_sel[3]~input_o\ & (\b_sel[2]~input_o\ & ((\rf|reg12|q\(11))))) ) ) ) # ( !\rf|reg0|q\(11) & ( !\rf|reg8|q\(11) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg4|q\(11))) # (\b_sel[3]~input_o\ & ((\rf|reg12|q\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[3]~input_o\,
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \rf|reg4|ALT_INV_q\(11),
	datad => \rf|reg12|ALT_INV_q\(11),
	datae => \rf|reg0|ALT_INV_q\(11),
	dataf => \rf|reg8|ALT_INV_q\(11),
	combout => \rf|b1|Mux4~0_combout\);

-- Location: LABCELL_X21_Y2_N24
\rf|b1|Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux4~4_combout\ = ( \rf|b1|Mux4~2_combout\ & ( \rf|b1|Mux4~0_combout\ & ( (!\b_sel[0]~input_o\) # ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux4~1_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux4~3_combout\))) ) ) ) # ( !\rf|b1|Mux4~2_combout\ & ( 
-- \rf|b1|Mux4~0_combout\ & ( (!\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\)))) # (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux4~1_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux4~3_combout\)))) ) ) ) # ( \rf|b1|Mux4~2_combout\ & ( 
-- !\rf|b1|Mux4~0_combout\ & ( (!\b_sel[0]~input_o\ & (((\b_sel[1]~input_o\)))) # (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux4~1_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux4~3_combout\)))) ) ) ) # ( !\rf|b1|Mux4~2_combout\ & ( 
-- !\rf|b1|Mux4~0_combout\ & ( (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux4~1_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux4~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|b1|ALT_INV_Mux4~3_combout\,
	datab => \ALT_INV_b_sel[0]~input_o\,
	datac => \rf|b1|ALT_INV_Mux4~1_combout\,
	datad => \ALT_INV_b_sel[1]~input_o\,
	datae => \rf|b1|ALT_INV_Mux4~2_combout\,
	dataf => \rf|b1|ALT_INV_Mux4~0_combout\,
	combout => \rf|b1|Mux4~4_combout\);

-- Location: MLABCELL_X19_Y1_N9
\m2|res[10]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[10]~49_combout\ = ( \const_sel~input_o\ & ( \rf|b1|Mux4~4_combout\ & ( (\const_in[11]~input_o\ & \op_sel[3]~input_o\) ) ) ) # ( !\const_sel~input_o\ & ( \rf|b1|Mux4~4_combout\ & ( \op_sel[3]~input_o\ ) ) ) # ( \const_sel~input_o\ & ( 
-- !\rf|b1|Mux4~4_combout\ & ( (\const_in[11]~input_o\ & \op_sel[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100001111000011110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[11]~input_o\,
	datac => \ALT_INV_op_sel[3]~input_o\,
	datae => \ALT_INV_const_sel~input_o\,
	dataf => \rf|b1|ALT_INV_Mux4~4_combout\,
	combout => \m2|res[10]~49_combout\);

-- Location: LABCELL_X18_Y4_N18
\m2|res[10]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[10]~47_combout\ = ( \op_sel[1]~input_o\ & ( \const_sel~input_o\ & ( !\rf|a1|Mux5~4_combout\ $ (((!\op_sel[0]~input_o\ & !\const_in[10]~input_o\))) ) ) ) # ( !\op_sel[1]~input_o\ & ( \const_sel~input_o\ & ( (!\rf|a1|Mux5~4_combout\ & 
-- (\op_sel[0]~input_o\ & \const_in[10]~input_o\)) # (\rf|a1|Mux5~4_combout\ & ((\const_in[10]~input_o\) # (\op_sel[0]~input_o\))) ) ) ) # ( \op_sel[1]~input_o\ & ( !\const_sel~input_o\ & ( !\rf|a1|Mux5~4_combout\ $ (((!\op_sel[0]~input_o\ & 
-- !\rf|b1|Mux5~4_combout\))) ) ) ) # ( !\op_sel[1]~input_o\ & ( !\const_sel~input_o\ & ( (!\rf|a1|Mux5~4_combout\ & (\op_sel[0]~input_o\ & \rf|b1|Mux5~4_combout\)) # (\rf|a1|Mux5~4_combout\ & ((\rf|b1|Mux5~4_combout\) # (\op_sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111011001101010101000010111000101110110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux5~4_combout\,
	datab => \ALT_INV_op_sel[0]~input_o\,
	datac => \ALT_INV_const_in[10]~input_o\,
	datad => \rf|b1|ALT_INV_Mux5~4_combout\,
	datae => \ALT_INV_op_sel[1]~input_o\,
	dataf => \ALT_INV_const_sel~input_o\,
	combout => \m2|res[10]~47_combout\);

-- Location: MLABCELL_X19_Y4_N12
\al_shift|al|au|f7|c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f7|c~1_combout\ = ( \al_shift|al|au|Add0~29_sumout\ & ( \rf|a1|Mux8~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rf|a1|ALT_INV_Mux8~4_combout\,
	datae => \al_shift|al|au|ALT_INV_Add0~29_sumout\,
	combout => \al_shift|al|au|f7|c~1_combout\);

-- Location: MLABCELL_X19_Y3_N21
\al_shift|al|au|f7|c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f7|c~2_combout\ = ( !\al_shift|al|au|Add0~29_sumout\ & ( !\rf|a1|Mux8~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rf|a1|ALT_INV_Mux8~4_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~29_sumout\,
	combout => \al_shift|al|au|f7|c~2_combout\);

-- Location: MLABCELL_X19_Y3_N54
\al_shift|al|au|f2|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f2|c~0_combout\ = ( \al_shift|al|au|Add0~5_sumout\ & ( \al_shift|al|au|Add0~9_sumout\ & ( ((!\rf|a1|Mux15~4_combout\ $ (!\al_shift|al|au|Add0~1_sumout\)) # (\rf|a1|Mux14~4_combout\)) # (\rf|a1|Mux13~4_combout\) ) ) ) # ( 
-- !\al_shift|al|au|Add0~5_sumout\ & ( \al_shift|al|au|Add0~9_sumout\ & ( ((\rf|a1|Mux14~4_combout\ & (!\rf|a1|Mux15~4_combout\ $ (!\al_shift|al|au|Add0~1_sumout\)))) # (\rf|a1|Mux13~4_combout\) ) ) ) # ( \al_shift|al|au|Add0~5_sumout\ & ( 
-- !\al_shift|al|au|Add0~9_sumout\ & ( (\rf|a1|Mux13~4_combout\ & ((!\rf|a1|Mux15~4_combout\ $ (!\al_shift|al|au|Add0~1_sumout\)) # (\rf|a1|Mux14~4_combout\))) ) ) ) # ( !\al_shift|al|au|Add0~5_sumout\ & ( !\al_shift|al|au|Add0~9_sumout\ & ( 
-- (\rf|a1|Mux13~4_combout\ & (\rf|a1|Mux14~4_combout\ & (!\rf|a1|Mux15~4_combout\ $ (!\al_shift|al|au|Add0~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000100100011001100110011011110110111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux15~4_combout\,
	datab => \rf|a1|ALT_INV_Mux13~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~1_sumout\,
	datad => \rf|a1|ALT_INV_Mux14~4_combout\,
	datae => \al_shift|al|au|ALT_INV_Add0~5_sumout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~9_sumout\,
	combout => \al_shift|al|au|f2|c~0_combout\);

-- Location: MLABCELL_X19_Y3_N18
\al_shift|al|au|f4|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f4|c~0_combout\ = ( \al_shift|al|au|Add0~13_sumout\ & ( (!\rf|a1|Mux11~4_combout\ & (\al_shift|al|au|Add0~17_sumout\ & ((\al_shift|al|au|f2|c~0_combout\) # (\rf|a1|Mux12~4_combout\)))) # (\rf|a1|Mux11~4_combout\ & 
-- (((\al_shift|al|au|f2|c~0_combout\) # (\al_shift|al|au|Add0~17_sumout\)) # (\rf|a1|Mux12~4_combout\))) ) ) # ( !\al_shift|al|au|Add0~13_sumout\ & ( (!\rf|a1|Mux11~4_combout\ & (\rf|a1|Mux12~4_combout\ & (\al_shift|al|au|Add0~17_sumout\ & 
-- \al_shift|al|au|f2|c~0_combout\))) # (\rf|a1|Mux11~4_combout\ & (((\rf|a1|Mux12~4_combout\ & \al_shift|al|au|f2|c~0_combout\)) # (\al_shift|al|au|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux11~4_combout\,
	datab => \rf|a1|ALT_INV_Mux12~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~17_sumout\,
	datad => \al_shift|al|au|f2|ALT_INV_c~0_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~13_sumout\,
	combout => \al_shift|al|au|f4|c~0_combout\);

-- Location: MLABCELL_X19_Y3_N30
\al_shift|al|au|f7|c~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f7|c~3_combout\ = ( !\al_shift|al|au|f7|c~2_combout\ & ( \al_shift|al|au|f4|c~0_combout\ & ( (!\al_shift|al|au|Add0~25_sumout\ & (\rf|a1|Mux9~4_combout\ & ((\al_shift|al|au|Add0~21_sumout\) # (\rf|a1|Mux10~4_combout\)))) # 
-- (\al_shift|al|au|Add0~25_sumout\ & (((\rf|a1|Mux9~4_combout\) # (\al_shift|al|au|Add0~21_sumout\)) # (\rf|a1|Mux10~4_combout\))) ) ) ) # ( !\al_shift|al|au|f7|c~2_combout\ & ( !\al_shift|al|au|f4|c~0_combout\ & ( (!\al_shift|al|au|Add0~25_sumout\ & 
-- (\rf|a1|Mux10~4_combout\ & (\al_shift|al|au|Add0~21_sumout\ & \rf|a1|Mux9~4_combout\))) # (\al_shift|al|au|Add0~25_sumout\ & (((\rf|a1|Mux10~4_combout\ & \al_shift|al|au|Add0~21_sumout\)) # (\rf|a1|Mux9~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000000000000000010011011111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux10~4_combout\,
	datab => \al_shift|al|au|ALT_INV_Add0~25_sumout\,
	datac => \al_shift|al|au|ALT_INV_Add0~21_sumout\,
	datad => \rf|a1|ALT_INV_Mux9~4_combout\,
	datae => \al_shift|al|au|f7|ALT_INV_c~2_combout\,
	dataf => \al_shift|al|au|f4|ALT_INV_c~0_combout\,
	combout => \al_shift|al|au|f7|c~3_combout\);

-- Location: MLABCELL_X19_Y4_N24
\al_shift|al|au|f9|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f9|c~0_combout\ = ( \al_shift|al|au|Add0~37_sumout\ & ( \al_shift|al|au|f7|c~3_combout\ & ( (!\al_shift|al|au|Add0~33_sumout\ & (!\rf|a1|Mux6~4_combout\ & !\rf|a1|Mux7~4_combout\)) ) ) ) # ( !\al_shift|al|au|Add0~37_sumout\ & ( 
-- \al_shift|al|au|f7|c~3_combout\ & ( (!\rf|a1|Mux6~4_combout\) # ((!\al_shift|al|au|Add0~33_sumout\ & !\rf|a1|Mux7~4_combout\)) ) ) ) # ( \al_shift|al|au|Add0~37_sumout\ & ( !\al_shift|al|au|f7|c~3_combout\ & ( (!\rf|a1|Mux6~4_combout\ & 
-- ((!\al_shift|al|au|Add0~33_sumout\ & ((!\rf|a1|Mux7~4_combout\) # (!\al_shift|al|au|f7|c~1_combout\))) # (\al_shift|al|au|Add0~33_sumout\ & (!\rf|a1|Mux7~4_combout\ & !\al_shift|al|au|f7|c~1_combout\)))) ) ) ) # ( !\al_shift|al|au|Add0~37_sumout\ & ( 
-- !\al_shift|al|au|f7|c~3_combout\ & ( (!\rf|a1|Mux6~4_combout\) # ((!\al_shift|al|au|Add0~33_sumout\ & ((!\rf|a1|Mux7~4_combout\) # (!\al_shift|al|au|f7|c~1_combout\))) # (\al_shift|al|au|Add0~33_sumout\ & (!\rf|a1|Mux7~4_combout\ & 
-- !\al_shift|al|au|f7|c~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100110010001000000011101100111011001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \al_shift|al|au|ALT_INV_Add0~33_sumout\,
	datab => \rf|a1|ALT_INV_Mux6~4_combout\,
	datac => \rf|a1|ALT_INV_Mux7~4_combout\,
	datad => \al_shift|al|au|f7|ALT_INV_c~1_combout\,
	datae => \al_shift|al|au|ALT_INV_Add0~37_sumout\,
	dataf => \al_shift|al|au|f7|ALT_INV_c~3_combout\,
	combout => \al_shift|al|au|f9|c~0_combout\);

-- Location: MLABCELL_X19_Y4_N33
\m2|res[10]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[10]~48_combout\ = ( \al_shift|al|au|Add0~41_sumout\ & ( \al_shift|al|au|f9|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (!\rf|a1|Mux5~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[10]~47_combout\))))) ) ) ) # ( 
-- !\al_shift|al|au|Add0~41_sumout\ & ( \al_shift|al|au|f9|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (\rf|a1|Mux5~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[10]~47_combout\))))) ) ) ) # ( \al_shift|al|au|Add0~41_sumout\ & ( 
-- !\al_shift|al|au|f9|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (\rf|a1|Mux5~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[10]~47_combout\))))) ) ) ) # ( !\al_shift|al|au|Add0~41_sumout\ & ( !\al_shift|al|au|f9|c~0_combout\ & ( 
-- (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (!\rf|a1|Mux5~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[10]~47_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001100000000010100110000000001010011000000001010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux5~4_combout\,
	datab => \m2|ALT_INV_res[10]~47_combout\,
	datac => \m2|ALT_INV_res[1]~7_combout\,
	datad => \ALT_INV_op_sel[3]~input_o\,
	datae => \al_shift|al|au|ALT_INV_Add0~41_sumout\,
	dataf => \al_shift|al|au|f9|ALT_INV_c~0_combout\,
	combout => \m2|res[10]~48_combout\);

-- Location: MLABCELL_X19_Y4_N48
\m2|res[10]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[10]~50_combout\ = ( \m2|res[10]~49_combout\ & ( \m2|res[10]~48_combout\ & ( (!\data_sel~input_o\ & (((!\m2|res[1]~10_combout\)) # (\m2|res[10]~43_combout\))) # (\data_sel~input_o\ & (((\data_in[10]~input_o\)))) ) ) ) # ( !\m2|res[10]~49_combout\ & 
-- ( \m2|res[10]~48_combout\ & ( (!\data_sel~input_o\ & (((!\m2|res[1]~10_combout\)) # (\m2|res[10]~43_combout\))) # (\data_sel~input_o\ & (((\data_in[10]~input_o\)))) ) ) ) # ( \m2|res[10]~49_combout\ & ( !\m2|res[10]~48_combout\ & ( (!\data_sel~input_o\ & 
-- (((!\m2|res[1]~10_combout\)) # (\m2|res[10]~43_combout\))) # (\data_sel~input_o\ & (((\data_in[10]~input_o\)))) ) ) ) # ( !\m2|res[10]~49_combout\ & ( !\m2|res[10]~48_combout\ & ( (!\data_sel~input_o\ & (\m2|res[10]~43_combout\ & 
-- ((\m2|res[1]~10_combout\)))) # (\data_sel~input_o\ & (((\data_in[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011111100110101001111110011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_res[10]~43_combout\,
	datab => \ALT_INV_data_in[10]~input_o\,
	datac => \ALT_INV_data_sel~input_o\,
	datad => \m2|ALT_INV_res[1]~10_combout\,
	datae => \m2|ALT_INV_res[10]~49_combout\,
	dataf => \m2|ALT_INV_res[10]~48_combout\,
	combout => \m2|res[10]~50_combout\);

-- Location: FF_X18_Y3_N50
\rf|reg14|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[10]~50_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(10));

-- Location: LABCELL_X18_Y3_N24
\rf|b1|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux5~3_combout\ = ( \rf|reg15|q\(10) & ( \rf|reg13|q\(10) & ( ((!\b_sel[1]~input_o\ & ((\rf|reg12|q\(10)))) # (\b_sel[1]~input_o\ & (\rf|reg14|q\(10)))) # (\b_sel[0]~input_o\) ) ) ) # ( !\rf|reg15|q\(10) & ( \rf|reg13|q\(10) & ( 
-- (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|reg12|q\(10)))) # (\b_sel[1]~input_o\ & (\rf|reg14|q\(10))))) # (\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\)))) ) ) ) # ( \rf|reg15|q\(10) & ( !\rf|reg13|q\(10) & ( (!\b_sel[0]~input_o\ & 
-- ((!\b_sel[1]~input_o\ & ((\rf|reg12|q\(10)))) # (\b_sel[1]~input_o\ & (\rf|reg14|q\(10))))) # (\b_sel[0]~input_o\ & (((\b_sel[1]~input_o\)))) ) ) ) # ( !\rf|reg15|q\(10) & ( !\rf|reg13|q\(10) & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & 
-- ((\rf|reg12|q\(10)))) # (\b_sel[1]~input_o\ & (\rf|reg14|q\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg14|ALT_INV_q\(10),
	datab => \rf|reg12|ALT_INV_q\(10),
	datac => \ALT_INV_b_sel[0]~input_o\,
	datad => \ALT_INV_b_sel[1]~input_o\,
	datae => \rf|reg15|ALT_INV_q\(10),
	dataf => \rf|reg13|ALT_INV_q\(10),
	combout => \rf|b1|Mux5~3_combout\);

-- Location: LABCELL_X17_Y3_N45
\rf|b1|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux5~2_combout\ = ( \rf|reg10|q\(10) & ( \rf|reg11|q\(10) & ( ((!\b_sel[0]~input_o\ & ((\rf|reg8|q\(10)))) # (\b_sel[0]~input_o\ & (\rf|reg9|q\(10)))) # (\b_sel[1]~input_o\) ) ) ) # ( !\rf|reg10|q\(10) & ( \rf|reg11|q\(10) & ( (!\b_sel[1]~input_o\ 
-- & ((!\b_sel[0]~input_o\ & ((\rf|reg8|q\(10)))) # (\b_sel[0]~input_o\ & (\rf|reg9|q\(10))))) # (\b_sel[1]~input_o\ & (((\b_sel[0]~input_o\)))) ) ) ) # ( \rf|reg10|q\(10) & ( !\rf|reg11|q\(10) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & 
-- ((\rf|reg8|q\(10)))) # (\b_sel[0]~input_o\ & (\rf|reg9|q\(10))))) # (\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\)))) ) ) ) # ( !\rf|reg10|q\(10) & ( !\rf|reg11|q\(10) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & ((\rf|reg8|q\(10)))) # 
-- (\b_sel[0]~input_o\ & (\rf|reg9|q\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg9|ALT_INV_q\(10),
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \ALT_INV_b_sel[0]~input_o\,
	datad => \rf|reg8|ALT_INV_q\(10),
	datae => \rf|reg10|ALT_INV_q\(10),
	dataf => \rf|reg11|ALT_INV_q\(10),
	combout => \rf|b1|Mux5~2_combout\);

-- Location: LABCELL_X18_Y3_N45
\rf|b1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux5~0_combout\ = ( \rf|reg3|q\(10) & ( \b_sel[0]~input_o\ & ( (\b_sel[1]~input_o\) # (\rf|reg1|q\(10)) ) ) ) # ( !\rf|reg3|q\(10) & ( \b_sel[0]~input_o\ & ( (\rf|reg1|q\(10) & !\b_sel[1]~input_o\) ) ) ) # ( \rf|reg3|q\(10) & ( !\b_sel[0]~input_o\ 
-- & ( (!\b_sel[1]~input_o\ & (\rf|reg0|q\(10))) # (\b_sel[1]~input_o\ & ((\rf|reg2|q\(10)))) ) ) ) # ( !\rf|reg3|q\(10) & ( !\b_sel[0]~input_o\ & ( (!\b_sel[1]~input_o\ & (\rf|reg0|q\(10))) # (\b_sel[1]~input_o\ & ((\rf|reg2|q\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg0|ALT_INV_q\(10),
	datab => \rf|reg2|ALT_INV_q\(10),
	datac => \rf|reg1|ALT_INV_q\(10),
	datad => \ALT_INV_b_sel[1]~input_o\,
	datae => \rf|reg3|ALT_INV_q\(10),
	dataf => \ALT_INV_b_sel[0]~input_o\,
	combout => \rf|b1|Mux5~0_combout\);

-- Location: LABCELL_X15_Y4_N9
\rf|b1|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux5~1_combout\ = ( \rf|reg6|q\(10) & ( \rf|reg4|q\(10) & ( (!\b_sel[0]~input_o\) # ((!\b_sel[1]~input_o\ & (\rf|reg5|q\(10))) # (\b_sel[1]~input_o\ & ((\rf|reg7|q\(10))))) ) ) ) # ( !\rf|reg6|q\(10) & ( \rf|reg4|q\(10) & ( (!\b_sel[0]~input_o\ & 
-- (!\b_sel[1]~input_o\)) # (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|reg5|q\(10))) # (\b_sel[1]~input_o\ & ((\rf|reg7|q\(10)))))) ) ) ) # ( \rf|reg6|q\(10) & ( !\rf|reg4|q\(10) & ( (!\b_sel[0]~input_o\ & (\b_sel[1]~input_o\)) # (\b_sel[0]~input_o\ 
-- & ((!\b_sel[1]~input_o\ & (\rf|reg5|q\(10))) # (\b_sel[1]~input_o\ & ((\rf|reg7|q\(10)))))) ) ) ) # ( !\rf|reg6|q\(10) & ( !\rf|reg4|q\(10) & ( (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|reg5|q\(10))) # (\b_sel[1]~input_o\ & ((\rf|reg7|q\(10)))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg5|ALT_INV_q\(10),
	datad => \rf|reg7|ALT_INV_q\(10),
	datae => \rf|reg6|ALT_INV_q\(10),
	dataf => \rf|reg4|ALT_INV_q\(10),
	combout => \rf|b1|Mux5~1_combout\);

-- Location: LABCELL_X18_Y3_N18
\rf|b1|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux5~4_combout\ = ( \rf|b1|Mux5~0_combout\ & ( \rf|b1|Mux5~1_combout\ & ( (!\b_sel[3]~input_o\) # ((!\b_sel[2]~input_o\ & ((\rf|b1|Mux5~2_combout\))) # (\b_sel[2]~input_o\ & (\rf|b1|Mux5~3_combout\))) ) ) ) # ( !\rf|b1|Mux5~0_combout\ & ( 
-- \rf|b1|Mux5~1_combout\ & ( (!\b_sel[3]~input_o\ & (((\b_sel[2]~input_o\)))) # (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & ((\rf|b1|Mux5~2_combout\))) # (\b_sel[2]~input_o\ & (\rf|b1|Mux5~3_combout\)))) ) ) ) # ( \rf|b1|Mux5~0_combout\ & ( 
-- !\rf|b1|Mux5~1_combout\ & ( (!\b_sel[3]~input_o\ & (((!\b_sel[2]~input_o\)))) # (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & ((\rf|b1|Mux5~2_combout\))) # (\b_sel[2]~input_o\ & (\rf|b1|Mux5~3_combout\)))) ) ) ) # ( !\rf|b1|Mux5~0_combout\ & ( 
-- !\rf|b1|Mux5~1_combout\ & ( (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & ((\rf|b1|Mux5~2_combout\))) # (\b_sel[2]~input_o\ & (\rf|b1|Mux5~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[3]~input_o\,
	datab => \rf|b1|ALT_INV_Mux5~3_combout\,
	datac => \rf|b1|ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_b_sel[2]~input_o\,
	datae => \rf|b1|ALT_INV_Mux5~0_combout\,
	dataf => \rf|b1|ALT_INV_Mux5~1_combout\,
	combout => \rf|b1|Mux5~4_combout\);

-- Location: LABCELL_X18_Y4_N24
\m2|res[11]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[11]~46_combout\ = ( \const_in[10]~input_o\ & ( (\rf|b1|Mux5~4_combout\) # (\const_sel~input_o\) ) ) # ( !\const_in[10]~input_o\ & ( (!\const_sel~input_o\ & \rf|b1|Mux5~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_sel~input_o\,
	datab => \rf|b1|ALT_INV_Mux5~4_combout\,
	datae => \ALT_INV_const_in[10]~input_o\,
	combout => \m2|res[11]~46_combout\);

-- Location: MLABCELL_X19_Y1_N15
\m2|res[9]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[9]~44_combout\ = ( \rf|b1|Mux6~4_combout\ & ( \rf|a1|Mux6~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & (\const_sel~input_o\ & !\const_in[9]~input_o\)))) ) ) ) # ( !\rf|b1|Mux6~4_combout\ & ( \rf|a1|Mux6~4_combout\ & ( 
-- !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (!\const_in[9]~input_o\))))) ) ) ) # ( \rf|b1|Mux6~4_combout\ & ( !\rf|a1|Mux6~4_combout\ & ( (!\op_sel[1]~input_o\ & (\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # 
-- (\const_in[9]~input_o\)))) # (\op_sel[1]~input_o\ & (((!\const_sel~input_o\) # (\const_in[9]~input_o\)) # (\op_sel[0]~input_o\))) ) ) ) # ( !\rf|b1|Mux6~4_combout\ & ( !\rf|a1|Mux6~4_combout\ & ( (!\op_sel[1]~input_o\ & (\op_sel[0]~input_o\ & 
-- (\const_sel~input_o\ & \const_in[9]~input_o\))) # (\op_sel[1]~input_o\ & (((\const_sel~input_o\ & \const_in[9]~input_o\)) # (\op_sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111011100010111011101100110011010101010011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[1]~input_o\,
	datab => \ALT_INV_op_sel[0]~input_o\,
	datac => \ALT_INV_const_sel~input_o\,
	datad => \ALT_INV_const_in[9]~input_o\,
	datae => \rf|b1|ALT_INV_Mux6~4_combout\,
	dataf => \rf|a1|ALT_INV_Mux6~4_combout\,
	combout => \m2|res[9]~44_combout\);

-- Location: MLABCELL_X19_Y2_N12
\m2|res[9]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[9]~45_combout\ = ( \m2|res[9]~44_combout\ & ( \al_shift|al|au|f8|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\rf|a1|Mux6~4_combout\ $ (!\al_shift|al|au|Add0~37_sumout\)) # (\m2|res[1]~7_combout\))) ) ) ) # ( !\m2|res[9]~44_combout\ & ( 
-- \al_shift|al|au|f8|c~0_combout\ & ( (!\op_sel[3]~input_o\ & (!\m2|res[1]~7_combout\ & (!\rf|a1|Mux6~4_combout\ $ (!\al_shift|al|au|Add0~37_sumout\)))) ) ) ) # ( \m2|res[9]~44_combout\ & ( !\al_shift|al|au|f8|c~0_combout\ & ( (!\op_sel[3]~input_o\ & 
-- ((!\rf|a1|Mux6~4_combout\ $ (\al_shift|al|au|Add0~37_sumout\)) # (\m2|res[1]~7_combout\))) ) ) ) # ( !\m2|res[9]~44_combout\ & ( !\al_shift|al|au|f8|c~0_combout\ & ( (!\op_sel[3]~input_o\ & (!\m2|res[1]~7_combout\ & (!\rf|a1|Mux6~4_combout\ $ 
-- (\al_shift|al|au|Add0~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000100001001100110001001000000000000100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux6~4_combout\,
	datab => \ALT_INV_op_sel[3]~input_o\,
	datac => \al_shift|al|au|ALT_INV_Add0~37_sumout\,
	datad => \m2|ALT_INV_res[1]~7_combout\,
	datae => \m2|ALT_INV_res[9]~44_combout\,
	dataf => \al_shift|al|au|f8|ALT_INV_c~0_combout\,
	combout => \m2|res[9]~45_combout\);

-- Location: MLABCELL_X19_Y1_N33
\m2|res[9]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[9]~76_combout\ = ( !\op_sel[0]~input_o\ & ( (!\data_sel~input_o\ & (((!\op_sel[3]~input_o\ & ((\m2|res[9]~45_combout\))) # (\op_sel[3]~input_o\ & (\m2|res[9]~38_combout\))))) # (\data_sel~input_o\ & (\data_in[9]~input_o\)) ) ) # ( 
-- \op_sel[0]~input_o\ & ( (!\data_sel~input_o\ & ((((\op_sel[3]~input_o\ & \m2|res[11]~46_combout\)) # (\m2|res[9]~45_combout\)))) # (\data_sel~input_o\ & (\data_in[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000000110101010111001111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[9]~input_o\,
	datab => \ALT_INV_op_sel[3]~input_o\,
	datac => \m2|ALT_INV_res[11]~46_combout\,
	datad => \ALT_INV_data_sel~input_o\,
	datae => \ALT_INV_op_sel[0]~input_o\,
	dataf => \m2|ALT_INV_res[9]~45_combout\,
	datag => \m2|ALT_INV_res[9]~38_combout\,
	combout => \m2|res[9]~76_combout\);

-- Location: FF_X22_Y2_N32
\rf|reg14|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[9]~76_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(9));

-- Location: LABCELL_X22_Y2_N33
\rf|b1|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux6~2_combout\ = ( \rf|reg10|q\(9) & ( \rf|reg2|q\(9) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & ((\rf|reg6|q\(9)))) # (\b_sel[3]~input_o\ & (\rf|reg14|q\(9)))) ) ) ) # ( !\rf|reg10|q\(9) & ( \rf|reg2|q\(9) & ( (!\b_sel[2]~input_o\ & 
-- (!\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg6|q\(9)))) # (\b_sel[3]~input_o\ & (\rf|reg14|q\(9))))) ) ) ) # ( \rf|reg10|q\(9) & ( !\rf|reg2|q\(9) & ( (!\b_sel[2]~input_o\ & (\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & ((\rf|reg6|q\(9)))) # (\b_sel[3]~input_o\ & (\rf|reg14|q\(9))))) ) ) ) # ( !\rf|reg10|q\(9) & ( !\rf|reg2|q\(9) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg6|q\(9)))) # (\b_sel[3]~input_o\ & (\rf|reg14|q\(9))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg14|ALT_INV_q\(9),
	datad => \rf|reg6|ALT_INV_q\(9),
	datae => \rf|reg10|ALT_INV_q\(9),
	dataf => \rf|reg2|ALT_INV_q\(9),
	combout => \rf|b1|Mux6~2_combout\);

-- Location: LABCELL_X22_Y2_N51
\rf|b1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux6~0_combout\ = ( \rf|reg8|q\(9) & ( \rf|reg0|q\(9) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & ((\rf|reg4|q\(9)))) # (\b_sel[3]~input_o\ & (\rf|reg12|q\(9)))) ) ) ) # ( !\rf|reg8|q\(9) & ( \rf|reg0|q\(9) & ( (!\b_sel[2]~input_o\ & 
-- (!\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg4|q\(9)))) # (\b_sel[3]~input_o\ & (\rf|reg12|q\(9))))) ) ) ) # ( \rf|reg8|q\(9) & ( !\rf|reg0|q\(9) & ( (!\b_sel[2]~input_o\ & (\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & ((\rf|reg4|q\(9)))) # (\b_sel[3]~input_o\ & (\rf|reg12|q\(9))))) ) ) ) # ( !\rf|reg8|q\(9) & ( !\rf|reg0|q\(9) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg4|q\(9)))) # (\b_sel[3]~input_o\ & (\rf|reg12|q\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg12|ALT_INV_q\(9),
	datad => \rf|reg4|ALT_INV_q\(9),
	datae => \rf|reg8|ALT_INV_q\(9),
	dataf => \rf|reg0|ALT_INV_q\(9),
	combout => \rf|b1|Mux6~0_combout\);

-- Location: LABCELL_X23_Y2_N3
\rf|b1|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux6~1_combout\ = ( \rf|reg9|q\(9) & ( \rf|reg13|q\(9) & ( ((!\b_sel[2]~input_o\ & (\rf|reg1|q\(9))) # (\b_sel[2]~input_o\ & ((\rf|reg5|q\(9))))) # (\b_sel[3]~input_o\) ) ) ) # ( !\rf|reg9|q\(9) & ( \rf|reg13|q\(9) & ( (!\b_sel[2]~input_o\ & 
-- (\rf|reg1|q\(9) & (!\b_sel[3]~input_o\))) # (\b_sel[2]~input_o\ & (((\rf|reg5|q\(9)) # (\b_sel[3]~input_o\)))) ) ) ) # ( \rf|reg9|q\(9) & ( !\rf|reg13|q\(9) & ( (!\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\)) # (\rf|reg1|q\(9)))) # (\b_sel[2]~input_o\ & 
-- (((!\b_sel[3]~input_o\ & \rf|reg5|q\(9))))) ) ) ) # ( !\rf|reg9|q\(9) & ( !\rf|reg13|q\(9) & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & (\rf|reg1|q\(9))) # (\b_sel[2]~input_o\ & ((\rf|reg5|q\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \rf|reg1|ALT_INV_q\(9),
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|reg5|ALT_INV_q\(9),
	datae => \rf|reg9|ALT_INV_q\(9),
	dataf => \rf|reg13|ALT_INV_q\(9),
	combout => \rf|b1|Mux6~1_combout\);

-- Location: LABCELL_X23_Y4_N9
\rf|b1|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux6~3_combout\ = ( \rf|reg15|q\(9) & ( \rf|reg3|q\(9) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\) # ((\rf|reg11|q\(9))))) # (\b_sel[2]~input_o\ & (((\rf|reg7|q\(9))) # (\b_sel[3]~input_o\))) ) ) ) # ( !\rf|reg15|q\(9) & ( \rf|reg3|q\(9) & ( 
-- (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\) # ((\rf|reg11|q\(9))))) # (\b_sel[2]~input_o\ & (!\b_sel[3]~input_o\ & ((\rf|reg7|q\(9))))) ) ) ) # ( \rf|reg15|q\(9) & ( !\rf|reg3|q\(9) & ( (!\b_sel[2]~input_o\ & (\b_sel[3]~input_o\ & (\rf|reg11|q\(9)))) # 
-- (\b_sel[2]~input_o\ & (((\rf|reg7|q\(9))) # (\b_sel[3]~input_o\))) ) ) ) # ( !\rf|reg15|q\(9) & ( !\rf|reg3|q\(9) & ( (!\b_sel[2]~input_o\ & (\b_sel[3]~input_o\ & (\rf|reg11|q\(9)))) # (\b_sel[2]~input_o\ & (!\b_sel[3]~input_o\ & ((\rf|reg7|q\(9))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg11|ALT_INV_q\(9),
	datad => \rf|reg7|ALT_INV_q\(9),
	datae => \rf|reg15|ALT_INV_q\(9),
	dataf => \rf|reg3|ALT_INV_q\(9),
	combout => \rf|b1|Mux6~3_combout\);

-- Location: LABCELL_X22_Y2_N6
\rf|b1|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux6~4_combout\ = ( \rf|b1|Mux6~1_combout\ & ( \rf|b1|Mux6~3_combout\ & ( ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux6~0_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux6~2_combout\))) # (\b_sel[0]~input_o\) ) ) ) # ( !\rf|b1|Mux6~1_combout\ & ( 
-- \rf|b1|Mux6~3_combout\ & ( (!\b_sel[1]~input_o\ & (((\rf|b1|Mux6~0_combout\ & !\b_sel[0]~input_o\)))) # (\b_sel[1]~input_o\ & (((\b_sel[0]~input_o\)) # (\rf|b1|Mux6~2_combout\))) ) ) ) # ( \rf|b1|Mux6~1_combout\ & ( !\rf|b1|Mux6~3_combout\ & ( 
-- (!\b_sel[1]~input_o\ & (((\b_sel[0]~input_o\) # (\rf|b1|Mux6~0_combout\)))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux6~2_combout\ & ((!\b_sel[0]~input_o\)))) ) ) ) # ( !\rf|b1|Mux6~1_combout\ & ( !\rf|b1|Mux6~3_combout\ & ( (!\b_sel[0]~input_o\ & 
-- ((!\b_sel[1]~input_o\ & ((\rf|b1|Mux6~0_combout\))) # (\b_sel[1]~input_o\ & (\rf|b1|Mux6~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|b1|ALT_INV_Mux6~2_combout\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|b1|ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_b_sel[0]~input_o\,
	datae => \rf|b1|ALT_INV_Mux6~1_combout\,
	dataf => \rf|b1|ALT_INV_Mux6~3_combout\,
	combout => \rf|b1|Mux6~4_combout\);

-- Location: MLABCELL_X19_Y4_N3
\m2|res[10]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[10]~43_combout\ = ( \rf|b1|Mux6~4_combout\ & ( (!\const_sel~input_o\) # (\const_in[9]~input_o\) ) ) # ( !\rf|b1|Mux6~4_combout\ & ( (\const_in[9]~input_o\ & \const_sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[9]~input_o\,
	datac => \ALT_INV_const_sel~input_o\,
	dataf => \rf|b1|ALT_INV_Mux6~4_combout\,
	combout => \m2|res[10]~43_combout\);

-- Location: LABCELL_X21_Y3_N24
\m2|res[8]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[8]~41_combout\ = ( \rf|a1|Mux7~4_combout\ & ( \rf|b1|Mux7~4_combout\ & ( !\op_sel[1]~input_o\ $ (((\const_sel~input_o\ & (!\op_sel[0]~input_o\ & !\const_in[8]~input_o\)))) ) ) ) # ( !\rf|a1|Mux7~4_combout\ & ( \rf|b1|Mux7~4_combout\ & ( 
-- (!\op_sel[1]~input_o\ & (\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (\const_in[8]~input_o\)))) # (\op_sel[1]~input_o\ & ((!\const_sel~input_o\) # ((\const_in[8]~input_o\) # (\op_sel[0]~input_o\)))) ) ) ) # ( \rf|a1|Mux7~4_combout\ & ( 
-- !\rf|b1|Mux7~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (!\const_in[8]~input_o\))))) ) ) ) # ( !\rf|a1|Mux7~4_combout\ & ( !\rf|b1|Mux7~4_combout\ & ( (!\op_sel[1]~input_o\ & (\const_sel~input_o\ & 
-- (\op_sel[0]~input_o\ & \const_in[8]~input_o\))) # (\op_sel[1]~input_o\ & (((\const_sel~input_o\ & \const_in[8]~input_o\)) # (\op_sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111001111000110110000101011001111111001110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_sel~input_o\,
	datab => \ALT_INV_op_sel[1]~input_o\,
	datac => \ALT_INV_op_sel[0]~input_o\,
	datad => \ALT_INV_const_in[8]~input_o\,
	datae => \rf|a1|ALT_INV_Mux7~4_combout\,
	dataf => \rf|b1|ALT_INV_Mux7~4_combout\,
	combout => \m2|res[8]~41_combout\);

-- Location: LABCELL_X22_Y3_N42
\al_shift|al|au|f5|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f5|c~0_combout\ = ( \rf|a1|Mux10~4_combout\ & ( \al_shift|al|au|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \rf|a1|ALT_INV_Mux10~4_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~21_sumout\,
	combout => \al_shift|al|au|f5|c~0_combout\);

-- Location: MLABCELL_X19_Y3_N42
\al_shift|al|au|f5|c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f5|c~1_combout\ = ( !\al_shift|al|au|Add0~21_sumout\ & ( !\rf|a1|Mux10~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rf|a1|ALT_INV_Mux10~4_combout\,
	dataf => \al_shift|al|au|ALT_INV_Add0~21_sumout\,
	combout => \al_shift|al|au|f5|c~1_combout\);

-- Location: MLABCELL_X19_Y3_N9
\al_shift|al|au|f5|c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f5|c~2_combout\ = ( \al_shift|al|au|f2|c~0_combout\ & ( !\al_shift|al|au|f5|c~1_combout\ & ( (!\rf|a1|Mux11~4_combout\ & (\al_shift|al|au|Add0~17_sumout\ & ((\al_shift|al|au|Add0~13_sumout\) # (\rf|a1|Mux12~4_combout\)))) # 
-- (\rf|a1|Mux11~4_combout\ & (((\al_shift|al|au|Add0~17_sumout\) # (\al_shift|al|au|Add0~13_sumout\)) # (\rf|a1|Mux12~4_combout\))) ) ) ) # ( !\al_shift|al|au|f2|c~0_combout\ & ( !\al_shift|al|au|f5|c~1_combout\ & ( (!\rf|a1|Mux11~4_combout\ & 
-- (\rf|a1|Mux12~4_combout\ & (\al_shift|al|au|Add0~13_sumout\ & \al_shift|al|au|Add0~17_sumout\))) # (\rf|a1|Mux11~4_combout\ & (((\rf|a1|Mux12~4_combout\ & \al_shift|al|au|Add0~13_sumout\)) # (\al_shift|al|au|Add0~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000101010111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux11~4_combout\,
	datab => \rf|a1|ALT_INV_Mux12~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~13_sumout\,
	datad => \al_shift|al|au|ALT_INV_Add0~17_sumout\,
	datae => \al_shift|al|au|f2|ALT_INV_c~0_combout\,
	dataf => \al_shift|al|au|f5|ALT_INV_c~1_combout\,
	combout => \al_shift|al|au|f5|c~2_combout\);

-- Location: LABCELL_X22_Y3_N33
\al_shift|al|au|f7|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|au|f7|c~0_combout\ = ( \al_shift|al|au|Add0~29_sumout\ & ( \al_shift|al|au|f5|c~2_combout\ & ( (!\rf|a1|Mux8~4_combout\ & (!\rf|a1|Mux9~4_combout\ & !\al_shift|al|au|Add0~25_sumout\)) ) ) ) # ( !\al_shift|al|au|Add0~29_sumout\ & ( 
-- \al_shift|al|au|f5|c~2_combout\ & ( (!\rf|a1|Mux8~4_combout\) # ((!\rf|a1|Mux9~4_combout\ & !\al_shift|al|au|Add0~25_sumout\)) ) ) ) # ( \al_shift|al|au|Add0~29_sumout\ & ( !\al_shift|al|au|f5|c~2_combout\ & ( (!\rf|a1|Mux8~4_combout\ & 
-- ((!\rf|a1|Mux9~4_combout\ & ((!\al_shift|al|au|f5|c~0_combout\) # (!\al_shift|al|au|Add0~25_sumout\))) # (\rf|a1|Mux9~4_combout\ & (!\al_shift|al|au|f5|c~0_combout\ & !\al_shift|al|au|Add0~25_sumout\)))) ) ) ) # ( !\al_shift|al|au|Add0~29_sumout\ & ( 
-- !\al_shift|al|au|f5|c~2_combout\ & ( (!\rf|a1|Mux8~4_combout\) # ((!\rf|a1|Mux9~4_combout\ & ((!\al_shift|al|au|f5|c~0_combout\) # (!\al_shift|al|au|Add0~25_sumout\))) # (\rf|a1|Mux9~4_combout\ & (!\al_shift|al|au|f5|c~0_combout\ & 
-- !\al_shift|al|au|Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010101010001000000011101110101010101000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux8~4_combout\,
	datab => \rf|a1|ALT_INV_Mux9~4_combout\,
	datac => \al_shift|al|au|f5|ALT_INV_c~0_combout\,
	datad => \al_shift|al|au|ALT_INV_Add0~25_sumout\,
	datae => \al_shift|al|au|ALT_INV_Add0~29_sumout\,
	dataf => \al_shift|al|au|f5|ALT_INV_c~2_combout\,
	combout => \al_shift|al|au|f7|c~0_combout\);

-- Location: LABCELL_X21_Y3_N42
\m2|res[8]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[8]~42_combout\ = ( \al_shift|al|au|Add0~33_sumout\ & ( \al_shift|al|au|f7|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (!\rf|a1|Mux7~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[8]~41_combout\))))) ) ) ) # ( 
-- !\al_shift|al|au|Add0~33_sumout\ & ( \al_shift|al|au|f7|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (\rf|a1|Mux7~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[8]~41_combout\))))) ) ) ) # ( \al_shift|al|au|Add0~33_sumout\ & ( 
-- !\al_shift|al|au|f7|c~0_combout\ & ( (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (\rf|a1|Mux7~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[8]~41_combout\))))) ) ) ) # ( !\al_shift|al|au|Add0~33_sumout\ & ( !\al_shift|al|au|f7|c~0_combout\ & ( 
-- (!\op_sel[3]~input_o\ & ((!\m2|res[1]~7_combout\ & (!\rf|a1|Mux7~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[8]~41_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001100010000000100110001000000010011001000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux7~4_combout\,
	datab => \ALT_INV_op_sel[3]~input_o\,
	datac => \m2|ALT_INV_res[1]~7_combout\,
	datad => \m2|ALT_INV_res[8]~41_combout\,
	datae => \al_shift|al|au|ALT_INV_Add0~33_sumout\,
	dataf => \al_shift|al|au|f7|ALT_INV_c~0_combout\,
	combout => \m2|res[8]~42_combout\);

-- Location: LABCELL_X21_Y3_N30
\m2|res[8]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[8]~80_combout\ = ( !\op_sel[0]~input_o\ & ( (!\data_sel~input_o\ & (((!\op_sel[3]~input_o\ & ((\m2|res[8]~42_combout\))) # (\op_sel[3]~input_o\ & (\m2|res[8]~33_combout\))))) # (\data_sel~input_o\ & (\data_in[8]~input_o\)) ) ) # ( 
-- \op_sel[0]~input_o\ & ( (!\data_sel~input_o\ & ((((\m2|res[10]~43_combout\ & \op_sel[3]~input_o\)) # (\m2|res[8]~42_combout\)))) # (\data_sel~input_o\ & (\data_in[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100011011000100010001101110111011000110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_sel~input_o\,
	datab => \ALT_INV_data_in[8]~input_o\,
	datac => \m2|ALT_INV_res[10]~43_combout\,
	datad => \ALT_INV_op_sel[3]~input_o\,
	datae => \ALT_INV_op_sel[0]~input_o\,
	dataf => \m2|ALT_INV_res[8]~42_combout\,
	datag => \m2|ALT_INV_res[8]~33_combout\,
	combout => \m2|res[8]~80_combout\);

-- Location: FF_X17_Y2_N14
\rf|reg4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[8]~80_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(8));

-- Location: LABCELL_X17_Y2_N36
\rf|b1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux7~1_combout\ = ( \rf|reg6|q\(8) & ( \rf|reg7|q\(8) & ( ((!\b_sel[0]~input_o\ & (\rf|reg4|q\(8))) # (\b_sel[0]~input_o\ & ((\rf|reg5|q\(8))))) # (\b_sel[1]~input_o\) ) ) ) # ( !\rf|reg6|q\(8) & ( \rf|reg7|q\(8) & ( (!\b_sel[1]~input_o\ & 
-- ((!\b_sel[0]~input_o\ & (\rf|reg4|q\(8))) # (\b_sel[0]~input_o\ & ((\rf|reg5|q\(8)))))) # (\b_sel[1]~input_o\ & (((\b_sel[0]~input_o\)))) ) ) ) # ( \rf|reg6|q\(8) & ( !\rf|reg7|q\(8) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & (\rf|reg4|q\(8))) # 
-- (\b_sel[0]~input_o\ & ((\rf|reg5|q\(8)))))) # (\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\)))) ) ) ) # ( !\rf|reg6|q\(8) & ( !\rf|reg7|q\(8) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & (\rf|reg4|q\(8))) # (\b_sel[0]~input_o\ & ((\rf|reg5|q\(8)))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[1]~input_o\,
	datab => \rf|reg4|ALT_INV_q\(8),
	datac => \rf|reg5|ALT_INV_q\(8),
	datad => \ALT_INV_b_sel[0]~input_o\,
	datae => \rf|reg6|ALT_INV_q\(8),
	dataf => \rf|reg7|ALT_INV_q\(8),
	combout => \rf|b1|Mux7~1_combout\);

-- Location: LABCELL_X21_Y1_N48
\rf|b1|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux7~2_combout\ = ( \b_sel[1]~input_o\ & ( \b_sel[0]~input_o\ & ( \rf|reg11|q\(8) ) ) ) # ( !\b_sel[1]~input_o\ & ( \b_sel[0]~input_o\ & ( \rf|reg9|q\(8) ) ) ) # ( \b_sel[1]~input_o\ & ( !\b_sel[0]~input_o\ & ( \rf|reg10|q\(8) ) ) ) # ( 
-- !\b_sel[1]~input_o\ & ( !\b_sel[0]~input_o\ & ( \rf|reg8|q\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg11|ALT_INV_q\(8),
	datab => \rf|reg9|ALT_INV_q\(8),
	datac => \rf|reg10|ALT_INV_q\(8),
	datad => \rf|reg8|ALT_INV_q\(8),
	datae => \ALT_INV_b_sel[1]~input_o\,
	dataf => \ALT_INV_b_sel[0]~input_o\,
	combout => \rf|b1|Mux7~2_combout\);

-- Location: LABCELL_X18_Y4_N3
\rf|b1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux7~0_combout\ = ( \rf|reg2|q\(8) & ( \rf|reg3|q\(8) & ( ((!\b_sel[0]~input_o\ & ((\rf|reg0|q\(8)))) # (\b_sel[0]~input_o\ & (\rf|reg1|q\(8)))) # (\b_sel[1]~input_o\) ) ) ) # ( !\rf|reg2|q\(8) & ( \rf|reg3|q\(8) & ( (!\b_sel[0]~input_o\ & 
-- (!\b_sel[1]~input_o\ & ((\rf|reg0|q\(8))))) # (\b_sel[0]~input_o\ & (((\rf|reg1|q\(8))) # (\b_sel[1]~input_o\))) ) ) ) # ( \rf|reg2|q\(8) & ( !\rf|reg3|q\(8) & ( (!\b_sel[0]~input_o\ & (((\rf|reg0|q\(8))) # (\b_sel[1]~input_o\))) # (\b_sel[0]~input_o\ & 
-- (!\b_sel[1]~input_o\ & (\rf|reg1|q\(8)))) ) ) ) # ( !\rf|reg2|q\(8) & ( !\rf|reg3|q\(8) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & ((\rf|reg0|q\(8)))) # (\b_sel[0]~input_o\ & (\rf|reg1|q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg1|ALT_INV_q\(8),
	datad => \rf|reg0|ALT_INV_q\(8),
	datae => \rf|reg2|ALT_INV_q\(8),
	dataf => \rf|reg3|ALT_INV_q\(8),
	combout => \rf|b1|Mux7~0_combout\);

-- Location: LABCELL_X21_Y3_N57
\rf|b1|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux7~3_combout\ = ( \rf|reg12|q\(8) & ( \rf|reg13|q\(8) & ( (!\b_sel[1]~input_o\) # ((!\b_sel[0]~input_o\ & ((\rf|reg14|q\(8)))) # (\b_sel[0]~input_o\ & (\rf|reg15|q\(8)))) ) ) ) # ( !\rf|reg12|q\(8) & ( \rf|reg13|q\(8) & ( (!\b_sel[1]~input_o\ & 
-- (((\b_sel[0]~input_o\)))) # (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & ((\rf|reg14|q\(8)))) # (\b_sel[0]~input_o\ & (\rf|reg15|q\(8))))) ) ) ) # ( \rf|reg12|q\(8) & ( !\rf|reg13|q\(8) & ( (!\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\)))) # 
-- (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & ((\rf|reg14|q\(8)))) # (\b_sel[0]~input_o\ & (\rf|reg15|q\(8))))) ) ) ) # ( !\rf|reg12|q\(8) & ( !\rf|reg13|q\(8) & ( (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\ & ((\rf|reg14|q\(8)))) # (\b_sel[0]~input_o\ & 
-- (\rf|reg15|q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg15|ALT_INV_q\(8),
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \ALT_INV_b_sel[0]~input_o\,
	datad => \rf|reg14|ALT_INV_q\(8),
	datae => \rf|reg12|ALT_INV_q\(8),
	dataf => \rf|reg13|ALT_INV_q\(8),
	combout => \rf|b1|Mux7~3_combout\);

-- Location: LABCELL_X17_Y2_N27
\rf|b1|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux7~4_combout\ = ( \rf|b1|Mux7~0_combout\ & ( \rf|b1|Mux7~3_combout\ & ( (!\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\) # (\rf|b1|Mux7~2_combout\)))) # (\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\)) # (\rf|b1|Mux7~1_combout\))) ) ) ) # ( 
-- !\rf|b1|Mux7~0_combout\ & ( \rf|b1|Mux7~3_combout\ & ( (!\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\ & \rf|b1|Mux7~2_combout\)))) # (\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\)) # (\rf|b1|Mux7~1_combout\))) ) ) ) # ( \rf|b1|Mux7~0_combout\ & ( 
-- !\rf|b1|Mux7~3_combout\ & ( (!\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\) # (\rf|b1|Mux7~2_combout\)))) # (\b_sel[2]~input_o\ & (\rf|b1|Mux7~1_combout\ & (!\b_sel[3]~input_o\))) ) ) ) # ( !\rf|b1|Mux7~0_combout\ & ( !\rf|b1|Mux7~3_combout\ & ( 
-- (!\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\ & \rf|b1|Mux7~2_combout\)))) # (\b_sel[2]~input_o\ & (\rf|b1|Mux7~1_combout\ & (!\b_sel[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|b1|ALT_INV_Mux7~1_combout\,
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|b1|ALT_INV_Mux7~2_combout\,
	datae => \rf|b1|ALT_INV_Mux7~0_combout\,
	dataf => \rf|b1|ALT_INV_Mux7~3_combout\,
	combout => \rf|b1|Mux7~4_combout\);

-- Location: MLABCELL_X19_Y1_N21
\m2|res[9]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[9]~38_combout\ = ( \const_sel~input_o\ & ( \rf|b1|Mux7~4_combout\ & ( \const_in[8]~input_o\ ) ) ) # ( !\const_sel~input_o\ & ( \rf|b1|Mux7~4_combout\ ) ) # ( \const_sel~input_o\ & ( !\rf|b1|Mux7~4_combout\ & ( \const_in[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_const_in[8]~input_o\,
	datae => \ALT_INV_const_sel~input_o\,
	dataf => \rf|b1|ALT_INV_Mux7~4_combout\,
	combout => \m2|res[9]~38_combout\);

-- Location: LABCELL_X23_Y3_N36
\m2|res[7]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[7]~36_combout\ = ( \rf|a1|Mux8~4_combout\ & ( \rf|b1|Mux8~4_combout\ & ( !\op_sel[1]~input_o\ $ (((\const_sel~input_o\ & (!\const_in[7]~input_o\ & !\op_sel[0]~input_o\)))) ) ) ) # ( !\rf|a1|Mux8~4_combout\ & ( \rf|b1|Mux8~4_combout\ & ( 
-- (!\op_sel[0]~input_o\ & (\op_sel[1]~input_o\ & ((!\const_sel~input_o\) # (\const_in[7]~input_o\)))) # (\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # ((\op_sel[1]~input_o\) # (\const_in[7]~input_o\)))) ) ) ) # ( \rf|a1|Mux8~4_combout\ & ( 
-- !\rf|b1|Mux8~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (!\const_in[7]~input_o\))))) ) ) ) # ( !\rf|a1|Mux8~4_combout\ & ( !\rf|b1|Mux8~4_combout\ & ( (!\op_sel[0]~input_o\ & (\const_sel~input_o\ & 
-- (\const_in[7]~input_o\ & \op_sel[1]~input_o\))) # (\op_sel[0]~input_o\ & (((\const_sel~input_o\ & \const_in[7]~input_o\)) # (\op_sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000111111110000000001011101111111011111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_sel~input_o\,
	datab => \ALT_INV_const_in[7]~input_o\,
	datac => \ALT_INV_op_sel[0]~input_o\,
	datad => \ALT_INV_op_sel[1]~input_o\,
	datae => \rf|a1|ALT_INV_Mux8~4_combout\,
	dataf => \rf|b1|ALT_INV_Mux8~4_combout\,
	combout => \m2|res[7]~36_combout\);

-- Location: LABCELL_X23_Y3_N18
\m2|res[7]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[7]~37_combout\ = ( \al_shift|al|au|f5|c~0_combout\ & ( \al_shift|al|au|f5|c~2_combout\ & ( !\rf|a1|Mux8~4_combout\ $ (!\al_shift|al|au|Add0~29_sumout\ $ (((\al_shift|al|au|Add0~25_sumout\) # (\rf|a1|Mux9~4_combout\)))) ) ) ) # ( 
-- !\al_shift|al|au|f5|c~0_combout\ & ( \al_shift|al|au|f5|c~2_combout\ & ( !\rf|a1|Mux8~4_combout\ $ (!\al_shift|al|au|Add0~29_sumout\ $ (((\al_shift|al|au|Add0~25_sumout\) # (\rf|a1|Mux9~4_combout\)))) ) ) ) # ( \al_shift|al|au|f5|c~0_combout\ & ( 
-- !\al_shift|al|au|f5|c~2_combout\ & ( !\rf|a1|Mux8~4_combout\ $ (!\al_shift|al|au|Add0~29_sumout\ $ (((\al_shift|al|au|Add0~25_sumout\) # (\rf|a1|Mux9~4_combout\)))) ) ) ) # ( !\al_shift|al|au|f5|c~0_combout\ & ( !\al_shift|al|au|f5|c~2_combout\ & ( 
-- !\rf|a1|Mux8~4_combout\ $ (!\al_shift|al|au|Add0~29_sumout\ $ (((\rf|a1|Mux9~4_combout\ & \al_shift|al|au|Add0~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001011010011010010101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux8~4_combout\,
	datab => \rf|a1|ALT_INV_Mux9~4_combout\,
	datac => \al_shift|al|au|ALT_INV_Add0~29_sumout\,
	datad => \al_shift|al|au|ALT_INV_Add0~25_sumout\,
	datae => \al_shift|al|au|f5|ALT_INV_c~0_combout\,
	dataf => \al_shift|al|au|f5|ALT_INV_c~2_combout\,
	combout => \m2|res[7]~37_combout\);

-- Location: LABCELL_X23_Y3_N24
\m2|res[7]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[7]~39_combout\ = ( \m2|res[7]~36_combout\ & ( \m2|res[7]~37_combout\ & ( (!\op_sel[3]~input_o\) # ((\op_sel[0]~input_o\ & \m2|res[9]~38_combout\)) ) ) ) # ( !\m2|res[7]~36_combout\ & ( \m2|res[7]~37_combout\ & ( (!\op_sel[3]~input_o\ & 
-- (!\op_sel[2]~input_o\)) # (\op_sel[3]~input_o\ & (((\op_sel[0]~input_o\ & \m2|res[9]~38_combout\)))) ) ) ) # ( \m2|res[7]~36_combout\ & ( !\m2|res[7]~37_combout\ & ( (!\op_sel[3]~input_o\ & (\op_sel[2]~input_o\)) # (\op_sel[3]~input_o\ & 
-- (((\op_sel[0]~input_o\ & \m2|res[9]~38_combout\)))) ) ) ) # ( !\m2|res[7]~36_combout\ & ( !\m2|res[7]~37_combout\ & ( (\op_sel[0]~input_o\ & (\op_sel[3]~input_o\ & \m2|res[9]~38_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010100000101001110100000101000111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[2]~input_o\,
	datab => \ALT_INV_op_sel[0]~input_o\,
	datac => \ALT_INV_op_sel[3]~input_o\,
	datad => \m2|ALT_INV_res[9]~38_combout\,
	datae => \m2|ALT_INV_res[7]~36_combout\,
	dataf => \m2|ALT_INV_res[7]~37_combout\,
	combout => \m2|res[7]~39_combout\);

-- Location: LABCELL_X23_Y3_N3
\m2|res[7]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[7]~40_combout\ = ( \m2|res[7]~39_combout\ & ( (!\data_sel~input_o\) # (\data_in[7]~input_o\) ) ) # ( !\m2|res[7]~39_combout\ & ( (!\data_sel~input_o\ & (\m2|res[7]~27_combout\ & ((\m2|res[1]~10_combout\)))) # (\data_sel~input_o\ & 
-- (((\data_in[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_res[7]~27_combout\,
	datab => \ALT_INV_data_sel~input_o\,
	datac => \ALT_INV_data_in[7]~input_o\,
	datad => \m2|ALT_INV_res[1]~10_combout\,
	dataf => \m2|ALT_INV_res[7]~39_combout\,
	combout => \m2|res[7]~40_combout\);

-- Location: FF_X22_Y2_N26
\rf|reg14|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[7]~40_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg14|q\(7));

-- Location: LABCELL_X22_Y2_N15
\rf|b1|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux8~2_combout\ = ( \rf|reg2|q\(7) & ( \rf|reg10|q\(7) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & ((\rf|reg6|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg14|q\(7)))) ) ) ) # ( !\rf|reg2|q\(7) & ( \rf|reg10|q\(7) & ( (!\b_sel[3]~input_o\ & 
-- (((\b_sel[2]~input_o\ & \rf|reg6|q\(7))))) # (\b_sel[3]~input_o\ & (((!\b_sel[2]~input_o\)) # (\rf|reg14|q\(7)))) ) ) ) # ( \rf|reg2|q\(7) & ( !\rf|reg10|q\(7) & ( (!\b_sel[3]~input_o\ & (((!\b_sel[2]~input_o\) # (\rf|reg6|q\(7))))) # (\b_sel[3]~input_o\ 
-- & (\rf|reg14|q\(7) & (\b_sel[2]~input_o\))) ) ) ) # ( !\rf|reg2|q\(7) & ( !\rf|reg10|q\(7) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg6|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg14|q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg14|ALT_INV_q\(7),
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \ALT_INV_b_sel[2]~input_o\,
	datad => \rf|reg6|ALT_INV_q\(7),
	datae => \rf|reg2|ALT_INV_q\(7),
	dataf => \rf|reg10|ALT_INV_q\(7),
	combout => \rf|b1|Mux8~2_combout\);

-- Location: LABCELL_X23_Y2_N9
\rf|b1|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux8~1_combout\ = ( \rf|reg5|q\(7) & ( \rf|reg13|q\(7) & ( ((!\b_sel[3]~input_o\ & ((\rf|reg1|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg9|q\(7)))) # (\b_sel[2]~input_o\) ) ) ) # ( !\rf|reg5|q\(7) & ( \rf|reg13|q\(7) & ( (!\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & ((\rf|reg1|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg9|q\(7))))) # (\b_sel[2]~input_o\ & (\b_sel[3]~input_o\)) ) ) ) # ( \rf|reg5|q\(7) & ( !\rf|reg13|q\(7) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg1|q\(7)))) # 
-- (\b_sel[3]~input_o\ & (\rf|reg9|q\(7))))) # (\b_sel[2]~input_o\ & (!\b_sel[3]~input_o\)) ) ) ) # ( !\rf|reg5|q\(7) & ( !\rf|reg13|q\(7) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg1|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg9|q\(7))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg9|ALT_INV_q\(7),
	datad => \rf|reg1|ALT_INV_q\(7),
	datae => \rf|reg5|ALT_INV_q\(7),
	dataf => \rf|reg13|ALT_INV_q\(7),
	combout => \rf|b1|Mux8~1_combout\);

-- Location: LABCELL_X23_Y4_N42
\rf|b1|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux8~3_combout\ = ( \rf|reg15|q\(7) & ( \rf|reg7|q\(7) & ( ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(7)))) # (\b_sel[2]~input_o\) ) ) ) # ( !\rf|reg15|q\(7) & ( \rf|reg7|q\(7) & ( (!\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(7))))) # (\b_sel[2]~input_o\ & (!\b_sel[3]~input_o\)) ) ) ) # ( \rf|reg15|q\(7) & ( !\rf|reg7|q\(7) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(7)))) # 
-- (\b_sel[3]~input_o\ & (\rf|reg11|q\(7))))) # (\b_sel[2]~input_o\ & (\b_sel[3]~input_o\)) ) ) ) # ( !\rf|reg15|q\(7) & ( !\rf|reg7|q\(7) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(7))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg11|ALT_INV_q\(7),
	datad => \rf|reg3|ALT_INV_q\(7),
	datae => \rf|reg15|ALT_INV_q\(7),
	dataf => \rf|reg7|ALT_INV_q\(7),
	combout => \rf|b1|Mux8~3_combout\);

-- Location: LABCELL_X23_Y2_N45
\rf|b1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux8~0_combout\ = ( \rf|reg0|q\(7) & ( \rf|reg8|q\(7) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & ((\rf|reg4|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg12|q\(7)))) ) ) ) # ( !\rf|reg0|q\(7) & ( \rf|reg8|q\(7) & ( (!\b_sel[2]~input_o\ & 
-- (\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg4|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg12|q\(7))))) ) ) ) # ( \rf|reg0|q\(7) & ( !\rf|reg8|q\(7) & ( (!\b_sel[2]~input_o\ & (!\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & ((\rf|reg4|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg12|q\(7))))) ) ) ) # ( !\rf|reg0|q\(7) & ( !\rf|reg8|q\(7) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg4|q\(7)))) # (\b_sel[3]~input_o\ & (\rf|reg12|q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg12|ALT_INV_q\(7),
	datad => \rf|reg4|ALT_INV_q\(7),
	datae => \rf|reg0|ALT_INV_q\(7),
	dataf => \rf|reg8|ALT_INV_q\(7),
	combout => \rf|b1|Mux8~0_combout\);

-- Location: LABCELL_X22_Y2_N21
\rf|b1|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux8~4_combout\ = ( \rf|b1|Mux8~3_combout\ & ( \rf|b1|Mux8~0_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|b1|Mux8~2_combout\)))) # (\b_sel[0]~input_o\ & (((\rf|b1|Mux8~1_combout\)) # (\b_sel[1]~input_o\))) ) ) ) # ( 
-- !\rf|b1|Mux8~3_combout\ & ( \rf|b1|Mux8~0_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|b1|Mux8~2_combout\)))) # (\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & ((\rf|b1|Mux8~1_combout\)))) ) ) ) # ( \rf|b1|Mux8~3_combout\ & ( 
-- !\rf|b1|Mux8~0_combout\ & ( (!\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & (\rf|b1|Mux8~2_combout\))) # (\b_sel[0]~input_o\ & (((\rf|b1|Mux8~1_combout\)) # (\b_sel[1]~input_o\))) ) ) ) # ( !\rf|b1|Mux8~3_combout\ & ( !\rf|b1|Mux8~0_combout\ & ( 
-- (!\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & (\rf|b1|Mux8~2_combout\))) # (\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & ((\rf|b1|Mux8~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|b1|ALT_INV_Mux8~2_combout\,
	datad => \rf|b1|ALT_INV_Mux8~1_combout\,
	datae => \rf|b1|ALT_INV_Mux8~3_combout\,
	dataf => \rf|b1|ALT_INV_Mux8~0_combout\,
	combout => \rf|b1|Mux8~4_combout\);

-- Location: LABCELL_X23_Y3_N45
\m2|res[8]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[8]~33_combout\ = ( \rf|b1|Mux8~4_combout\ & ( (!\const_sel~input_o\) # (\const_in[7]~input_o\) ) ) # ( !\rf|b1|Mux8~4_combout\ & ( (\const_in[7]~input_o\ & \const_sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_const_in[7]~input_o\,
	datad => \ALT_INV_const_sel~input_o\,
	dataf => \rf|b1|ALT_INV_Mux8~4_combout\,
	combout => \m2|res[8]~33_combout\);

-- Location: LABCELL_X21_Y3_N12
\m2|res[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[6]~31_combout\ = ( \const_in[6]~input_o\ & ( \rf|a1|Mux9~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & (!\const_sel~input_o\ & !\rf|b1|Mux9~4_combout\)))) ) ) ) # ( !\const_in[6]~input_o\ & ( \rf|a1|Mux9~4_combout\ & ( 
-- !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & ((!\rf|b1|Mux9~4_combout\) # (\const_sel~input_o\))))) ) ) ) # ( \const_in[6]~input_o\ & ( !\rf|a1|Mux9~4_combout\ & ( (!\op_sel[0]~input_o\ & (\op_sel[1]~input_o\ & ((\rf|b1|Mux9~4_combout\) # 
-- (\const_sel~input_o\)))) # (\op_sel[0]~input_o\ & (((\rf|b1|Mux9~4_combout\) # (\const_sel~input_o\)) # (\op_sel[1]~input_o\))) ) ) ) # ( !\const_in[6]~input_o\ & ( !\rf|a1|Mux9~4_combout\ & ( (!\op_sel[0]~input_o\ & (\op_sel[1]~input_o\ & 
-- (!\const_sel~input_o\ & \rf|b1|Mux9~4_combout\))) # (\op_sel[0]~input_o\ & (((!\const_sel~input_o\ & \rf|b1|Mux9~4_combout\)) # (\op_sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110001000101110111011101100110110001100110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datab => \ALT_INV_op_sel[1]~input_o\,
	datac => \ALT_INV_const_sel~input_o\,
	datad => \rf|b1|ALT_INV_Mux9~4_combout\,
	datae => \ALT_INV_const_in[6]~input_o\,
	dataf => \rf|a1|ALT_INV_Mux9~4_combout\,
	combout => \m2|res[6]~31_combout\);

-- Location: MLABCELL_X19_Y3_N45
\m2|res[6]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[6]~32_combout\ = ( \al_shift|al|au|f5|c~0_combout\ & ( !\rf|a1|Mux9~4_combout\ $ (\al_shift|al|au|Add0~25_sumout\) ) ) # ( !\al_shift|al|au|f5|c~0_combout\ & ( !\rf|a1|Mux9~4_combout\ $ (!\al_shift|al|au|f5|c~2_combout\ $ 
-- (\al_shift|al|au|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rf|a1|ALT_INV_Mux9~4_combout\,
	datac => \al_shift|al|au|f5|ALT_INV_c~2_combout\,
	datad => \al_shift|al|au|ALT_INV_Add0~25_sumout\,
	dataf => \al_shift|al|au|f5|ALT_INV_c~0_combout\,
	combout => \m2|res[6]~32_combout\);

-- Location: LABCELL_X21_Y3_N6
\m2|res[6]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[6]~34_combout\ = ( \m2|res[6]~31_combout\ & ( \m2|res[6]~32_combout\ & ( (!\op_sel[3]~input_o\) # ((\op_sel[0]~input_o\ & \m2|res[8]~33_combout\)) ) ) ) # ( !\m2|res[6]~31_combout\ & ( \m2|res[6]~32_combout\ & ( (!\op_sel[3]~input_o\ & 
-- (!\op_sel[2]~input_o\)) # (\op_sel[3]~input_o\ & (((\op_sel[0]~input_o\ & \m2|res[8]~33_combout\)))) ) ) ) # ( \m2|res[6]~31_combout\ & ( !\m2|res[6]~32_combout\ & ( (!\op_sel[3]~input_o\ & (\op_sel[2]~input_o\)) # (\op_sel[3]~input_o\ & 
-- (((\op_sel[0]~input_o\ & \m2|res[8]~33_combout\)))) ) ) ) # ( !\m2|res[6]~31_combout\ & ( !\m2|res[6]~32_combout\ & ( (\op_sel[0]~input_o\ & (\op_sel[3]~input_o\ & \m2|res[8]~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010100000101001110100000101000111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[2]~input_o\,
	datab => \ALT_INV_op_sel[0]~input_o\,
	datac => \ALT_INV_op_sel[3]~input_o\,
	datad => \m2|ALT_INV_res[8]~33_combout\,
	datae => \m2|ALT_INV_res[6]~31_combout\,
	dataf => \m2|ALT_INV_res[6]~32_combout\,
	combout => \m2|res[6]~34_combout\);

-- Location: LABCELL_X21_Y3_N39
\m2|res[6]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[6]~35_combout\ = ( \m2|res[6]~30_combout\ & ( \m2|res[6]~34_combout\ & ( (!\data_sel~input_o\) # (\data_in[6]~input_o\) ) ) ) # ( !\m2|res[6]~30_combout\ & ( \m2|res[6]~34_combout\ & ( (!\data_sel~input_o\) # (\data_in[6]~input_o\) ) ) ) # ( 
-- \m2|res[6]~30_combout\ & ( !\m2|res[6]~34_combout\ & ( (!\data_sel~input_o\) # (\data_in[6]~input_o\) ) ) ) # ( !\m2|res[6]~30_combout\ & ( !\m2|res[6]~34_combout\ & ( (\data_in[6]~input_o\ & \data_sel~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[6]~input_o\,
	datac => \ALT_INV_data_sel~input_o\,
	datae => \m2|ALT_INV_res[6]~30_combout\,
	dataf => \m2|ALT_INV_res[6]~34_combout\,
	combout => \m2|res[6]~35_combout\);

-- Location: LABCELL_X17_Y2_N45
\rf|reg6|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg6|q[6]~feeder_combout\ = ( \m2|res[6]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[6]~35_combout\,
	combout => \rf|reg6|q[6]~feeder_combout\);

-- Location: FF_X17_Y2_N47
\rf|reg6|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg6|q[6]~feeder_combout\,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(6));

-- Location: LABCELL_X17_Y2_N3
\rf|b1|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux9~1_combout\ = ( \rf|reg5|q\(6) & ( \rf|reg7|q\(6) & ( ((!\b_sel[1]~input_o\ & ((\rf|reg4|q\(6)))) # (\b_sel[1]~input_o\ & (\rf|reg6|q\(6)))) # (\b_sel[0]~input_o\) ) ) ) # ( !\rf|reg5|q\(6) & ( \rf|reg7|q\(6) & ( (!\b_sel[1]~input_o\ & 
-- (!\b_sel[0]~input_o\ & ((\rf|reg4|q\(6))))) # (\b_sel[1]~input_o\ & (((\rf|reg6|q\(6))) # (\b_sel[0]~input_o\))) ) ) ) # ( \rf|reg5|q\(6) & ( !\rf|reg7|q\(6) & ( (!\b_sel[1]~input_o\ & (((\rf|reg4|q\(6))) # (\b_sel[0]~input_o\))) # (\b_sel[1]~input_o\ & 
-- (!\b_sel[0]~input_o\ & (\rf|reg6|q\(6)))) ) ) ) # ( !\rf|reg5|q\(6) & ( !\rf|reg7|q\(6) & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|reg4|q\(6)))) # (\b_sel[1]~input_o\ & (\rf|reg6|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[1]~input_o\,
	datab => \ALT_INV_b_sel[0]~input_o\,
	datac => \rf|reg6|ALT_INV_q\(6),
	datad => \rf|reg4|ALT_INV_q\(6),
	datae => \rf|reg5|ALT_INV_q\(6),
	dataf => \rf|reg7|ALT_INV_q\(6),
	combout => \rf|b1|Mux9~1_combout\);

-- Location: LABCELL_X17_Y3_N51
\rf|b1|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux9~2_combout\ = ( \rf|reg8|q\(6) & ( \rf|reg10|q\(6) & ( (!\b_sel[0]~input_o\) # ((!\b_sel[1]~input_o\ & ((\rf|reg9|q\(6)))) # (\b_sel[1]~input_o\ & (\rf|reg11|q\(6)))) ) ) ) # ( !\rf|reg8|q\(6) & ( \rf|reg10|q\(6) & ( (!\b_sel[0]~input_o\ & 
-- (\b_sel[1]~input_o\)) # (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|reg9|q\(6)))) # (\b_sel[1]~input_o\ & (\rf|reg11|q\(6))))) ) ) ) # ( \rf|reg8|q\(6) & ( !\rf|reg10|q\(6) & ( (!\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\)) # (\b_sel[0]~input_o\ & 
-- ((!\b_sel[1]~input_o\ & ((\rf|reg9|q\(6)))) # (\b_sel[1]~input_o\ & (\rf|reg11|q\(6))))) ) ) ) # ( !\rf|reg8|q\(6) & ( !\rf|reg10|q\(6) & ( (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & ((\rf|reg9|q\(6)))) # (\b_sel[1]~input_o\ & (\rf|reg11|q\(6))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg11|ALT_INV_q\(6),
	datad => \rf|reg9|ALT_INV_q\(6),
	datae => \rf|reg8|ALT_INV_q\(6),
	dataf => \rf|reg10|ALT_INV_q\(6),
	combout => \rf|b1|Mux9~2_combout\);

-- Location: LABCELL_X18_Y4_N48
\rf|b1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux9~0_combout\ = ( \rf|reg1|q\(6) & ( \rf|reg3|q\(6) & ( ((!\b_sel[1]~input_o\ & (\rf|reg0|q\(6))) # (\b_sel[1]~input_o\ & ((\rf|reg2|q\(6))))) # (\b_sel[0]~input_o\) ) ) ) # ( !\rf|reg1|q\(6) & ( \rf|reg3|q\(6) & ( (!\b_sel[0]~input_o\ & 
-- ((!\b_sel[1]~input_o\ & (\rf|reg0|q\(6))) # (\b_sel[1]~input_o\ & ((\rf|reg2|q\(6)))))) # (\b_sel[0]~input_o\ & (\b_sel[1]~input_o\)) ) ) ) # ( \rf|reg1|q\(6) & ( !\rf|reg3|q\(6) & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|reg0|q\(6))) # 
-- (\b_sel[1]~input_o\ & ((\rf|reg2|q\(6)))))) # (\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\)) ) ) ) # ( !\rf|reg1|q\(6) & ( !\rf|reg3|q\(6) & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|reg0|q\(6))) # (\b_sel[1]~input_o\ & ((\rf|reg2|q\(6)))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg0|ALT_INV_q\(6),
	datad => \rf|reg2|ALT_INV_q\(6),
	datae => \rf|reg1|ALT_INV_q\(6),
	dataf => \rf|reg3|ALT_INV_q\(6),
	combout => \rf|b1|Mux9~0_combout\);

-- Location: LABCELL_X21_Y3_N3
\rf|b1|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux9~3_combout\ = ( \rf|reg14|q\(6) & ( \rf|reg13|q\(6) & ( (!\b_sel[1]~input_o\ & (((\rf|reg12|q\(6))) # (\b_sel[0]~input_o\))) # (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\) # ((\rf|reg15|q\(6))))) ) ) ) # ( !\rf|reg14|q\(6) & ( \rf|reg13|q\(6) & 
-- ( (!\b_sel[1]~input_o\ & (((\rf|reg12|q\(6))) # (\b_sel[0]~input_o\))) # (\b_sel[1]~input_o\ & (\b_sel[0]~input_o\ & ((\rf|reg15|q\(6))))) ) ) ) # ( \rf|reg14|q\(6) & ( !\rf|reg13|q\(6) & ( (!\b_sel[1]~input_o\ & (!\b_sel[0]~input_o\ & (\rf|reg12|q\(6)))) 
-- # (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\) # ((\rf|reg15|q\(6))))) ) ) ) # ( !\rf|reg14|q\(6) & ( !\rf|reg13|q\(6) & ( (!\b_sel[1]~input_o\ & (!\b_sel[0]~input_o\ & (\rf|reg12|q\(6)))) # (\b_sel[1]~input_o\ & (\b_sel[0]~input_o\ & 
-- ((\rf|reg15|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[1]~input_o\,
	datab => \ALT_INV_b_sel[0]~input_o\,
	datac => \rf|reg12|ALT_INV_q\(6),
	datad => \rf|reg15|ALT_INV_q\(6),
	datae => \rf|reg14|ALT_INV_q\(6),
	dataf => \rf|reg13|ALT_INV_q\(6),
	combout => \rf|b1|Mux9~3_combout\);

-- Location: LABCELL_X17_Y2_N12
\rf|b1|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux9~4_combout\ = ( \rf|b1|Mux9~0_combout\ & ( \rf|b1|Mux9~3_combout\ & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|b1|Mux9~1_combout\)))) # (\b_sel[3]~input_o\ & (((\rf|b1|Mux9~2_combout\)) # (\b_sel[2]~input_o\))) ) ) ) # ( 
-- !\rf|b1|Mux9~0_combout\ & ( \rf|b1|Mux9~3_combout\ & ( (!\b_sel[3]~input_o\ & (\b_sel[2]~input_o\ & (\rf|b1|Mux9~1_combout\))) # (\b_sel[3]~input_o\ & (((\rf|b1|Mux9~2_combout\)) # (\b_sel[2]~input_o\))) ) ) ) # ( \rf|b1|Mux9~0_combout\ & ( 
-- !\rf|b1|Mux9~3_combout\ & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|b1|Mux9~1_combout\)))) # (\b_sel[3]~input_o\ & (!\b_sel[2]~input_o\ & ((\rf|b1|Mux9~2_combout\)))) ) ) ) # ( !\rf|b1|Mux9~0_combout\ & ( !\rf|b1|Mux9~3_combout\ & ( 
-- (!\b_sel[3]~input_o\ & (\b_sel[2]~input_o\ & (\rf|b1|Mux9~1_combout\))) # (\b_sel[3]~input_o\ & (!\b_sel[2]~input_o\ & ((\rf|b1|Mux9~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[3]~input_o\,
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \rf|b1|ALT_INV_Mux9~1_combout\,
	datad => \rf|b1|ALT_INV_Mux9~2_combout\,
	datae => \rf|b1|ALT_INV_Mux9~0_combout\,
	dataf => \rf|b1|ALT_INV_Mux9~3_combout\,
	combout => \rf|b1|Mux9~4_combout\);

-- Location: LABCELL_X23_Y3_N48
\m2|res[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[7]~27_combout\ = ( \rf|b1|Mux9~4_combout\ & ( (!\const_sel~input_o\) # (\const_in[6]~input_o\) ) ) # ( !\rf|b1|Mux9~4_combout\ & ( (\const_sel~input_o\ & \const_in[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_const_sel~input_o\,
	datad => \ALT_INV_const_in[6]~input_o\,
	dataf => \rf|b1|ALT_INV_Mux9~4_combout\,
	combout => \m2|res[7]~27_combout\);

-- Location: LABCELL_X23_Y3_N54
\m2|res[5]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[5]~25_combout\ = ( \op_sel[0]~input_o\ & ( \rf|b1|Mux10~4_combout\ & ( (!\op_sel[1]~input_o\ & (((!\const_sel~input_o\) # (\rf|a1|Mux10~4_combout\)) # (\const_in[5]~input_o\))) # (\op_sel[1]~input_o\ & (((!\rf|a1|Mux10~4_combout\)))) ) ) ) # ( 
-- !\op_sel[0]~input_o\ & ( \rf|b1|Mux10~4_combout\ & ( (!\op_sel[1]~input_o\ & (\rf|a1|Mux10~4_combout\ & ((!\const_sel~input_o\) # (\const_in[5]~input_o\)))) # (\op_sel[1]~input_o\ & (!\rf|a1|Mux10~4_combout\ $ (((!\const_in[5]~input_o\ & 
-- \const_sel~input_o\))))) ) ) ) # ( \op_sel[0]~input_o\ & ( !\rf|b1|Mux10~4_combout\ & ( (!\op_sel[1]~input_o\ & (((\const_in[5]~input_o\ & \const_sel~input_o\)) # (\rf|a1|Mux10~4_combout\))) # (\op_sel[1]~input_o\ & (((!\rf|a1|Mux10~4_combout\)))) ) ) ) # 
-- ( !\op_sel[0]~input_o\ & ( !\rf|b1|Mux10~4_combout\ & ( (!\op_sel[1]~input_o\ & (\const_in[5]~input_o\ & (\const_sel~input_o\ & \rf|a1|Mux10~4_combout\))) # (\op_sel[1]~input_o\ & (!\rf|a1|Mux10~4_combout\ $ (((!\const_in[5]~input_o\) # 
-- (!\const_sel~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110110001101111100110000110001110001101111011111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[5]~input_o\,
	datab => \ALT_INV_op_sel[1]~input_o\,
	datac => \ALT_INV_const_sel~input_o\,
	datad => \rf|a1|ALT_INV_Mux10~4_combout\,
	datae => \ALT_INV_op_sel[0]~input_o\,
	dataf => \rf|b1|ALT_INV_Mux10~4_combout\,
	combout => \m2|res[5]~25_combout\);

-- Location: LABCELL_X23_Y3_N42
\m2|res[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[5]~26_combout\ = ( \al_shift|al|au|f4|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (!\rf|a1|Mux10~4_combout\ $ (((\al_shift|al|au|Add0~21_sumout\))))) # (\m2|res[1]~7_combout\ & (((\m2|res[5]~25_combout\)))) ) ) # ( !\al_shift|al|au|f4|c~0_combout\ 
-- & ( (!\m2|res[1]~7_combout\ & (!\rf|a1|Mux10~4_combout\ $ (((!\al_shift|al|au|Add0~21_sumout\))))) # (\m2|res[1]~7_combout\ & (((\m2|res[5]~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110001101001001111000110110001101001001111000110100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_res[1]~7_combout\,
	datab => \rf|a1|ALT_INV_Mux10~4_combout\,
	datac => \m2|ALT_INV_res[5]~25_combout\,
	datad => \al_shift|al|au|ALT_INV_Add0~21_sumout\,
	dataf => \al_shift|al|au|f4|ALT_INV_c~0_combout\,
	combout => \m2|res[5]~26_combout\);

-- Location: LABCELL_X23_Y3_N9
\m2|res[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[5]~28_combout\ = ( \op_sel[3]~input_o\ & ( \m2|res[5]~26_combout\ & ( (\op_sel[0]~input_o\ & \m2|res[7]~27_combout\) ) ) ) # ( !\op_sel[3]~input_o\ & ( \m2|res[5]~26_combout\ ) ) # ( \op_sel[3]~input_o\ & ( !\m2|res[5]~26_combout\ & ( 
-- (\op_sel[0]~input_o\ & \m2|res[7]~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010111111111111111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[0]~input_o\,
	datad => \m2|ALT_INV_res[7]~27_combout\,
	datae => \ALT_INV_op_sel[3]~input_o\,
	dataf => \m2|ALT_INV_res[5]~26_combout\,
	combout => \m2|res[5]~28_combout\);

-- Location: LABCELL_X23_Y3_N0
\m2|res[5]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[5]~29_combout\ = ( \m2|res[5]~28_combout\ & ( (!\data_sel~input_o\) # (\data_in[5]~input_o\) ) ) # ( !\m2|res[5]~28_combout\ & ( (!\data_sel~input_o\ & ((\m2|res[5]~24_combout\))) # (\data_sel~input_o\ & (\data_in[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_sel~input_o\,
	datac => \ALT_INV_data_in[5]~input_o\,
	datad => \m2|ALT_INV_res[5]~24_combout\,
	dataf => \m2|ALT_INV_res[5]~28_combout\,
	combout => \m2|res[5]~29_combout\);

-- Location: FF_X22_Y2_N44
\rf|reg4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[5]~29_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg4|q\(5));

-- Location: LABCELL_X22_Y2_N45
\rf|b1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux10~0_combout\ = ( \rf|reg8|q\(5) & ( \rf|reg0|q\(5) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & (\rf|reg4|q\(5))) # (\b_sel[3]~input_o\ & ((\rf|reg12|q\(5))))) ) ) ) # ( !\rf|reg8|q\(5) & ( \rf|reg0|q\(5) & ( (!\b_sel[2]~input_o\ & 
-- (!\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg4|q\(5))) # (\b_sel[3]~input_o\ & ((\rf|reg12|q\(5)))))) ) ) ) # ( \rf|reg8|q\(5) & ( !\rf|reg0|q\(5) & ( (!\b_sel[2]~input_o\ & (\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & (\rf|reg4|q\(5))) # (\b_sel[3]~input_o\ & ((\rf|reg12|q\(5)))))) ) ) ) # ( !\rf|reg8|q\(5) & ( !\rf|reg0|q\(5) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg4|q\(5))) # (\b_sel[3]~input_o\ & ((\rf|reg12|q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg4|ALT_INV_q\(5),
	datad => \rf|reg12|ALT_INV_q\(5),
	datae => \rf|reg8|ALT_INV_q\(5),
	dataf => \rf|reg0|ALT_INV_q\(5),
	combout => \rf|b1|Mux10~0_combout\);

-- Location: LABCELL_X22_Y2_N57
\rf|b1|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux10~2_combout\ = ( \rf|reg10|q\(5) & ( \rf|reg2|q\(5) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(5))) # (\b_sel[3]~input_o\ & ((\rf|reg14|q\(5))))) ) ) ) # ( !\rf|reg10|q\(5) & ( \rf|reg2|q\(5) & ( (!\b_sel[2]~input_o\ & 
-- (((!\b_sel[3]~input_o\)))) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(5))) # (\b_sel[3]~input_o\ & ((\rf|reg14|q\(5)))))) ) ) ) # ( \rf|reg10|q\(5) & ( !\rf|reg2|q\(5) & ( (!\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\)))) # 
-- (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(5))) # (\b_sel[3]~input_o\ & ((\rf|reg14|q\(5)))))) ) ) ) # ( !\rf|reg10|q\(5) & ( !\rf|reg2|q\(5) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(5))) # (\b_sel[3]~input_o\ & 
-- ((\rf|reg14|q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg6|ALT_INV_q\(5),
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|reg14|ALT_INV_q\(5),
	datae => \rf|reg10|ALT_INV_q\(5),
	dataf => \rf|reg2|ALT_INV_q\(5),
	combout => \rf|b1|Mux10~2_combout\);

-- Location: LABCELL_X22_Y1_N24
\rf|b1|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux10~1_combout\ = ( \rf|reg9|q\(5) & ( \rf|reg1|q\(5) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & ((\rf|reg5|q\(5)))) # (\b_sel[3]~input_o\ & (\rf|reg13|q\(5)))) ) ) ) # ( !\rf|reg9|q\(5) & ( \rf|reg1|q\(5) & ( (!\b_sel[2]~input_o\ & 
-- (!\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg5|q\(5)))) # (\b_sel[3]~input_o\ & (\rf|reg13|q\(5))))) ) ) ) # ( \rf|reg9|q\(5) & ( !\rf|reg1|q\(5) & ( (!\b_sel[2]~input_o\ & (\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & ((\rf|reg5|q\(5)))) # (\b_sel[3]~input_o\ & (\rf|reg13|q\(5))))) ) ) ) # ( !\rf|reg9|q\(5) & ( !\rf|reg1|q\(5) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg5|q\(5)))) # (\b_sel[3]~input_o\ & (\rf|reg13|q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg13|ALT_INV_q\(5),
	datad => \rf|reg5|ALT_INV_q\(5),
	datae => \rf|reg9|ALT_INV_q\(5),
	dataf => \rf|reg1|ALT_INV_q\(5),
	combout => \rf|b1|Mux10~1_combout\);

-- Location: LABCELL_X23_Y4_N15
\rf|b1|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux10~3_combout\ = ( \rf|reg15|q\(5) & ( \rf|reg3|q\(5) & ( (!\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\)) # (\rf|reg11|q\(5)))) # (\b_sel[2]~input_o\ & (((\rf|reg7|q\(5)) # (\b_sel[3]~input_o\)))) ) ) ) # ( !\rf|reg15|q\(5) & ( \rf|reg3|q\(5) & ( 
-- (!\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\)) # (\rf|reg11|q\(5)))) # (\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\ & \rf|reg7|q\(5))))) ) ) ) # ( \rf|reg15|q\(5) & ( !\rf|reg3|q\(5) & ( (!\b_sel[2]~input_o\ & (\rf|reg11|q\(5) & (\b_sel[3]~input_o\))) # 
-- (\b_sel[2]~input_o\ & (((\rf|reg7|q\(5)) # (\b_sel[3]~input_o\)))) ) ) ) # ( !\rf|reg15|q\(5) & ( !\rf|reg3|q\(5) & ( (!\b_sel[2]~input_o\ & (\rf|reg11|q\(5) & (\b_sel[3]~input_o\))) # (\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\ & \rf|reg7|q\(5))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg11|ALT_INV_q\(5),
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|reg7|ALT_INV_q\(5),
	datae => \rf|reg15|ALT_INV_q\(5),
	dataf => \rf|reg3|ALT_INV_q\(5),
	combout => \rf|b1|Mux10~3_combout\);

-- Location: LABCELL_X22_Y2_N39
\rf|b1|Mux10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux10~4_combout\ = ( \rf|b1|Mux10~1_combout\ & ( \rf|b1|Mux10~3_combout\ & ( ((!\b_sel[1]~input_o\ & (\rf|b1|Mux10~0_combout\)) # (\b_sel[1]~input_o\ & ((\rf|b1|Mux10~2_combout\)))) # (\b_sel[0]~input_o\) ) ) ) # ( !\rf|b1|Mux10~1_combout\ & ( 
-- \rf|b1|Mux10~3_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|b1|Mux10~0_combout\)) # (\b_sel[1]~input_o\ & ((\rf|b1|Mux10~2_combout\))))) # (\b_sel[0]~input_o\ & (((\b_sel[1]~input_o\)))) ) ) ) # ( \rf|b1|Mux10~1_combout\ & ( 
-- !\rf|b1|Mux10~3_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|b1|Mux10~0_combout\)) # (\b_sel[1]~input_o\ & ((\rf|b1|Mux10~2_combout\))))) # (\b_sel[0]~input_o\ & (((!\b_sel[1]~input_o\)))) ) ) ) # ( !\rf|b1|Mux10~1_combout\ & ( 
-- !\rf|b1|Mux10~3_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|b1|Mux10~0_combout\)) # (\b_sel[1]~input_o\ & ((\rf|b1|Mux10~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \rf|b1|ALT_INV_Mux10~0_combout\,
	datac => \rf|b1|ALT_INV_Mux10~2_combout\,
	datad => \ALT_INV_b_sel[1]~input_o\,
	datae => \rf|b1|ALT_INV_Mux10~1_combout\,
	dataf => \rf|b1|ALT_INV_Mux10~3_combout\,
	combout => \rf|b1|Mux10~4_combout\);

-- Location: LABCELL_X17_Y3_N57
\m2|res[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[4]~20_combout\ = ( \rf|a1|Mux11~4_combout\ & ( \rf|b1|Mux11~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\const_in[4]~input_o\ & (\const_sel~input_o\ & !\op_sel[0]~input_o\)))) ) ) ) # ( !\rf|a1|Mux11~4_combout\ & ( \rf|b1|Mux11~4_combout\ & ( 
-- (!\op_sel[1]~input_o\ & (\op_sel[0]~input_o\ & ((!\const_sel~input_o\) # (\const_in[4]~input_o\)))) # (\op_sel[1]~input_o\ & (((!\const_sel~input_o\) # (\op_sel[0]~input_o\)) # (\const_in[4]~input_o\))) ) ) ) # ( \rf|a1|Mux11~4_combout\ & ( 
-- !\rf|b1|Mux11~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & ((!\const_in[4]~input_o\) # (!\const_sel~input_o\))))) ) ) ) # ( !\rf|a1|Mux11~4_combout\ & ( !\rf|b1|Mux11~4_combout\ & ( (!\op_sel[1]~input_o\ & (\const_in[4]~input_o\ & 
-- (\const_sel~input_o\ & \op_sel[0]~input_o\))) # (\op_sel[1]~input_o\ & (((\const_in[4]~input_o\ & \const_sel~input_o\)) # (\op_sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000111101111000000001101110111111101001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[4]~input_o\,
	datab => \ALT_INV_const_sel~input_o\,
	datac => \ALT_INV_op_sel[1]~input_o\,
	datad => \ALT_INV_op_sel[0]~input_o\,
	datae => \rf|a1|ALT_INV_Mux11~4_combout\,
	dataf => \rf|b1|ALT_INV_Mux11~4_combout\,
	combout => \m2|res[4]~20_combout\);

-- Location: LABCELL_X18_Y1_N6
\m2|res[4]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[4]~21_combout\ = ( \al_shift|al|au|Add0~17_sumout\ & ( \al_shift|al|au|f3|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (\rf|a1|Mux11~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[4]~20_combout\))) ) ) ) # ( !\al_shift|al|au|Add0~17_sumout\ & ( 
-- \al_shift|al|au|f3|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (!\rf|a1|Mux11~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[4]~20_combout\))) ) ) ) # ( \al_shift|al|au|Add0~17_sumout\ & ( !\al_shift|al|au|f3|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & 
-- (!\rf|a1|Mux11~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[4]~20_combout\))) ) ) ) # ( !\al_shift|al|au|Add0~17_sumout\ & ( !\al_shift|al|au|f3|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (\rf|a1|Mux11~4_combout\)) # (\m2|res[1]~7_combout\ & 
-- ((\m2|res[4]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111100010111000101110001011100010110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|a1|ALT_INV_Mux11~4_combout\,
	datab => \m2|ALT_INV_res[1]~7_combout\,
	datac => \m2|ALT_INV_res[4]~20_combout\,
	datae => \al_shift|al|au|ALT_INV_Add0~17_sumout\,
	dataf => \al_shift|al|au|f3|ALT_INV_c~0_combout\,
	combout => \m2|res[4]~21_combout\);

-- Location: LABCELL_X18_Y1_N42
\m2|res[4]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[4]~22_combout\ = ( \const_sel~input_o\ & ( \m2|res[4]~21_combout\ & ( (!\op_sel[3]~input_o\) # (\const_in[5]~input_o\) ) ) ) # ( !\const_sel~input_o\ & ( \m2|res[4]~21_combout\ & ( (!\op_sel[3]~input_o\) # (\rf|b1|Mux10~4_combout\) ) ) ) # ( 
-- \const_sel~input_o\ & ( !\m2|res[4]~21_combout\ & ( (\const_in[5]~input_o\ & \op_sel[3]~input_o\) ) ) ) # ( !\const_sel~input_o\ & ( !\m2|res[4]~21_combout\ & ( (\op_sel[3]~input_o\ & \rf|b1|Mux10~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100010001000111001111110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[5]~input_o\,
	datab => \ALT_INV_op_sel[3]~input_o\,
	datac => \rf|b1|ALT_INV_Mux10~4_combout\,
	datae => \ALT_INV_const_sel~input_o\,
	dataf => \m2|ALT_INV_res[4]~21_combout\,
	combout => \m2|res[4]~22_combout\);

-- Location: LABCELL_X18_Y1_N27
\m2|res[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[4]~23_combout\ = ( \m2|res[1]~10_combout\ & ( \m2|res[4]~22_combout\ & ( (!\data_sel~input_o\ & ((\m2|res[4]~15_combout\))) # (\data_sel~input_o\ & (\data_in[4]~input_o\)) ) ) ) # ( !\m2|res[1]~10_combout\ & ( \m2|res[4]~22_combout\ & ( 
-- (!\data_sel~input_o\) # (\data_in[4]~input_o\) ) ) ) # ( \m2|res[1]~10_combout\ & ( !\m2|res[4]~22_combout\ & ( (!\data_sel~input_o\ & ((\m2|res[4]~15_combout\))) # (\data_sel~input_o\ & (\data_in[4]~input_o\)) ) ) ) # ( !\m2|res[1]~10_combout\ & ( 
-- !\m2|res[4]~22_combout\ & ( (\data_in[4]~input_o\ & \data_sel~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111010001110111011101110111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[4]~input_o\,
	datab => \ALT_INV_data_sel~input_o\,
	datac => \m2|ALT_INV_res[4]~15_combout\,
	datae => \m2|ALT_INV_res[1]~10_combout\,
	dataf => \m2|ALT_INV_res[4]~22_combout\,
	combout => \m2|res[4]~23_combout\);

-- Location: FF_X18_Y3_N14
\rf|reg3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[4]~23_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg3|q\(4));

-- Location: LABCELL_X18_Y3_N51
\rf|b1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux11~0_combout\ = ( \b_sel[0]~input_o\ & ( \rf|reg2|q\(4) & ( (!\b_sel[1]~input_o\ & ((\rf|reg1|q\(4)))) # (\b_sel[1]~input_o\ & (\rf|reg3|q\(4))) ) ) ) # ( !\b_sel[0]~input_o\ & ( \rf|reg2|q\(4) & ( (\rf|reg0|q\(4)) # (\b_sel[1]~input_o\) ) ) ) # 
-- ( \b_sel[0]~input_o\ & ( !\rf|reg2|q\(4) & ( (!\b_sel[1]~input_o\ & ((\rf|reg1|q\(4)))) # (\b_sel[1]~input_o\ & (\rf|reg3|q\(4))) ) ) ) # ( !\b_sel[0]~input_o\ & ( !\rf|reg2|q\(4) & ( (!\b_sel[1]~input_o\ & \rf|reg0|q\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[1]~input_o\,
	datab => \rf|reg3|ALT_INV_q\(4),
	datac => \rf|reg0|ALT_INV_q\(4),
	datad => \rf|reg1|ALT_INV_q\(4),
	datae => \ALT_INV_b_sel[0]~input_o\,
	dataf => \rf|reg2|ALT_INV_q\(4),
	combout => \rf|b1|Mux11~0_combout\);

-- Location: LABCELL_X17_Y2_N57
\rf|b1|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux11~1_combout\ = ( \rf|reg5|q\(4) & ( \rf|reg7|q\(4) & ( ((!\b_sel[1]~input_o\ & (\rf|reg4|q\(4))) # (\b_sel[1]~input_o\ & ((\rf|reg6|q\(4))))) # (\b_sel[0]~input_o\) ) ) ) # ( !\rf|reg5|q\(4) & ( \rf|reg7|q\(4) & ( (!\b_sel[1]~input_o\ & 
-- (\rf|reg4|q\(4) & ((!\b_sel[0]~input_o\)))) # (\b_sel[1]~input_o\ & (((\b_sel[0]~input_o\) # (\rf|reg6|q\(4))))) ) ) ) # ( \rf|reg5|q\(4) & ( !\rf|reg7|q\(4) & ( (!\b_sel[1]~input_o\ & (((\b_sel[0]~input_o\)) # (\rf|reg4|q\(4)))) # (\b_sel[1]~input_o\ & 
-- (((\rf|reg6|q\(4) & !\b_sel[0]~input_o\)))) ) ) ) # ( !\rf|reg5|q\(4) & ( !\rf|reg7|q\(4) & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\ & (\rf|reg4|q\(4))) # (\b_sel[1]~input_o\ & ((\rf|reg6|q\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[1]~input_o\,
	datab => \rf|reg4|ALT_INV_q\(4),
	datac => \rf|reg6|ALT_INV_q\(4),
	datad => \ALT_INV_b_sel[0]~input_o\,
	datae => \rf|reg5|ALT_INV_q\(4),
	dataf => \rf|reg7|ALT_INV_q\(4),
	combout => \rf|b1|Mux11~1_combout\);

-- Location: LABCELL_X15_Y1_N54
\rf|b1|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux11~2_combout\ = ( \rf|reg9|q\(4) & ( \rf|reg10|q\(4) & ( (!\b_sel[1]~input_o\ & (((\rf|reg8|q\(4))) # (\b_sel[0]~input_o\))) # (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\) # ((\rf|reg11|q\(4))))) ) ) ) # ( !\rf|reg9|q\(4) & ( \rf|reg10|q\(4) & ( 
-- (!\b_sel[1]~input_o\ & (!\b_sel[0]~input_o\ & ((\rf|reg8|q\(4))))) # (\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\) # ((\rf|reg11|q\(4))))) ) ) ) # ( \rf|reg9|q\(4) & ( !\rf|reg10|q\(4) & ( (!\b_sel[1]~input_o\ & (((\rf|reg8|q\(4))) # (\b_sel[0]~input_o\))) 
-- # (\b_sel[1]~input_o\ & (\b_sel[0]~input_o\ & (\rf|reg11|q\(4)))) ) ) ) # ( !\rf|reg9|q\(4) & ( !\rf|reg10|q\(4) & ( (!\b_sel[1]~input_o\ & (!\b_sel[0]~input_o\ & ((\rf|reg8|q\(4))))) # (\b_sel[1]~input_o\ & (\b_sel[0]~input_o\ & (\rf|reg11|q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[1]~input_o\,
	datab => \ALT_INV_b_sel[0]~input_o\,
	datac => \rf|reg11|ALT_INV_q\(4),
	datad => \rf|reg8|ALT_INV_q\(4),
	datae => \rf|reg9|ALT_INV_q\(4),
	dataf => \rf|reg10|ALT_INV_q\(4),
	combout => \rf|b1|Mux11~2_combout\);

-- Location: LABCELL_X18_Y3_N30
\rf|b1|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux11~3_combout\ = ( \rf|reg12|q\(4) & ( \rf|reg15|q\(4) & ( (!\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\)) # (\rf|reg13|q\(4)))) # (\b_sel[1]~input_o\ & (((\b_sel[0]~input_o\) # (\rf|reg14|q\(4))))) ) ) ) # ( !\rf|reg12|q\(4) & ( \rf|reg15|q\(4) 
-- & ( (!\b_sel[1]~input_o\ & (\rf|reg13|q\(4) & ((\b_sel[0]~input_o\)))) # (\b_sel[1]~input_o\ & (((\b_sel[0]~input_o\) # (\rf|reg14|q\(4))))) ) ) ) # ( \rf|reg12|q\(4) & ( !\rf|reg15|q\(4) & ( (!\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\)) # 
-- (\rf|reg13|q\(4)))) # (\b_sel[1]~input_o\ & (((\rf|reg14|q\(4) & !\b_sel[0]~input_o\)))) ) ) ) # ( !\rf|reg12|q\(4) & ( !\rf|reg15|q\(4) & ( (!\b_sel[1]~input_o\ & (\rf|reg13|q\(4) & ((\b_sel[0]~input_o\)))) # (\b_sel[1]~input_o\ & (((\rf|reg14|q\(4) & 
-- !\b_sel[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg13|ALT_INV_q\(4),
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg14|ALT_INV_q\(4),
	datad => \ALT_INV_b_sel[0]~input_o\,
	datae => \rf|reg12|ALT_INV_q\(4),
	dataf => \rf|reg15|ALT_INV_q\(4),
	combout => \rf|b1|Mux11~3_combout\);

-- Location: LABCELL_X17_Y2_N6
\rf|b1|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux11~4_combout\ = ( \rf|b1|Mux11~2_combout\ & ( \rf|b1|Mux11~3_combout\ & ( ((!\b_sel[2]~input_o\ & (\rf|b1|Mux11~0_combout\)) # (\b_sel[2]~input_o\ & ((\rf|b1|Mux11~1_combout\)))) # (\b_sel[3]~input_o\) ) ) ) # ( !\rf|b1|Mux11~2_combout\ & ( 
-- \rf|b1|Mux11~3_combout\ & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & (\rf|b1|Mux11~0_combout\)) # (\b_sel[2]~input_o\ & ((\rf|b1|Mux11~1_combout\))))) # (\b_sel[3]~input_o\ & (\b_sel[2]~input_o\)) ) ) ) # ( \rf|b1|Mux11~2_combout\ & ( 
-- !\rf|b1|Mux11~3_combout\ & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & (\rf|b1|Mux11~0_combout\)) # (\b_sel[2]~input_o\ & ((\rf|b1|Mux11~1_combout\))))) # (\b_sel[3]~input_o\ & (!\b_sel[2]~input_o\)) ) ) ) # ( !\rf|b1|Mux11~2_combout\ & ( 
-- !\rf|b1|Mux11~3_combout\ & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & (\rf|b1|Mux11~0_combout\)) # (\b_sel[2]~input_o\ & ((\rf|b1|Mux11~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[3]~input_o\,
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \rf|b1|ALT_INV_Mux11~0_combout\,
	datad => \rf|b1|ALT_INV_Mux11~1_combout\,
	datae => \rf|b1|ALT_INV_Mux11~2_combout\,
	dataf => \rf|b1|ALT_INV_Mux11~3_combout\,
	combout => \rf|b1|Mux11~4_combout\);

-- Location: MLABCELL_X14_Y2_N3
\m2|res[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[3]~16_combout\ = ( \const_sel~input_o\ & ( \rf|a1|Mux12~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & !\const_in[3]~input_o\))) ) ) ) # ( !\const_sel~input_o\ & ( \rf|a1|Mux12~4_combout\ & ( !\op_sel[1]~input_o\ $ 
-- (((!\rf|b1|Mux12~4_combout\ & !\op_sel[0]~input_o\))) ) ) ) # ( \const_sel~input_o\ & ( !\rf|a1|Mux12~4_combout\ & ( (!\op_sel[1]~input_o\ & (\op_sel[0]~input_o\ & \const_in[3]~input_o\)) # (\op_sel[1]~input_o\ & ((\const_in[3]~input_o\) # 
-- (\op_sel[0]~input_o\))) ) ) ) # ( !\const_sel~input_o\ & ( !\rf|a1|Mux12~4_combout\ & ( (!\rf|b1|Mux12~4_combout\ & (\op_sel[1]~input_o\ & \op_sel[0]~input_o\)) # (\rf|b1|Mux12~4_combout\ & ((\op_sel[0]~input_o\) # (\op_sel[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000000110011111101101100011011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|b1|ALT_INV_Mux12~4_combout\,
	datab => \ALT_INV_op_sel[1]~input_o\,
	datac => \ALT_INV_op_sel[0]~input_o\,
	datad => \ALT_INV_const_in[3]~input_o\,
	datae => \ALT_INV_const_sel~input_o\,
	dataf => \rf|a1|ALT_INV_Mux12~4_combout\,
	combout => \m2|res[3]~16_combout\);

-- Location: MLABCELL_X14_Y4_N18
\m2|res[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[3]~17_combout\ = ( \al_shift|al|au|Add0~13_sumout\ & ( \al_shift|al|au|f2|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (\rf|a1|Mux12~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[3]~16_combout\))) ) ) ) # ( !\al_shift|al|au|Add0~13_sumout\ & ( 
-- \al_shift|al|au|f2|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (!\rf|a1|Mux12~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[3]~16_combout\))) ) ) ) # ( \al_shift|al|au|Add0~13_sumout\ & ( !\al_shift|al|au|f2|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & 
-- (!\rf|a1|Mux12~4_combout\)) # (\m2|res[1]~7_combout\ & ((\m2|res[3]~16_combout\))) ) ) ) # ( !\al_shift|al|au|Add0~13_sumout\ & ( !\al_shift|al|au|f2|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (\rf|a1|Mux12~4_combout\)) # (\m2|res[1]~7_combout\ & 
-- ((\m2|res[3]~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111110000001111001111000000111100110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_res[1]~7_combout\,
	datac => \rf|a1|ALT_INV_Mux12~4_combout\,
	datad => \m2|ALT_INV_res[3]~16_combout\,
	datae => \al_shift|al|au|ALT_INV_Add0~13_sumout\,
	dataf => \al_shift|al|au|f2|ALT_INV_c~0_combout\,
	combout => \m2|res[3]~17_combout\);

-- Location: MLABCELL_X14_Y4_N24
\m2|res[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[3]~18_combout\ = ( \m2|res[3]~17_combout\ & ( (!\op_sel[3]~input_o\) # ((!\const_sel~input_o\ & ((\rf|b1|Mux11~4_combout\))) # (\const_sel~input_o\ & (\const_in[4]~input_o\))) ) ) # ( !\m2|res[3]~17_combout\ & ( (\op_sel[3]~input_o\ & 
-- ((!\const_sel~input_o\ & ((\rf|b1|Mux11~4_combout\))) # (\const_sel~input_o\ & (\const_in[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000000010011000111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[4]~input_o\,
	datab => \ALT_INV_op_sel[3]~input_o\,
	datac => \ALT_INV_const_sel~input_o\,
	datad => \rf|b1|ALT_INV_Mux11~4_combout\,
	dataf => \m2|ALT_INV_res[3]~17_combout\,
	combout => \m2|res[3]~18_combout\);

-- Location: MLABCELL_X14_Y4_N12
\m2|res[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[3]~19_combout\ = ( \data_in[3]~input_o\ & ( \m2|res[3]~18_combout\ & ( (!\m2|res[1]~10_combout\) # ((\m2|res[3]~5_combout\) # (\data_sel~input_o\)) ) ) ) # ( !\data_in[3]~input_o\ & ( \m2|res[3]~18_combout\ & ( (!\data_sel~input_o\ & 
-- ((!\m2|res[1]~10_combout\) # (\m2|res[3]~5_combout\))) ) ) ) # ( \data_in[3]~input_o\ & ( !\m2|res[3]~18_combout\ & ( ((\m2|res[1]~10_combout\ & \m2|res[3]~5_combout\)) # (\data_sel~input_o\) ) ) ) # ( !\data_in[3]~input_o\ & ( !\m2|res[3]~18_combout\ & ( 
-- (\m2|res[1]~10_combout\ & (!\data_sel~input_o\ & \m2|res[3]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100001101110011011110001100100011001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_res[1]~10_combout\,
	datab => \ALT_INV_data_sel~input_o\,
	datac => \m2|ALT_INV_res[3]~5_combout\,
	datae => \ALT_INV_data_in[3]~input_o\,
	dataf => \m2|ALT_INV_res[3]~18_combout\,
	combout => \m2|res[3]~19_combout\);

-- Location: MLABCELL_X14_Y2_N33
\rf|reg6|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|reg6|q[3]~feeder_combout\ = ( \m2|res[3]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m2|ALT_INV_res[3]~19_combout\,
	combout => \rf|reg6|q[3]~feeder_combout\);

-- Location: FF_X14_Y2_N35
\rf|reg6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rf|reg6|q[3]~feeder_combout\,
	ena => \rf|d1|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg6|q\(3));

-- Location: LABCELL_X15_Y2_N39
\rf|b1|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux12~2_combout\ = ( \rf|reg2|q\(3) & ( \rf|reg10|q\(3) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(3))) # (\b_sel[3]~input_o\ & ((\rf|reg14|q\(3))))) ) ) ) # ( !\rf|reg2|q\(3) & ( \rf|reg10|q\(3) & ( (!\b_sel[3]~input_o\ & 
-- (\b_sel[2]~input_o\ & (\rf|reg6|q\(3)))) # (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|reg14|q\(3))))) ) ) ) # ( \rf|reg2|q\(3) & ( !\rf|reg10|q\(3) & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|reg6|q\(3))))) # (\b_sel[3]~input_o\ & 
-- (\b_sel[2]~input_o\ & ((\rf|reg14|q\(3))))) ) ) ) # ( !\rf|reg2|q\(3) & ( !\rf|reg10|q\(3) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(3))) # (\b_sel[3]~input_o\ & ((\rf|reg14|q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[3]~input_o\,
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \rf|reg6|ALT_INV_q\(3),
	datad => \rf|reg14|ALT_INV_q\(3),
	datae => \rf|reg2|ALT_INV_q\(3),
	dataf => \rf|reg10|ALT_INV_q\(3),
	combout => \rf|b1|Mux12~2_combout\);

-- Location: MLABCELL_X14_Y4_N57
\rf|b1|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux12~3_combout\ = ( \rf|reg7|q\(3) & ( \rf|reg3|q\(3) & ( (!\b_sel[3]~input_o\) # ((!\b_sel[2]~input_o\ & ((\rf|reg11|q\(3)))) # (\b_sel[2]~input_o\ & (\rf|reg15|q\(3)))) ) ) ) # ( !\rf|reg7|q\(3) & ( \rf|reg3|q\(3) & ( (!\b_sel[2]~input_o\ & 
-- (((!\b_sel[3]~input_o\) # (\rf|reg11|q\(3))))) # (\b_sel[2]~input_o\ & (\rf|reg15|q\(3) & ((\b_sel[3]~input_o\)))) ) ) ) # ( \rf|reg7|q\(3) & ( !\rf|reg3|q\(3) & ( (!\b_sel[2]~input_o\ & (((\rf|reg11|q\(3) & \b_sel[3]~input_o\)))) # (\b_sel[2]~input_o\ & 
-- (((!\b_sel[3]~input_o\)) # (\rf|reg15|q\(3)))) ) ) ) # ( !\rf|reg7|q\(3) & ( !\rf|reg3|q\(3) & ( (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & ((\rf|reg11|q\(3)))) # (\b_sel[2]~input_o\ & (\rf|reg15|q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \rf|reg15|ALT_INV_q\(3),
	datac => \rf|reg11|ALT_INV_q\(3),
	datad => \ALT_INV_b_sel[3]~input_o\,
	datae => \rf|reg7|ALT_INV_q\(3),
	dataf => \rf|reg3|ALT_INV_q\(3),
	combout => \rf|b1|Mux12~3_combout\);

-- Location: LABCELL_X15_Y2_N21
\rf|b1|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux12~1_combout\ = ( \rf|reg1|q\(3) & ( \rf|reg9|q\(3) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(3))) # (\b_sel[3]~input_o\ & ((\rf|reg13|q\(3))))) ) ) ) # ( !\rf|reg1|q\(3) & ( \rf|reg9|q\(3) & ( (!\b_sel[2]~input_o\ & 
-- (((\b_sel[3]~input_o\)))) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(3))) # (\b_sel[3]~input_o\ & ((\rf|reg13|q\(3)))))) ) ) ) # ( \rf|reg1|q\(3) & ( !\rf|reg9|q\(3) & ( (!\b_sel[2]~input_o\ & (((!\b_sel[3]~input_o\)))) # 
-- (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(3))) # (\b_sel[3]~input_o\ & ((\rf|reg13|q\(3)))))) ) ) ) # ( !\rf|reg1|q\(3) & ( !\rf|reg9|q\(3) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(3))) # (\b_sel[3]~input_o\ & 
-- ((\rf|reg13|q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg5|ALT_INV_q\(3),
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|reg13|ALT_INV_q\(3),
	datae => \rf|reg1|ALT_INV_q\(3),
	dataf => \rf|reg9|ALT_INV_q\(3),
	combout => \rf|b1|Mux12~1_combout\);

-- Location: MLABCELL_X14_Y2_N24
\rf|b1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux12~0_combout\ = ( \rf|reg4|q\(3) & ( \rf|reg0|q\(3) & ( (!\b_sel[3]~input_o\) # ((!\b_sel[2]~input_o\ & (\rf|reg8|q\(3))) # (\b_sel[2]~input_o\ & ((\rf|reg12|q\(3))))) ) ) ) # ( !\rf|reg4|q\(3) & ( \rf|reg0|q\(3) & ( (!\b_sel[2]~input_o\ & 
-- (((!\b_sel[3]~input_o\)) # (\rf|reg8|q\(3)))) # (\b_sel[2]~input_o\ & (((\b_sel[3]~input_o\ & \rf|reg12|q\(3))))) ) ) ) # ( \rf|reg4|q\(3) & ( !\rf|reg0|q\(3) & ( (!\b_sel[2]~input_o\ & (\rf|reg8|q\(3) & (\b_sel[3]~input_o\))) # (\b_sel[2]~input_o\ & 
-- (((!\b_sel[3]~input_o\) # (\rf|reg12|q\(3))))) ) ) ) # ( !\rf|reg4|q\(3) & ( !\rf|reg0|q\(3) & ( (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & (\rf|reg8|q\(3))) # (\b_sel[2]~input_o\ & ((\rf|reg12|q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \rf|reg8|ALT_INV_q\(3),
	datac => \ALT_INV_b_sel[3]~input_o\,
	datad => \rf|reg12|ALT_INV_q\(3),
	datae => \rf|reg4|ALT_INV_q\(3),
	dataf => \rf|reg0|ALT_INV_q\(3),
	combout => \rf|b1|Mux12~0_combout\);

-- Location: LABCELL_X15_Y2_N33
\rf|b1|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux12~4_combout\ = ( \rf|b1|Mux12~1_combout\ & ( \rf|b1|Mux12~0_combout\ & ( (!\b_sel[1]~input_o\) # ((!\b_sel[0]~input_o\ & (\rf|b1|Mux12~2_combout\)) # (\b_sel[0]~input_o\ & ((\rf|b1|Mux12~3_combout\)))) ) ) ) # ( !\rf|b1|Mux12~1_combout\ & ( 
-- \rf|b1|Mux12~0_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|b1|Mux12~2_combout\)))) # (\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & ((\rf|b1|Mux12~3_combout\)))) ) ) ) # ( \rf|b1|Mux12~1_combout\ & ( !\rf|b1|Mux12~0_combout\ & ( 
-- (!\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & (\rf|b1|Mux12~2_combout\))) # (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|b1|Mux12~3_combout\)))) ) ) ) # ( !\rf|b1|Mux12~1_combout\ & ( !\rf|b1|Mux12~0_combout\ & ( (\b_sel[1]~input_o\ & 
-- ((!\b_sel[0]~input_o\ & (\rf|b1|Mux12~2_combout\)) # (\b_sel[0]~input_o\ & ((\rf|b1|Mux12~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|b1|ALT_INV_Mux12~2_combout\,
	datad => \rf|b1|ALT_INV_Mux12~3_combout\,
	datae => \rf|b1|ALT_INV_Mux12~1_combout\,
	dataf => \rf|b1|ALT_INV_Mux12~0_combout\,
	combout => \rf|b1|Mux12~4_combout\);

-- Location: MLABCELL_X14_Y2_N51
\m2|res[4]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[4]~15_combout\ = ( \rf|b1|Mux12~4_combout\ & ( (!\const_sel~input_o\) # (\const_in[3]~input_o\) ) ) # ( !\rf|b1|Mux12~4_combout\ & ( (\const_in[3]~input_o\ & \const_sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[3]~input_o\,
	datad => \ALT_INV_const_sel~input_o\,
	dataf => \rf|b1|ALT_INV_Mux12~4_combout\,
	combout => \m2|res[4]~15_combout\);

-- Location: LABCELL_X23_Y3_N30
\m2|res[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[2]~13_combout\ = ( \op_sel[0]~input_o\ & ( \rf|a1|Mux13~4_combout\ & ( !\op_sel[1]~input_o\ ) ) ) # ( !\op_sel[0]~input_o\ & ( \rf|a1|Mux13~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\const_sel~input_o\ & ((!\rf|b1|Mux13~4_combout\))) # 
-- (\const_sel~input_o\ & (!\const_in[2]~input_o\)))) ) ) ) # ( \op_sel[0]~input_o\ & ( !\rf|a1|Mux13~4_combout\ & ( ((!\const_sel~input_o\ & ((\rf|b1|Mux13~4_combout\))) # (\const_sel~input_o\ & (\const_in[2]~input_o\))) # (\op_sel[1]~input_o\) ) ) ) # ( 
-- !\op_sel[0]~input_o\ & ( !\rf|a1|Mux13~4_combout\ & ( (\op_sel[1]~input_o\ & ((!\const_sel~input_o\ & ((\rf|b1|Mux13~4_combout\))) # (\const_sel~input_o\ & (\const_in[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011001101111011111100110110100111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_sel~input_o\,
	datab => \ALT_INV_op_sel[1]~input_o\,
	datac => \ALT_INV_const_in[2]~input_o\,
	datad => \rf|b1|ALT_INV_Mux13~4_combout\,
	datae => \ALT_INV_op_sel[0]~input_o\,
	dataf => \rf|a1|ALT_INV_Mux13~4_combout\,
	combout => \m2|res[2]~13_combout\);

-- Location: LABCELL_X23_Y3_N51
\m2|res[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[2]~14_combout\ = ( \al_shift|al|au|f1|c~0_combout\ & ( (!\m2|res[1]~7_combout\ & (!\rf|a1|Mux13~4_combout\ $ (((\al_shift|al|au|Add0~9_sumout\))))) # (\m2|res[1]~7_combout\ & (((\m2|res[2]~13_combout\)))) ) ) # ( !\al_shift|al|au|f1|c~0_combout\ & 
-- ( (!\m2|res[1]~7_combout\ & (!\rf|a1|Mux13~4_combout\ $ (((!\al_shift|al|au|Add0~9_sumout\))))) # (\m2|res[1]~7_combout\ & (((\m2|res[2]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110001101001001111000110110001101001001111000110100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_res[1]~7_combout\,
	datab => \rf|a1|ALT_INV_Mux13~4_combout\,
	datac => \m2|ALT_INV_res[2]~13_combout\,
	datad => \al_shift|al|au|ALT_INV_Add0~9_sumout\,
	dataf => \al_shift|al|au|f1|ALT_INV_c~0_combout\,
	combout => \m2|res[2]~14_combout\);

-- Location: LABCELL_X23_Y3_N12
\m2|res[2]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[2]~84_combout\ = ( !\op_sel[0]~input_o\ & ( (!\data_sel~input_o\ & ((!\op_sel[3]~input_o\ & (((\m2|res[2]~14_combout\)))) # (\op_sel[3]~input_o\ & (((\m2|res[2]~1_combout\)))))) # (\data_sel~input_o\ & (((\data_in[2]~input_o\)))) ) ) # ( 
-- \op_sel[0]~input_o\ & ( (!\data_sel~input_o\ & ((!\op_sel[3]~input_o\ & (((\m2|res[2]~14_combout\)))) # (\op_sel[3]~input_o\ & (((\m2|res[4]~15_combout\)))))) # (\data_sel~input_o\ & (((\data_in[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011000001010011001110101111001100111010111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[3]~input_o\,
	datab => \ALT_INV_data_in[2]~input_o\,
	datac => \m2|ALT_INV_res[4]~15_combout\,
	datad => \ALT_INV_data_sel~input_o\,
	datae => \ALT_INV_op_sel[0]~input_o\,
	dataf => \m2|ALT_INV_res[2]~14_combout\,
	datag => \m2|ALT_INV_res[2]~1_combout\,
	combout => \m2|res[2]~84_combout\);

-- Location: FF_X19_Y3_N37
\rf|reg2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[2]~84_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg2|q\(2));

-- Location: MLABCELL_X19_Y3_N27
\rf|b1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux13~0_combout\ = ( \rf|reg3|q\(2) & ( \rf|reg0|q\(2) & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|reg2|q\(2))))) # (\b_sel[0]~input_o\ & (((\rf|reg1|q\(2))) # (\b_sel[1]~input_o\))) ) ) ) # ( !\rf|reg3|q\(2) & ( \rf|reg0|q\(2) & ( 
-- (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|reg2|q\(2))))) # (\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & ((\rf|reg1|q\(2))))) ) ) ) # ( \rf|reg3|q\(2) & ( !\rf|reg0|q\(2) & ( (!\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & (\rf|reg2|q\(2)))) # 
-- (\b_sel[0]~input_o\ & (((\rf|reg1|q\(2))) # (\b_sel[1]~input_o\))) ) ) ) # ( !\rf|reg3|q\(2) & ( !\rf|reg0|q\(2) & ( (!\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & (\rf|reg2|q\(2)))) # (\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & ((\rf|reg1|q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg2|ALT_INV_q\(2),
	datad => \rf|reg1|ALT_INV_q\(2),
	datae => \rf|reg3|ALT_INV_q\(2),
	dataf => \rf|reg0|ALT_INV_q\(2),
	combout => \rf|b1|Mux13~0_combout\);

-- Location: LABCELL_X18_Y3_N57
\rf|b1|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux13~3_combout\ = ( \rf|reg12|q\(2) & ( \rf|reg15|q\(2) & ( (!\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\)) # (\rf|reg13|q\(2)))) # (\b_sel[1]~input_o\ & (((\rf|reg14|q\(2)) # (\b_sel[0]~input_o\)))) ) ) ) # ( !\rf|reg12|q\(2) & ( \rf|reg15|q\(2) 
-- & ( (!\b_sel[1]~input_o\ & (\rf|reg13|q\(2) & (\b_sel[0]~input_o\))) # (\b_sel[1]~input_o\ & (((\rf|reg14|q\(2)) # (\b_sel[0]~input_o\)))) ) ) ) # ( \rf|reg12|q\(2) & ( !\rf|reg15|q\(2) & ( (!\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\)) # 
-- (\rf|reg13|q\(2)))) # (\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\ & \rf|reg14|q\(2))))) ) ) ) # ( !\rf|reg12|q\(2) & ( !\rf|reg15|q\(2) & ( (!\b_sel[1]~input_o\ & (\rf|reg13|q\(2) & (\b_sel[0]~input_o\))) # (\b_sel[1]~input_o\ & (((!\b_sel[0]~input_o\ & 
-- \rf|reg14|q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg13|ALT_INV_q\(2),
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \ALT_INV_b_sel[0]~input_o\,
	datad => \rf|reg14|ALT_INV_q\(2),
	datae => \rf|reg12|ALT_INV_q\(2),
	dataf => \rf|reg15|ALT_INV_q\(2),
	combout => \rf|b1|Mux13~3_combout\);

-- Location: LABCELL_X17_Y3_N27
\rf|b1|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux13~2_combout\ = ( \rf|reg9|q\(2) & ( \rf|reg10|q\(2) & ( (!\b_sel[0]~input_o\ & (((\rf|reg8|q\(2))) # (\b_sel[1]~input_o\))) # (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|reg11|q\(2))))) ) ) ) # ( !\rf|reg9|q\(2) & ( \rf|reg10|q\(2) & ( 
-- (!\b_sel[0]~input_o\ & (((\rf|reg8|q\(2))) # (\b_sel[1]~input_o\))) # (\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & ((\rf|reg11|q\(2))))) ) ) ) # ( \rf|reg9|q\(2) & ( !\rf|reg10|q\(2) & ( (!\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & (\rf|reg8|q\(2)))) # 
-- (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|reg11|q\(2))))) ) ) ) # ( !\rf|reg9|q\(2) & ( !\rf|reg10|q\(2) & ( (!\b_sel[0]~input_o\ & (!\b_sel[1]~input_o\ & (\rf|reg8|q\(2)))) # (\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & ((\rf|reg11|q\(2))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|reg8|ALT_INV_q\(2),
	datad => \rf|reg11|ALT_INV_q\(2),
	datae => \rf|reg9|ALT_INV_q\(2),
	dataf => \rf|reg10|ALT_INV_q\(2),
	combout => \rf|b1|Mux13~2_combout\);

-- Location: LABCELL_X17_Y2_N51
\rf|b1|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux13~1_combout\ = ( \rf|reg4|q\(2) & ( \rf|reg7|q\(2) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\) # ((\rf|reg5|q\(2))))) # (\b_sel[1]~input_o\ & (((\rf|reg6|q\(2))) # (\b_sel[0]~input_o\))) ) ) ) # ( !\rf|reg4|q\(2) & ( \rf|reg7|q\(2) & ( 
-- (!\b_sel[1]~input_o\ & (\b_sel[0]~input_o\ & ((\rf|reg5|q\(2))))) # (\b_sel[1]~input_o\ & (((\rf|reg6|q\(2))) # (\b_sel[0]~input_o\))) ) ) ) # ( \rf|reg4|q\(2) & ( !\rf|reg7|q\(2) & ( (!\b_sel[1]~input_o\ & ((!\b_sel[0]~input_o\) # ((\rf|reg5|q\(2))))) # 
-- (\b_sel[1]~input_o\ & (!\b_sel[0]~input_o\ & (\rf|reg6|q\(2)))) ) ) ) # ( !\rf|reg4|q\(2) & ( !\rf|reg7|q\(2) & ( (!\b_sel[1]~input_o\ & (\b_sel[0]~input_o\ & ((\rf|reg5|q\(2))))) # (\b_sel[1]~input_o\ & (!\b_sel[0]~input_o\ & (\rf|reg6|q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[1]~input_o\,
	datab => \ALT_INV_b_sel[0]~input_o\,
	datac => \rf|reg6|ALT_INV_q\(2),
	datad => \rf|reg5|ALT_INV_q\(2),
	datae => \rf|reg4|ALT_INV_q\(2),
	dataf => \rf|reg7|ALT_INV_q\(2),
	combout => \rf|b1|Mux13~1_combout\);

-- Location: LABCELL_X18_Y3_N6
\rf|b1|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux13~4_combout\ = ( \rf|b1|Mux13~2_combout\ & ( \rf|b1|Mux13~1_combout\ & ( (!\b_sel[3]~input_o\ & (((\rf|b1|Mux13~0_combout\)) # (\b_sel[2]~input_o\))) # (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|b1|Mux13~3_combout\)))) ) ) ) # ( 
-- !\rf|b1|Mux13~2_combout\ & ( \rf|b1|Mux13~1_combout\ & ( (!\b_sel[3]~input_o\ & (((\rf|b1|Mux13~0_combout\)) # (\b_sel[2]~input_o\))) # (\b_sel[3]~input_o\ & (\b_sel[2]~input_o\ & ((\rf|b1|Mux13~3_combout\)))) ) ) ) # ( \rf|b1|Mux13~2_combout\ & ( 
-- !\rf|b1|Mux13~1_combout\ & ( (!\b_sel[3]~input_o\ & (!\b_sel[2]~input_o\ & (\rf|b1|Mux13~0_combout\))) # (\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\) # ((\rf|b1|Mux13~3_combout\)))) ) ) ) # ( !\rf|b1|Mux13~2_combout\ & ( !\rf|b1|Mux13~1_combout\ & ( 
-- (!\b_sel[3]~input_o\ & (!\b_sel[2]~input_o\ & (\rf|b1|Mux13~0_combout\))) # (\b_sel[3]~input_o\ & (\b_sel[2]~input_o\ & ((\rf|b1|Mux13~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[3]~input_o\,
	datab => \ALT_INV_b_sel[2]~input_o\,
	datac => \rf|b1|ALT_INV_Mux13~0_combout\,
	datad => \rf|b1|ALT_INV_Mux13~3_combout\,
	datae => \rf|b1|ALT_INV_Mux13~2_combout\,
	dataf => \rf|b1|ALT_INV_Mux13~1_combout\,
	combout => \rf|b1|Mux13~4_combout\);

-- Location: LABCELL_X17_Y3_N15
\m2|res[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[3]~5_combout\ = ( \rf|b1|Mux13~4_combout\ & ( (!\const_sel~input_o\) # (\const_in[2]~input_o\) ) ) # ( !\rf|b1|Mux13~4_combout\ & ( (\const_in[2]~input_o\ & \const_sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_in[2]~input_o\,
	datac => \ALT_INV_const_sel~input_o\,
	datae => \rf|b1|ALT_INV_Mux13~4_combout\,
	combout => \m2|res[3]~5_combout\);

-- Location: MLABCELL_X14_Y4_N9
\m2|res[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[1]~9_combout\ = ( \m2|res[3]~5_combout\ & ( ((!\m2|res[1]~7_combout\ & ((\m2|res[1]~8_combout\))) # (\m2|res[1]~7_combout\ & (\m2|res[1]~6_combout\))) # (\op_sel[3]~input_o\) ) ) # ( !\m2|res[3]~5_combout\ & ( (!\op_sel[3]~input_o\ & 
-- ((!\m2|res[1]~7_combout\ & ((\m2|res[1]~8_combout\))) # (\m2|res[1]~7_combout\ & (\m2|res[1]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[3]~input_o\,
	datab => \m2|ALT_INV_res[1]~7_combout\,
	datac => \m2|ALT_INV_res[1]~6_combout\,
	datad => \m2|ALT_INV_res[1]~8_combout\,
	datae => \m2|ALT_INV_res[3]~5_combout\,
	combout => \m2|res[1]~9_combout\);

-- Location: MLABCELL_X14_Y4_N42
\m2|res[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[1]~12_combout\ = ( \m2|res[1]~9_combout\ & ( (!\data_sel~input_o\ & (((!\m2|res[1]~10_combout\)) # (\m2|res[1]~11_combout\))) # (\data_sel~input_o\ & (((\data_in[1]~input_o\)))) ) ) # ( !\m2|res[1]~9_combout\ & ( (!\data_sel~input_o\ & 
-- (\m2|res[1]~11_combout\ & (\m2|res[1]~10_combout\))) # (\data_sel~input_o\ & (((\data_in[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_res[1]~11_combout\,
	datab => \ALT_INV_data_sel~input_o\,
	datac => \m2|ALT_INV_res[1]~10_combout\,
	datad => \ALT_INV_data_in[1]~input_o\,
	datae => \m2|ALT_INV_res[1]~9_combout\,
	combout => \m2|res[1]~12_combout\);

-- Location: FF_X14_Y4_N35
\rf|reg11|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[1]~12_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg11|q\(1));

-- Location: MLABCELL_X14_Y4_N36
\rf|b1|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux14~3_combout\ = ( \rf|reg15|q\(1) & ( \rf|reg7|q\(1) & ( ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(1)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(1)))) # (\b_sel[2]~input_o\) ) ) ) # ( !\rf|reg15|q\(1) & ( \rf|reg7|q\(1) & ( (!\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(1)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(1))))) # (\b_sel[2]~input_o\ & (!\b_sel[3]~input_o\)) ) ) ) # ( \rf|reg15|q\(1) & ( !\rf|reg7|q\(1) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(1)))) # 
-- (\b_sel[3]~input_o\ & (\rf|reg11|q\(1))))) # (\b_sel[2]~input_o\ & (\b_sel[3]~input_o\)) ) ) ) # ( !\rf|reg15|q\(1) & ( !\rf|reg7|q\(1) & ( (!\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & ((\rf|reg3|q\(1)))) # (\b_sel[3]~input_o\ & (\rf|reg11|q\(1))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg11|ALT_INV_q\(1),
	datad => \rf|reg3|ALT_INV_q\(1),
	datae => \rf|reg15|ALT_INV_q\(1),
	dataf => \rf|reg7|ALT_INV_q\(1),
	combout => \rf|b1|Mux14~3_combout\);

-- Location: MLABCELL_X14_Y2_N9
\rf|b1|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux14~2_combout\ = ( \rf|reg10|q\(1) & ( \rf|reg2|q\(1) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(1))) # (\b_sel[3]~input_o\ & ((\rf|reg14|q\(1))))) ) ) ) # ( !\rf|reg10|q\(1) & ( \rf|reg2|q\(1) & ( (!\b_sel[2]~input_o\ & 
-- (!\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(1))) # (\b_sel[3]~input_o\ & ((\rf|reg14|q\(1)))))) ) ) ) # ( \rf|reg10|q\(1) & ( !\rf|reg2|q\(1) & ( (!\b_sel[2]~input_o\ & (\b_sel[3]~input_o\)) # (\b_sel[2]~input_o\ & 
-- ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(1))) # (\b_sel[3]~input_o\ & ((\rf|reg14|q\(1)))))) ) ) ) # ( !\rf|reg10|q\(1) & ( !\rf|reg2|q\(1) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg6|q\(1))) # (\b_sel[3]~input_o\ & ((\rf|reg14|q\(1)))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg6|ALT_INV_q\(1),
	datad => \rf|reg14|ALT_INV_q\(1),
	datae => \rf|reg10|ALT_INV_q\(1),
	dataf => \rf|reg2|ALT_INV_q\(1),
	combout => \rf|b1|Mux14~2_combout\);

-- Location: LABCELL_X15_Y2_N15
\rf|b1|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux14~1_combout\ = ( \rf|reg9|q\(1) & ( \rf|reg1|q\(1) & ( (!\b_sel[2]~input_o\) # ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(1))) # (\b_sel[3]~input_o\ & ((\rf|reg13|q\(1))))) ) ) ) # ( !\rf|reg9|q\(1) & ( \rf|reg1|q\(1) & ( (!\b_sel[3]~input_o\ & 
-- (((!\b_sel[2]~input_o\)) # (\rf|reg5|q\(1)))) # (\b_sel[3]~input_o\ & (((\b_sel[2]~input_o\ & \rf|reg13|q\(1))))) ) ) ) # ( \rf|reg9|q\(1) & ( !\rf|reg1|q\(1) & ( (!\b_sel[3]~input_o\ & (\rf|reg5|q\(1) & (\b_sel[2]~input_o\))) # (\b_sel[3]~input_o\ & 
-- (((!\b_sel[2]~input_o\) # (\rf|reg13|q\(1))))) ) ) ) # ( !\rf|reg9|q\(1) & ( !\rf|reg1|q\(1) & ( (\b_sel[2]~input_o\ & ((!\b_sel[3]~input_o\ & (\rf|reg5|q\(1))) # (\b_sel[3]~input_o\ & ((\rf|reg13|q\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg5|ALT_INV_q\(1),
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \ALT_INV_b_sel[2]~input_o\,
	datad => \rf|reg13|ALT_INV_q\(1),
	datae => \rf|reg9|ALT_INV_q\(1),
	dataf => \rf|reg1|ALT_INV_q\(1),
	combout => \rf|b1|Mux14~1_combout\);

-- Location: MLABCELL_X14_Y2_N18
\rf|b1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux14~0_combout\ = ( \rf|reg12|q\(1) & ( \rf|reg8|q\(1) & ( ((!\b_sel[2]~input_o\ & ((\rf|reg0|q\(1)))) # (\b_sel[2]~input_o\ & (\rf|reg4|q\(1)))) # (\b_sel[3]~input_o\) ) ) ) # ( !\rf|reg12|q\(1) & ( \rf|reg8|q\(1) & ( (!\b_sel[2]~input_o\ & 
-- (((\rf|reg0|q\(1))) # (\b_sel[3]~input_o\))) # (\b_sel[2]~input_o\ & (!\b_sel[3]~input_o\ & (\rf|reg4|q\(1)))) ) ) ) # ( \rf|reg12|q\(1) & ( !\rf|reg8|q\(1) & ( (!\b_sel[2]~input_o\ & (!\b_sel[3]~input_o\ & ((\rf|reg0|q\(1))))) # (\b_sel[2]~input_o\ & 
-- (((\rf|reg4|q\(1))) # (\b_sel[3]~input_o\))) ) ) ) # ( !\rf|reg12|q\(1) & ( !\rf|reg8|q\(1) & ( (!\b_sel[3]~input_o\ & ((!\b_sel[2]~input_o\ & ((\rf|reg0|q\(1)))) # (\b_sel[2]~input_o\ & (\rf|reg4|q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[2]~input_o\,
	datab => \ALT_INV_b_sel[3]~input_o\,
	datac => \rf|reg4|ALT_INV_q\(1),
	datad => \rf|reg0|ALT_INV_q\(1),
	datae => \rf|reg12|ALT_INV_q\(1),
	dataf => \rf|reg8|ALT_INV_q\(1),
	combout => \rf|b1|Mux14~0_combout\);

-- Location: MLABCELL_X14_Y2_N36
\rf|b1|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|b1|Mux14~4_combout\ = ( \rf|b1|Mux14~1_combout\ & ( \rf|b1|Mux14~0_combout\ & ( (!\b_sel[1]~input_o\) # ((!\b_sel[0]~input_o\ & ((\rf|b1|Mux14~2_combout\))) # (\b_sel[0]~input_o\ & (\rf|b1|Mux14~3_combout\))) ) ) ) # ( !\rf|b1|Mux14~1_combout\ & ( 
-- \rf|b1|Mux14~0_combout\ & ( (!\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|b1|Mux14~2_combout\)))) # (\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & (\rf|b1|Mux14~3_combout\))) ) ) ) # ( \rf|b1|Mux14~1_combout\ & ( !\rf|b1|Mux14~0_combout\ & ( 
-- (!\b_sel[0]~input_o\ & (\b_sel[1]~input_o\ & ((\rf|b1|Mux14~2_combout\)))) # (\b_sel[0]~input_o\ & ((!\b_sel[1]~input_o\) # ((\rf|b1|Mux14~3_combout\)))) ) ) ) # ( !\rf|b1|Mux14~1_combout\ & ( !\rf|b1|Mux14~0_combout\ & ( (\b_sel[1]~input_o\ & 
-- ((!\b_sel[0]~input_o\ & ((\rf|b1|Mux14~2_combout\))) # (\b_sel[0]~input_o\ & (\rf|b1|Mux14~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_sel[0]~input_o\,
	datab => \ALT_INV_b_sel[1]~input_o\,
	datac => \rf|b1|ALT_INV_Mux14~3_combout\,
	datad => \rf|b1|ALT_INV_Mux14~2_combout\,
	datae => \rf|b1|ALT_INV_Mux14~1_combout\,
	dataf => \rf|b1|ALT_INV_Mux14~0_combout\,
	combout => \rf|b1|Mux14~4_combout\);

-- Location: LABCELL_X17_Y1_N39
\m2|res[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[2]~1_combout\ = ( \rf|b1|Mux14~4_combout\ & ( (!\const_sel~input_o\) # (\const_in[1]~input_o\) ) ) # ( !\rf|b1|Mux14~4_combout\ & ( (\const_sel~input_o\ & \const_in[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_const_sel~input_o\,
	datad => \ALT_INV_const_in[1]~input_o\,
	dataf => \rf|b1|ALT_INV_Mux14~4_combout\,
	combout => \m2|res[2]~1_combout\);

-- Location: LABCELL_X17_Y1_N36
\m2|res[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[0]~2_combout\ = ( \m2|res[14]~0_combout\ & ( (!\op_sel[0]~input_o\ & ((\op_sel[1]~input_o\))) # (\op_sel[0]~input_o\ & (\m2|res[2]~1_combout\)) ) ) # ( !\m2|res[14]~0_combout\ & ( (\m2|res[2]~1_combout\ & \op_sel[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_res[2]~1_combout\,
	datac => \ALT_INV_op_sel[1]~input_o\,
	datad => \ALT_INV_op_sel[0]~input_o\,
	dataf => \m2|ALT_INV_res[14]~0_combout\,
	combout => \m2|res[0]~2_combout\);

-- Location: LABCELL_X15_Y1_N21
\al_shift|al|lu|m4|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \al_shift|al|lu|m4|Mux15~0_combout\ = ( \rf|b1|Mux15~4_combout\ & ( \rf|a1|Mux15~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\const_in[0]~input_o\ & (\const_sel~input_o\ & !\op_sel[0]~input_o\)))) ) ) ) # ( !\rf|b1|Mux15~4_combout\ & ( 
-- \rf|a1|Mux15~4_combout\ & ( !\op_sel[1]~input_o\ $ (((!\op_sel[0]~input_o\ & ((!\const_in[0]~input_o\) # (!\const_sel~input_o\))))) ) ) ) # ( \rf|b1|Mux15~4_combout\ & ( !\rf|a1|Mux15~4_combout\ & ( (!\op_sel[1]~input_o\ & (\op_sel[0]~input_o\ & 
-- ((!\const_sel~input_o\) # (\const_in[0]~input_o\)))) # (\op_sel[1]~input_o\ & (((!\const_sel~input_o\) # (\op_sel[0]~input_o\)) # (\const_in[0]~input_o\))) ) ) ) # ( !\rf|b1|Mux15~4_combout\ & ( !\rf|a1|Mux15~4_combout\ & ( (!\op_sel[1]~input_o\ & 
-- (\const_in[0]~input_o\ & (\const_sel~input_o\ & \op_sel[0]~input_o\))) # (\op_sel[1]~input_o\ & (((\const_in[0]~input_o\ & \const_sel~input_o\)) # (\op_sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111010100011111011101010110101010101010011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[1]~input_o\,
	datab => \ALT_INV_const_in[0]~input_o\,
	datac => \ALT_INV_const_sel~input_o\,
	datad => \ALT_INV_op_sel[0]~input_o\,
	datae => \rf|b1|ALT_INV_Mux15~4_combout\,
	dataf => \rf|a1|ALT_INV_Mux15~4_combout\,
	combout => \al_shift|al|lu|m4|Mux15~0_combout\);

-- Location: LABCELL_X17_Y1_N18
\m2|res[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[0]~3_combout\ = ( \al_shift|al|lu|m4|Mux15~0_combout\ & ( ((\rf|a1|Mux15~4_combout\ & \al_shift|al|au|Add0~1_sumout\)) # (\op_sel[2]~input_o\) ) ) # ( !\al_shift|al|lu|m4|Mux15~0_combout\ & ( (!\op_sel[2]~input_o\ & (\rf|a1|Mux15~4_combout\ & 
-- \al_shift|al|au|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001001010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_sel[2]~input_o\,
	datab => \rf|a1|ALT_INV_Mux15~4_combout\,
	datad => \al_shift|al|au|ALT_INV_Add0~1_sumout\,
	dataf => \al_shift|al|lu|m4|ALT_INV_Mux15~0_combout\,
	combout => \m2|res[0]~3_combout\);

-- Location: LABCELL_X17_Y1_N0
\m2|res[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|res[0]~4_combout\ = ( \m2|res[0]~2_combout\ & ( \m2|res[0]~3_combout\ & ( (!\data_sel~input_o\) # (\data_in[0]~input_o\) ) ) ) # ( !\m2|res[0]~2_combout\ & ( \m2|res[0]~3_combout\ & ( (!\data_sel~input_o\ & (!\op_sel[3]~input_o\)) # 
-- (\data_sel~input_o\ & ((\data_in[0]~input_o\))) ) ) ) # ( \m2|res[0]~2_combout\ & ( !\m2|res[0]~3_combout\ & ( (!\data_sel~input_o\ & (\op_sel[3]~input_o\)) # (\data_sel~input_o\ & ((\data_in[0]~input_o\))) ) ) ) # ( !\m2|res[0]~2_combout\ & ( 
-- !\m2|res[0]~3_combout\ & ( (\data_in[0]~input_o\ & \data_sel~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110000111111001100000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_op_sel[3]~input_o\,
	datac => \ALT_INV_data_in[0]~input_o\,
	datad => \ALT_INV_data_sel~input_o\,
	datae => \m2|ALT_INV_res[0]~2_combout\,
	dataf => \m2|ALT_INV_res[0]~3_combout\,
	combout => \m2|res[0]~4_combout\);

-- Location: FF_X15_Y3_N8
\rf|reg0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|res[0]~4_combout\,
	sload => VCC,
	ena => \rf|d1|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|reg0|q\(0));

-- Location: LABCELL_X15_Y3_N15
\rf|a1|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux15~0_combout\ = ( \rf|reg2|q\(0) & ( \rf|reg3|q\(0) & ( ((!\a_sel[0]~input_o\ & (\rf|reg0|q\(0))) # (\a_sel[0]~input_o\ & ((\rf|reg1|q\(0))))) # (\a_sel[1]~input_o\) ) ) ) # ( !\rf|reg2|q\(0) & ( \rf|reg3|q\(0) & ( (!\a_sel[1]~input_o\ & 
-- ((!\a_sel[0]~input_o\ & (\rf|reg0|q\(0))) # (\a_sel[0]~input_o\ & ((\rf|reg1|q\(0)))))) # (\a_sel[1]~input_o\ & (\a_sel[0]~input_o\)) ) ) ) # ( \rf|reg2|q\(0) & ( !\rf|reg3|q\(0) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & (\rf|reg0|q\(0))) # 
-- (\a_sel[0]~input_o\ & ((\rf|reg1|q\(0)))))) # (\a_sel[1]~input_o\ & (!\a_sel[0]~input_o\)) ) ) ) # ( !\rf|reg2|q\(0) & ( !\rf|reg3|q\(0) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & (\rf|reg0|q\(0))) # (\a_sel[0]~input_o\ & ((\rf|reg1|q\(0)))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg0|ALT_INV_q\(0),
	datad => \rf|reg1|ALT_INV_q\(0),
	datae => \rf|reg2|ALT_INV_q\(0),
	dataf => \rf|reg3|ALT_INV_q\(0),
	combout => \rf|a1|Mux15~0_combout\);

-- Location: LABCELL_X15_Y3_N51
\rf|a1|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux15~3_combout\ = ( \rf|reg15|q\(0) & ( \rf|reg14|q\(0) & ( ((!\a_sel[0]~input_o\ & ((\rf|reg12|q\(0)))) # (\a_sel[0]~input_o\ & (\rf|reg13|q\(0)))) # (\a_sel[1]~input_o\) ) ) ) # ( !\rf|reg15|q\(0) & ( \rf|reg14|q\(0) & ( (!\a_sel[1]~input_o\ & 
-- ((!\a_sel[0]~input_o\ & ((\rf|reg12|q\(0)))) # (\a_sel[0]~input_o\ & (\rf|reg13|q\(0))))) # (\a_sel[1]~input_o\ & (!\a_sel[0]~input_o\)) ) ) ) # ( \rf|reg15|q\(0) & ( !\rf|reg14|q\(0) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|reg12|q\(0)))) 
-- # (\a_sel[0]~input_o\ & (\rf|reg13|q\(0))))) # (\a_sel[1]~input_o\ & (\a_sel[0]~input_o\)) ) ) ) # ( !\rf|reg15|q\(0) & ( !\rf|reg14|q\(0) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|reg12|q\(0)))) # (\a_sel[0]~input_o\ & (\rf|reg13|q\(0))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[1]~input_o\,
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg13|ALT_INV_q\(0),
	datad => \rf|reg12|ALT_INV_q\(0),
	datae => \rf|reg15|ALT_INV_q\(0),
	dataf => \rf|reg14|ALT_INV_q\(0),
	combout => \rf|a1|Mux15~3_combout\);

-- Location: LABCELL_X15_Y3_N0
\rf|a1|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux15~2_combout\ = ( \rf|reg11|q\(0) & ( \rf|reg8|q\(0) & ( (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\)) # (\rf|reg10|q\(0)))) # (\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\) # (\rf|reg9|q\(0))))) ) ) ) # ( !\rf|reg11|q\(0) & ( \rf|reg8|q\(0) & ( 
-- (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\)) # (\rf|reg10|q\(0)))) # (\a_sel[0]~input_o\ & (((\rf|reg9|q\(0) & !\a_sel[1]~input_o\)))) ) ) ) # ( \rf|reg11|q\(0) & ( !\rf|reg8|q\(0) & ( (!\a_sel[0]~input_o\ & (\rf|reg10|q\(0) & ((\a_sel[1]~input_o\)))) 
-- # (\a_sel[0]~input_o\ & (((\a_sel[1]~input_o\) # (\rf|reg9|q\(0))))) ) ) ) # ( !\rf|reg11|q\(0) & ( !\rf|reg8|q\(0) & ( (!\a_sel[0]~input_o\ & (\rf|reg10|q\(0) & ((\a_sel[1]~input_o\)))) # (\a_sel[0]~input_o\ & (((\rf|reg9|q\(0) & !\a_sel[1]~input_o\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf|reg10|ALT_INV_q\(0),
	datab => \ALT_INV_a_sel[0]~input_o\,
	datac => \rf|reg9|ALT_INV_q\(0),
	datad => \ALT_INV_a_sel[1]~input_o\,
	datae => \rf|reg11|ALT_INV_q\(0),
	dataf => \rf|reg8|ALT_INV_q\(0),
	combout => \rf|a1|Mux15~2_combout\);

-- Location: LABCELL_X15_Y2_N45
\rf|a1|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux15~1_combout\ = ( \rf|reg7|q\(0) & ( \rf|reg6|q\(0) & ( ((!\a_sel[0]~input_o\ & ((\rf|reg4|q\(0)))) # (\a_sel[0]~input_o\ & (\rf|reg5|q\(0)))) # (\a_sel[1]~input_o\) ) ) ) # ( !\rf|reg7|q\(0) & ( \rf|reg6|q\(0) & ( (!\a_sel[0]~input_o\ & 
-- (((\rf|reg4|q\(0)) # (\a_sel[1]~input_o\)))) # (\a_sel[0]~input_o\ & (\rf|reg5|q\(0) & (!\a_sel[1]~input_o\))) ) ) ) # ( \rf|reg7|q\(0) & ( !\rf|reg6|q\(0) & ( (!\a_sel[0]~input_o\ & (((!\a_sel[1]~input_o\ & \rf|reg4|q\(0))))) # (\a_sel[0]~input_o\ & 
-- (((\a_sel[1]~input_o\)) # (\rf|reg5|q\(0)))) ) ) ) # ( !\rf|reg7|q\(0) & ( !\rf|reg6|q\(0) & ( (!\a_sel[1]~input_o\ & ((!\a_sel[0]~input_o\ & ((\rf|reg4|q\(0)))) # (\a_sel[0]~input_o\ & (\rf|reg5|q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[0]~input_o\,
	datab => \rf|reg5|ALT_INV_q\(0),
	datac => \ALT_INV_a_sel[1]~input_o\,
	datad => \rf|reg4|ALT_INV_q\(0),
	datae => \rf|reg7|ALT_INV_q\(0),
	dataf => \rf|reg6|ALT_INV_q\(0),
	combout => \rf|a1|Mux15~1_combout\);

-- Location: LABCELL_X15_Y3_N30
\rf|a1|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rf|a1|Mux15~4_combout\ = ( \rf|a1|Mux15~2_combout\ & ( \rf|a1|Mux15~1_combout\ & ( (!\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\)) # (\rf|a1|Mux15~0_combout\))) # (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\) # (\rf|a1|Mux15~3_combout\)))) ) ) ) # ( 
-- !\rf|a1|Mux15~2_combout\ & ( \rf|a1|Mux15~1_combout\ & ( (!\a_sel[3]~input_o\ & (((\a_sel[2]~input_o\)) # (\rf|a1|Mux15~0_combout\))) # (\a_sel[3]~input_o\ & (((\rf|a1|Mux15~3_combout\ & \a_sel[2]~input_o\)))) ) ) ) # ( \rf|a1|Mux15~2_combout\ & ( 
-- !\rf|a1|Mux15~1_combout\ & ( (!\a_sel[3]~input_o\ & (\rf|a1|Mux15~0_combout\ & ((!\a_sel[2]~input_o\)))) # (\a_sel[3]~input_o\ & (((!\a_sel[2]~input_o\) # (\rf|a1|Mux15~3_combout\)))) ) ) ) # ( !\rf|a1|Mux15~2_combout\ & ( !\rf|a1|Mux15~1_combout\ & ( 
-- (!\a_sel[3]~input_o\ & (\rf|a1|Mux15~0_combout\ & ((!\a_sel[2]~input_o\)))) # (\a_sel[3]~input_o\ & (((\rf|a1|Mux15~3_combout\ & \a_sel[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_sel[3]~input_o\,
	datab => \rf|a1|ALT_INV_Mux15~0_combout\,
	datac => \rf|a1|ALT_INV_Mux15~3_combout\,
	datad => \ALT_INV_a_sel[2]~input_o\,
	datae => \rf|a1|ALT_INV_Mux15~2_combout\,
	dataf => \rf|a1|ALT_INV_Mux15~1_combout\,
	combout => \rf|a1|Mux15~4_combout\);

-- Location: LABCELL_X56_Y13_N0
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


