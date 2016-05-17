--IP Functional Simulation Model
--VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:04:42:SJ cbx_simgen 2013:06:12:18:04:00:SJ  VERSION_END


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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = mux21 15 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  blinker_addr_router_001 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (88 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (4 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (88 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END blinker_addr_router_001;

 ARCHITECTURE RTL OF blinker_addr_router_001 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_blinker_addr_router_001_src_channel_24m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_channel_25m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_channel_31m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_channel_33m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_channel_34m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_channel_40m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_channel_41m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_channel_42m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_channel_43m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_data_27m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_data_28m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_data_36m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_data_37m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_data_45m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_blinker_addr_router_001_src_data_46m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range122w294w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range143w269w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range125w276w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range146w268w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_blinker_addr_router_001_src_channel_1_281_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_blinker_addr_router_001_src_channel_2_298_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_blinker_addr_router_001_src_channel_3_315_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_blinker_addr_router_001_src_channel_4_332_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range122w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range125w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range143w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range146w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range122w294w(0) <= wire_w_sink_data_range122w(0) AND wire_w_lg_w_sink_data_range125w276w(0);
	wire_w_lg_w_sink_data_range143w269w(0) <= wire_w_sink_data_range143w(0) AND wire_w_lg_w_sink_data_range146w268w(0);
	wire_w1w(0) <= NOT s_wire_blinker_addr_router_001_src_channel_1_281_dataout;
	wire_w_lg_w_sink_data_range125w276w(0) <= NOT wire_w_sink_data_range125w(0);
	wire_w_lg_w_sink_data_range146w268w(0) <= NOT wire_w_sink_data_range146w(0);
	s_wire_blinker_addr_router_001_src_channel_1_281_dataout <= (((wire_w_lg_w_sink_data_range143w269w(0) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_blinker_addr_router_001_src_channel_2_298_dataout <= ((((((((((((NOT sink_data(40)) AND wire_w_lg_w_sink_data_range125w276w(0)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_blinker_addr_router_001_src_channel_3_315_dataout <= ((((((((((wire_w_lg_w_sink_data_range122w294w(0) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	s_wire_blinker_addr_router_001_src_channel_4_332_dataout <= (((((((((((((NOT sink_data(39)) AND (NOT sink_data(40))) AND sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND sink_data(51));
	sink_ready <= src_ready;
	src_channel <= ( s_wire_blinker_addr_router_001_src_channel_4_332_dataout & wire_blinker_addr_router_001_src_channel_40m_dataout & wire_blinker_addr_router_001_src_channel_41m_dataout & wire_blinker_addr_router_001_src_channel_42m_dataout & wire_blinker_addr_router_001_src_channel_43m_dataout);
	src_data <= ( sink_data(88 DOWNTO 79) & s_wire_blinker_addr_router_001_src_channel_4_332_dataout & wire_blinker_addr_router_001_src_data_45m_dataout & wire_blinker_addr_router_001_src_data_46m_dataout & sink_data(75 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range122w(0) <= sink_data(40);
	wire_w_sink_data_range125w(0) <= sink_data(41);
	wire_w_sink_data_range143w(0) <= sink_data(47);
	wire_w_sink_data_range146w(0) <= sink_data(48);
	wire_blinker_addr_router_001_src_channel_24m_dataout <= wire_w1w(0) AND NOT(s_wire_blinker_addr_router_001_src_channel_2_298_dataout);
	wire_blinker_addr_router_001_src_channel_25m_dataout <= s_wire_blinker_addr_router_001_src_channel_1_281_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_2_298_dataout);
	wire_blinker_addr_router_001_src_channel_31m_dataout <= s_wire_blinker_addr_router_001_src_channel_2_298_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_3_315_dataout);
	wire_blinker_addr_router_001_src_channel_33m_dataout <= wire_blinker_addr_router_001_src_channel_24m_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_3_315_dataout);
	wire_blinker_addr_router_001_src_channel_34m_dataout <= wire_blinker_addr_router_001_src_channel_25m_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_3_315_dataout);
	wire_blinker_addr_router_001_src_channel_40m_dataout <= wire_blinker_addr_router_001_src_channel_31m_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_4_332_dataout);
	wire_blinker_addr_router_001_src_channel_41m_dataout <= s_wire_blinker_addr_router_001_src_channel_3_315_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_4_332_dataout);
	wire_blinker_addr_router_001_src_channel_42m_dataout <= wire_blinker_addr_router_001_src_channel_33m_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_4_332_dataout);
	wire_blinker_addr_router_001_src_channel_43m_dataout <= wire_blinker_addr_router_001_src_channel_34m_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_4_332_dataout);
	wire_blinker_addr_router_001_src_data_27m_dataout <= wire_w1w(0) AND NOT(s_wire_blinker_addr_router_001_src_channel_2_298_dataout);
	wire_blinker_addr_router_001_src_data_28m_dataout <= s_wire_blinker_addr_router_001_src_channel_1_281_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_2_298_dataout);
	wire_blinker_addr_router_001_src_data_36m_dataout <= wire_blinker_addr_router_001_src_data_27m_dataout OR s_wire_blinker_addr_router_001_src_channel_3_315_dataout;
	wire_blinker_addr_router_001_src_data_37m_dataout <= wire_blinker_addr_router_001_src_data_28m_dataout OR s_wire_blinker_addr_router_001_src_channel_3_315_dataout;
	wire_blinker_addr_router_001_src_data_45m_dataout <= wire_blinker_addr_router_001_src_data_36m_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_4_332_dataout);
	wire_blinker_addr_router_001_src_data_46m_dataout <= wire_blinker_addr_router_001_src_data_37m_dataout AND NOT(s_wire_blinker_addr_router_001_src_channel_4_332_dataout);

 END RTL; --blinker_addr_router_001
--synopsys translate_on
--VALID FILE
