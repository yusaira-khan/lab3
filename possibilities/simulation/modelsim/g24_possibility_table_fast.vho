-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/16/2015 18:11:58"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g24_possibility_table IS
    PORT (
	TC_EN : IN std_logic;
	TC_RST : IN std_logic;
	TM_IN : IN std_logic;
	TM_EN : IN std_logic;
	CLK : IN std_logic;
	TC_LAST : OUT std_logic;
	TM_ADDR : OUT std_logic_vector(11 DOWNTO 0);
	TM_OUT : OUT std_logic
	);
END g24_possibility_table;

-- Design Ports Information
-- TC_LAST	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[1]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[2]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[3]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[5]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[7]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[8]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[9]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[10]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[11]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_OUT	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_RST	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_EN	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_EN	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_IN	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g24_possibility_table IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TC_EN : std_logic;
SIGNAL ww_TC_RST : std_logic;
SIGNAL ww_TM_IN : std_logic;
SIGNAL ww_TM_EN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_TC_LAST : std_logic;
SIGNAL ww_TM_ADDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_TM_OUT : std_logic;
SIGNAL \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TC_RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \color_counter2|Mux2~0_combout\ : std_logic;
SIGNAL \TC_RST~combout\ : std_logic;
SIGNAL \TC_RST~clkctrl_outclk\ : std_logic;
SIGNAL \TC_EN~combout\ : std_logic;
SIGNAL \color_counter3|process_0~4_combout\ : std_logic;
SIGNAL \color_counter1|Mux3~0_combout\ : std_logic;
SIGNAL \color_counter0|Mux3~0_combout\ : std_logic;
SIGNAL \color_counter0|process_0~0_combout\ : std_logic;
SIGNAL \color_counter0|Mux1~0_combout\ : std_logic;
SIGNAL \color_counter0|Mux2~0_combout\ : std_logic;
SIGNAL \color_counter1|process_0~0_combout\ : std_logic;
SIGNAL \color_counter1|Mux2~0_combout\ : std_logic;
SIGNAL \color_counter2|process_0~4_combout\ : std_logic;
SIGNAL \color_counter2|Mux3~0_combout\ : std_logic;
SIGNAL \color_counter3|Mux1~0_combout\ : std_logic;
SIGNAL \color_counter3|process_0~5_combout\ : std_logic;
SIGNAL \color_counter3|Mux3~0_combout\ : std_logic;
SIGNAL \color_counter3|Mux2~0_combout\ : std_logic;
SIGNAL \color_counter2|Mux1~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~26_combout\ : std_logic;
SIGNAL \last_reached~regout\ : std_logic;
SIGNAL \color_counter1|Mux1~0_combout\ : std_logic;
SIGNAL \TM_EN~combout\ : std_logic;
SIGNAL \table_memory[0]~0_combout\ : std_logic;
SIGNAL \TM_OUT~0_combout\ : std_logic;
SIGNAL \TM_IN~combout\ : std_logic;
SIGNAL \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0~portadataout\ : std_logic;
SIGNAL \color_counter1|color\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \color_counter2|color\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \color_counter3|color\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \color_counter0|color\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_TC_RST~clkctrl_outclk\ : std_logic;

BEGIN

ww_TC_EN <= TC_EN;
ww_TC_RST <= TC_RST;
ww_TM_IN <= TM_IN;
ww_TM_EN <= TM_EN;
ww_CLK <= CLK;
TC_LAST <= ww_TC_LAST;
TM_ADDR <= ww_TM_ADDR;
TM_OUT <= ww_TM_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\(0) <= vcc;

\table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\(0) <= \TM_IN~combout\;

\table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\color_counter3|color\(2) & \color_counter3|color\(1) & \color_counter3|color\(0) & \color_counter2|color\(2) & \color_counter2|color\(1) & 
\color_counter2|color\(0) & \color_counter1|color\(2) & \color_counter1|color\(1) & \color_counter1|color\(0) & \color_counter0|color\(2) & \color_counter0|color\(1) & \color_counter0|color\(0));

\table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\color_counter3|color\(2) & \color_counter3|color\(1) & \color_counter3|color\(0) & \color_counter2|color\(2) & \color_counter2|color\(1) & 
\color_counter2|color\(0) & \color_counter1|color\(2) & \color_counter1|color\(1) & \color_counter1|color\(0) & \color_counter0|color\(2) & \color_counter0|color\(1) & \color_counter0|color\(0));

\table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0~portadataout\ <= \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\TC_RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \TC_RST~combout\);
\ALT_INV_TC_RST~clkctrl_outclk\ <= NOT \TC_RST~clkctrl_outclk\;

-- Location: LCCOMB_X42_Y21_N16
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\color_counter3|color\(2) & (\color_counter3|color\(0) & !\color_counter2|color\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter3|color\(2),
	datab => \color_counter3|color\(0),
	datad => \color_counter2|color\(1),
	combout => \Equal0~9_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y21_N2
\color_counter2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter2|Mux2~0_combout\ = (!\color_counter2|color\(2) & (\color_counter2|color\(1) $ (\color_counter2|color\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter2|color\(2),
	datac => \color_counter2|color\(1),
	datad => \color_counter2|color\(0),
	combout => \color_counter2|Mux2~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TC_RST~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TC_RST,
	combout => \TC_RST~combout\);

-- Location: CLKCTRL_G1
\TC_RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \TC_RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \TC_RST~clkctrl_outclk\);

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TC_EN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TC_EN,
	combout => \TC_EN~combout\);

-- Location: LCCOMB_X43_Y20_N2
\color_counter3|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter3|process_0~4_combout\ = (!\TC_RST~combout\ & \TC_EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TC_RST~combout\,
	datad => \TC_EN~combout\,
	combout => \color_counter3|process_0~4_combout\);

-- Location: LCCOMB_X43_Y20_N18
\color_counter1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter1|Mux3~0_combout\ = (!\color_counter1|color\(0) & ((!\color_counter1|color\(1)) # (!\color_counter1|color\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter1|color\(2),
	datab => \color_counter1|color\(1),
	datac => \color_counter1|color\(0),
	combout => \color_counter1|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y20_N8
\color_counter0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter0|Mux3~0_combout\ = (!\color_counter0|color\(0) & ((!\color_counter0|color\(2)) # (!\color_counter0|color\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \color_counter0|color\(1),
	datac => \color_counter0|color\(0),
	datad => \color_counter0|color\(2),
	combout => \color_counter0|Mux3~0_combout\);

-- Location: LCCOMB_X43_Y20_N8
\color_counter0|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter0|process_0~0_combout\ = (!\TC_RST~combout\ & (!\last_reached~regout\ & \TC_EN~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TC_RST~combout\,
	datac => \last_reached~regout\,
	datad => \TC_EN~combout\,
	combout => \color_counter0|process_0~0_combout\);

-- Location: LCFF_X42_Y20_N9
\color_counter0|color[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter0|Mux3~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter0|color\(0));

-- Location: LCCOMB_X42_Y20_N12
\color_counter0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter0|Mux1~0_combout\ = (\color_counter0|color\(1) & (!\color_counter0|color\(2) & \color_counter0|color\(0))) # (!\color_counter0|color\(1) & (\color_counter0|color\(2) & !\color_counter0|color\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \color_counter0|color\(1),
	datac => \color_counter0|color\(2),
	datad => \color_counter0|color\(0),
	combout => \color_counter0|Mux1~0_combout\);

-- Location: LCFF_X42_Y20_N13
\color_counter0|color[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter0|Mux1~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter0|color\(2));

-- Location: LCCOMB_X42_Y20_N18
\color_counter0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter0|Mux2~0_combout\ = (!\color_counter0|color\(2) & (\color_counter0|color\(0) $ (\color_counter0|color\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter0|color\(0),
	datac => \color_counter0|color\(1),
	datad => \color_counter0|color\(2),
	combout => \color_counter0|Mux2~0_combout\);

-- Location: LCFF_X42_Y20_N19
\color_counter0|color[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter0|Mux2~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter0|color\(1));

-- Location: LCCOMB_X43_Y20_N20
\color_counter1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter1|process_0~0_combout\ = (\color_counter0|color\(0) & (\color_counter3|process_0~4_combout\ & (!\color_counter0|color\(1) & \color_counter0|color\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter0|color\(0),
	datab => \color_counter3|process_0~4_combout\,
	datac => \color_counter0|color\(1),
	datad => \color_counter0|color\(2),
	combout => \color_counter1|process_0~0_combout\);

-- Location: LCFF_X43_Y20_N19
\color_counter1|color[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter1|Mux3~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter1|color\(0));

-- Location: LCCOMB_X43_Y20_N4
\color_counter1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter1|Mux2~0_combout\ = (!\color_counter1|color\(2) & (\color_counter1|color\(1) $ (\color_counter1|color\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter1|color\(2),
	datac => \color_counter1|color\(1),
	datad => \color_counter1|color\(0),
	combout => \color_counter1|Mux2~0_combout\);

-- Location: LCFF_X43_Y20_N5
\color_counter1|color[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter1|Mux2~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter1|color\(1));

-- Location: LCCOMB_X43_Y20_N26
\color_counter2|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter2|process_0~4_combout\ = (\color_counter1|color\(2) & (\color_counter3|process_0~4_combout\ & (!\color_counter1|color\(1) & \color_counter1|color\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter1|color\(2),
	datab => \color_counter3|process_0~4_combout\,
	datac => \color_counter1|color\(1),
	datad => \color_counter1|color\(0),
	combout => \color_counter2|process_0~4_combout\);

-- Location: LCFF_X42_Y21_N3
\color_counter2|color[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter2|Mux2~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter2|color\(1));

-- Location: LCCOMB_X42_Y21_N0
\color_counter2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter2|Mux3~0_combout\ = (!\color_counter2|color\(0) & ((!\color_counter2|color\(1)) # (!\color_counter2|color\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter2|color\(2),
	datac => \color_counter2|color\(0),
	datad => \color_counter2|color\(1),
	combout => \color_counter2|Mux3~0_combout\);

-- Location: LCFF_X42_Y21_N1
\color_counter2|color[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter2|Mux3~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter2|color\(0));

-- Location: LCCOMB_X42_Y21_N10
\color_counter3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter3|Mux1~0_combout\ = (\color_counter3|color\(1) & (!\color_counter3|color\(2) & \color_counter3|color\(0))) # (!\color_counter3|color\(1) & (\color_counter3|color\(2) & !\color_counter3|color\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter3|color\(1),
	datac => \color_counter3|color\(2),
	datad => \color_counter3|color\(0),
	combout => \color_counter3|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y21_N4
\color_counter3|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter3|process_0~5_combout\ = (\color_counter2|color\(2) & (!\color_counter2|color\(1) & (\color_counter3|process_0~4_combout\ & \color_counter2|color\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter2|color\(2),
	datab => \color_counter2|color\(1),
	datac => \color_counter3|process_0~4_combout\,
	datad => \color_counter2|color\(0),
	combout => \color_counter3|process_0~5_combout\);

-- Location: LCFF_X42_Y21_N11
\color_counter3|color[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter3|Mux1~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter3|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter3|color\(2));

-- Location: LCCOMB_X42_Y21_N30
\color_counter3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter3|Mux3~0_combout\ = (!\color_counter3|color\(0) & ((!\color_counter3|color\(2)) # (!\color_counter3|color\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter3|color\(1),
	datac => \color_counter3|color\(0),
	datad => \color_counter3|color\(2),
	combout => \color_counter3|Mux3~0_combout\);

-- Location: LCFF_X42_Y21_N31
\color_counter3|color[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter3|Mux3~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter3|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter3|color\(0));

-- Location: LCCOMB_X42_Y21_N24
\color_counter3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter3|Mux2~0_combout\ = (!\color_counter3|color\(2) & (\color_counter3|color\(1) $ (\color_counter3|color\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter3|color\(2),
	datac => \color_counter3|color\(1),
	datad => \color_counter3|color\(0),
	combout => \color_counter3|Mux2~0_combout\);

-- Location: LCFF_X42_Y21_N25
\color_counter3|color[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter3|Mux2~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter3|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter3|color\(1));

-- Location: LCCOMB_X42_Y21_N12
\color_counter2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter2|Mux1~0_combout\ = (\color_counter2|color\(1) & (!\color_counter2|color\(2) & \color_counter2|color\(0))) # (!\color_counter2|color\(1) & (\color_counter2|color\(2) & !\color_counter2|color\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \color_counter2|color\(1),
	datac => \color_counter2|color\(2),
	datad => \color_counter2|color\(0),
	combout => \color_counter2|Mux1~0_combout\);

-- Location: LCFF_X42_Y21_N13
\color_counter2|color[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter2|Mux1~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter2|color\(2));

-- Location: LCCOMB_X42_Y21_N22
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~9_combout\ & (\color_counter2|color\(0) & (!\color_counter3|color\(1) & \color_counter2|color\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \color_counter2|color\(0),
	datac => \color_counter3|color\(1),
	datad => \color_counter2|color\(2),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X43_Y20_N28
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\color_counter0|color\(0) & (\Equal0~6_combout\ & (!\color_counter0|color\(1) & \color_counter0|color\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter0|color\(0),
	datab => \Equal0~6_combout\,
	datac => \color_counter0|color\(1),
	datad => \color_counter0|color\(2),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X43_Y20_N0
\Equal0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~26_combout\ = (\color_counter1|color\(2) & (\Equal0~3_combout\ & (!\color_counter1|color\(1) & \color_counter1|color\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_counter1|color\(2),
	datab => \Equal0~3_combout\,
	datac => \color_counter1|color\(1),
	datad => \color_counter1|color\(0),
	combout => \Equal0~26_combout\);

-- Location: LCFF_X43_Y20_N1
last_reached : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal0~26_combout\,
	aclr => \ALT_INV_TC_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \last_reached~regout\);

-- Location: LCCOMB_X43_Y20_N6
\color_counter1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color_counter1|Mux1~0_combout\ = (\color_counter1|color\(1) & (!\color_counter1|color\(2) & \color_counter1|color\(0))) # (!\color_counter1|color\(1) & (\color_counter1|color\(2) & !\color_counter1|color\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \color_counter1|color\(1),
	datac => \color_counter1|color\(2),
	datad => \color_counter1|color\(0),
	combout => \color_counter1|Mux1~0_combout\);

-- Location: LCFF_X43_Y20_N7
\color_counter1|color[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \color_counter1|Mux1~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \color_counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_counter1|color\(2));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_EN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_EN,
	combout => \TM_EN~combout\);

-- Location: LCCOMB_X43_Y20_N22
\table_memory[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \table_memory[0]~0_combout\ = (\TC_RST~combout\ & \TM_EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TC_RST~combout\,
	datad => \TM_EN~combout\,
	combout => \table_memory[0]~0_combout\);

-- Location: LCCOMB_X43_Y20_N24
\TM_OUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_OUT~0_combout\ = (\TC_RST~combout\ & !\TM_EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TC_RST~combout\,
	datad => \TM_EN~combout\,
	combout => \TM_OUT~0_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_IN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_IN,
	combout => \TM_IN~combout\);

-- Location: M4K_X41_Y20
\table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:table_memory_rtl_0|altsyncram_2rd1:auto_generated|altsyncram_4eh1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 1,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \table_memory[0]~0_combout\,
	clk0 => \CLK~clkctrl_outclk\,
	clk1 => \CLK~clkctrl_outclk\,
	ena0 => \TM_OUT~0_combout\,
	ena1 => \table_memory[0]~0_combout\,
	portadatain => \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TC_LAST~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \last_reached~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_LAST);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter0|color\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(0));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter0|color\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(1));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter0|color\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(2));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter1|color\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(3));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter1|color\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(4));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter1|color\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(5));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter2|color\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(6));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter2|color\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(7));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter2|color\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(8));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter3|color\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(9));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter3|color\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(10));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \color_counter3|color\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(11));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_OUT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \table_memory_rtl_0|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_OUT);
END structure;


