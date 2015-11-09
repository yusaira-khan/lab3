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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/09/2015 14:45:36"
                                                            
-- Vhdl Test Bench template for design  :  allseg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY allseg_vhd_tst IS
END allseg_vhd_tst;
ARCHITECTURE allseg_arch OF allseg_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL code : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RippleBlank_In : STD_LOGIC;
SIGNAL RippleBlank_Out : STD_LOGIC;
SIGNAL segments : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT allseg
	PORT (
	code : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RippleBlank_In : IN STD_LOGIC;
	RippleBlank_Out : OUT STD_LOGIC;
	segments : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : allseg
	PORT MAP (
-- list connections between master ports and signals
	code => code,
	RippleBlank_In => RippleBlank_In,
	RippleBlank_Out => RippleBlank_Out,
	segments => segments,
	segments1 => segments1,
	segments2 => segments2,
	segments3 => segments3
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END allseg_arch;
