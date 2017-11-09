////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_timesim.v
// /___/   /\     Timestamp: Thu Nov 09 13:58:45 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf top.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim top.ncd top_timesim.v 
// Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-10-13)
// Input file	: top.ncd
// Output file	: \\ugradfs\joelchin\win\ELEC3500\Lab_7\netgen\par\top_timesim.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  clk, clr, rst, winrnd, leds_on, leds_ctrl
);
  input clk;
  output clr;
  input rst;
  input winrnd;
  output leds_on;
  output [1 : 0] leds_ctrl;
  wire clk_BUFGP;
  wire rst_IBUF_220;
  wire \div256inst/Mcount_count_cy[1] ;
  wire \div256inst/Mcount_count_cy[3] ;
  wire winrnd_IBUF_235;
  wire \div256inst/slowenable9_0 ;
  wire \MCinst/state_FSM_FFd1_240 ;
  wire \div256inst/slowenable4_241 ;
  wire \MCinst/state_FSM_FFd3_242 ;
  wire \MCinst/state_FSM_FFd2_243 ;
  wire \MCinst/state_FSM_FFd3-In70_SW0/O ;
  wire \MCinst/state_FSM_FFd3-In25_0 ;
  wire N11_0;
  wire slowenable_0;
  wire \MCinst/state_FSM_FFd3-In111/O ;
  wire \lfsrinst/lfsr[9] ;
  wire \MCinst/state_FSM_FFd1-In18_0 ;
  wire \MCinst/state_FSM_FFd1-In15/O ;
  wire \MCinst/state_FSM_FFd1-In7_0 ;
  wire \lfsrinst/lfsr_31_253 ;
  wire \lfsrinst/lfsr[3] ;
  wire \lfsrinst/lfsr[0] ;
  wire rst_IBUF_shift1_256;
  wire rst_IBUF_shift2_257;
  wire rst_IBUF_shift3_258;
  wire rst_IBUF_shift4_259;
  wire rst_IBUF_shift5_260;
  wire \lfsrinst/lfsr[2] ;
  wire \lfsrinst/lfsr[1] ;
  wire \div256inst/count<0>/DXMUX_310 ;
  wire \div256inst/count<0>/XORF_308 ;
  wire \div256inst/count<0>/LOGIC_ONE_307 ;
  wire \div256inst/count<0>/CYINIT_306 ;
  wire \div256inst/count<0>/CYSELF_297 ;
  wire \div256inst/count<0>/BXINV_295 ;
  wire \div256inst/count<0>/DYMUX_288 ;
  wire \div256inst/count<0>/XORG_286 ;
  wire \div256inst/count<0>/CYMUXG_285 ;
  wire \div256inst/Mcount_count_cy[0] ;
  wire \div256inst/count<0>/LOGIC_ZERO_283 ;
  wire \div256inst/count<0>/CYSELG_274 ;
  wire \div256inst/count<0>/G ;
  wire \div256inst/count<0>/SRINV_272 ;
  wire \div256inst/count<0>/CLKINV_271 ;
  wire \div256inst/count<2>/FFX/RST ;
  wire \div256inst/count<2>/DXMUX_366 ;
  wire \div256inst/count<2>/XORF_364 ;
  wire \div256inst/count<2>/CYINIT_363 ;
  wire \div256inst/count<2>/F ;
  wire \div256inst/count<2>/DYMUX_347 ;
  wire \div256inst/count<2>/XORG_345 ;
  wire \div256inst/Mcount_count_cy[2] ;
  wire \div256inst/count<2>/CYSELF_343 ;
  wire \div256inst/count<2>/CYMUXFAST_342 ;
  wire \div256inst/count<2>/CYAND_341 ;
  wire \div256inst/count<2>/FASTCARRY_340 ;
  wire \div256inst/count<2>/CYMUXG2_339 ;
  wire \div256inst/count<2>/CYMUXF2_338 ;
  wire \div256inst/count<2>/LOGIC_ZERO_337 ;
  wire \div256inst/count<2>/CYSELG_328 ;
  wire \div256inst/count<2>/G ;
  wire \div256inst/count<2>/SRINV_326 ;
  wire \div256inst/count<2>/CLKINV_325 ;
  wire \div256inst/count<4>/DXMUX_422 ;
  wire \div256inst/count<4>/XORF_420 ;
  wire \div256inst/count<4>/CYINIT_419 ;
  wire \div256inst/count<4>/F ;
  wire \div256inst/count<4>/DYMUX_403 ;
  wire \div256inst/count<4>/XORG_401 ;
  wire \div256inst/Mcount_count_cy[4] ;
  wire \div256inst/count<4>/CYSELF_399 ;
  wire \div256inst/count<4>/CYMUXFAST_398 ;
  wire \div256inst/count<4>/CYAND_397 ;
  wire \div256inst/count<4>/FASTCARRY_396 ;
  wire \div256inst/count<4>/CYMUXG2_395 ;
  wire \div256inst/count<4>/CYMUXF2_394 ;
  wire \div256inst/count<4>/LOGIC_ZERO_393 ;
  wire \div256inst/count<4>/CYSELG_384 ;
  wire \div256inst/count<4>/G ;
  wire \div256inst/count<4>/SRINV_382 ;
  wire \div256inst/count<4>/CLKINV_381 ;
  wire \div256inst/count<6>/DXMUX_471 ;
  wire \div256inst/count<6>/XORF_469 ;
  wire \div256inst/count<6>/LOGIC_ZERO_468 ;
  wire \div256inst/count<6>/CYINIT_467 ;
  wire \div256inst/count<6>/CYSELF_458 ;
  wire \div256inst/count<6>/F ;
  wire \div256inst/count<6>/DYMUX_450 ;
  wire \div256inst/count<6>/XORG_448 ;
  wire \div256inst/Mcount_count_cy[6] ;
  wire \div256inst/count<7>_rt_445 ;
  wire \div256inst/count<6>/SRINV_437 ;
  wire \div256inst/count<6>/CLKINV_436 ;
  wire \clk/INBUF ;
  wire \clr/O ;
  wire \leds_on/O ;
  wire \winrnd/INBUF ;
  wire \leds_ctrl<0>/O ;
  wire \leds_ctrl<1>/O ;
  wire \rst/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \MCinst/state_FSM_FFd2/FFX/RST ;
  wire \MCinst/state_FSM_FFd2/DXMUX_562 ;
  wire \MCinst/state_FSM_FFd2/F5MUX_560 ;
  wire N7;
  wire \MCinst/state_FSM_FFd2/BXINV_553 ;
  wire N6;
  wire \MCinst/state_FSM_FFd2/CLKINV_544 ;
  wire \MCinst/state_FSM_FFd3/DXMUX_597 ;
  wire \MCinst/state_FSM_FFd3-In ;
  wire \MCinst/state_FSM_FFd3-In70_SW0/O_pack_2 ;
  wire \MCinst/state_FSM_FFd3/CLKINV_580 ;
  wire N11;
  wire \MCinst/state_FSM_FFd3-In111/O_pack_2 ;
  wire slowenable;
  wire \div256inst/slowenable4_pack_1 ;
  wire \MCinst/state_FSM_FFd1/DXMUX_680 ;
  wire \MCinst/state_FSM_FFd1-In ;
  wire \MCinst/state_FSM_FFd1-In15/O_pack_2 ;
  wire \MCinst/state_FSM_FFd1/CLKINV_664 ;
  wire \lfsrinst/lfsr_31/DYMUX_712 ;
  wire \lfsrinst/Mshreg_lfsr_3 ;
  wire \lfsrinst/lfsr_31/DIG_MUX_701 ;
  wire \lfsrinst/lfsr_31/CLKINV_699 ;
  wire \lfsrinst/lfsr_31/WSG ;
  wire \lfsrinst/lfsr_31/SRINV_695 ;
  wire \lfsrinst/lfsr<9>/DYMUX_732 ;
  wire \lfsrinst/lfsr_9_xor0000 ;
  wire \lfsrinst/lfsr<9>/CLKINV_721 ;
  wire \div256inst/slowenable9_748 ;
  wire \rst_IBUF_shift2/DXMUX_768 ;
  wire \rst_IBUF_shift2/DYMUX_760 ;
  wire \rst_IBUF_shift2/BYINV_759 ;
  wire \rst_IBUF_shift2/SRINV_758 ;
  wire \rst_IBUF_shift2/CLKINV_757 ;
  wire \rst_IBUF_shift4/FFX/RST ;
  wire \rst_IBUF_shift4/DXMUX_792 ;
  wire \rst_IBUF_shift4/DYMUX_784 ;
  wire \rst_IBUF_shift4/SRINV_782 ;
  wire \rst_IBUF_shift4/CLKINV_781 ;
  wire clr_OBUF_820;
  wire \MCinst/state_FSM_FFd3-In25_812 ;
  wire \rst_IBUF_shift5/DYMUX_830 ;
  wire \rst_IBUF_shift5/CLKINV_827 ;
  wire leds_ctrl_1_OBUF_858;
  wire \MCinst/state_FSM_FFd1-In18_850 ;
  wire leds_on_OBUF_882;
  wire leds_ctrl_0_OBUF_874;
  wire \lfsrinst/lfsr<1>/DXMUX_901 ;
  wire \lfsrinst/lfsr<1>/DYMUX_894 ;
  wire \lfsrinst/lfsr<1>/SRINV_892 ;
  wire \lfsrinst/lfsr<1>/CLKINV_891 ;
  wire \lfsrinst/lfsr<2>/DXMUX_934 ;
  wire \lfsrinst/lfsr<2>/DYMUX_926 ;
  wire \lfsrinst/lfsr_311_923 ;
  wire \lfsrinst/lfsr<2>/SRINV_916 ;
  wire \lfsrinst/lfsr<2>/CLKINV_915 ;
  wire \MCinst/state_FSM_FFd1-In7_950 ;
  wire \MCinst/state_FSM_FFd3/FFX/RSTAND_602 ;
  wire \MCinst/state_FSM_FFd1/FFX/RSTAND_685 ;
  wire \lfsrinst/lfsr<9>/FFY/RSTAND_737 ;
  wire \rst_IBUF_shift5/FFY/RSTAND_835 ;
  wire VCC;
  wire GND;
  wire \NLW_lfsrinst/Mshreg_lfsr_3/SRL16E_Q15_UNCONNECTED ;
  wire [7 : 0] \div256inst/count ;
  wire [0 : 0] \div256inst/Mcount_count_lut ;
  initial $sdf_annotate("netgen/par/top_timesim.sdf");
  X_ZERO #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/LOGIC_ZERO  (
    .O(\div256inst/count<0>/LOGIC_ZERO_283 )
  );
  X_ONE #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/LOGIC_ONE  (
    .O(\div256inst/count<0>/LOGIC_ONE_307 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/DXMUX  (
    .I(\div256inst/count<0>/XORF_308 ),
    .O(\div256inst/count<0>/DXMUX_310 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/XORF  (
    .I0(\div256inst/count<0>/CYINIT_306 ),
    .I1(\div256inst/Mcount_count_lut [0]),
    .O(\div256inst/count<0>/XORF_308 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/CYMUXF  (
    .IA(\div256inst/count<0>/LOGIC_ONE_307 ),
    .IB(\div256inst/count<0>/CYINIT_306 ),
    .SEL(\div256inst/count<0>/CYSELF_297 ),
    .O(\div256inst/Mcount_count_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/CYINIT  (
    .I(\div256inst/count<0>/BXINV_295 ),
    .O(\div256inst/count<0>/CYINIT_306 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/CYSELF  (
    .I(\div256inst/Mcount_count_lut [0]),
    .O(\div256inst/count<0>/CYSELF_297 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/BXINV  (
    .I(1'b0),
    .O(\div256inst/count<0>/BXINV_295 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/DYMUX  (
    .I(\div256inst/count<0>/XORG_286 ),
    .O(\div256inst/count<0>/DYMUX_288 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/XORG  (
    .I0(\div256inst/Mcount_count_cy[0] ),
    .I1(\div256inst/count<0>/G ),
    .O(\div256inst/count<0>/XORG_286 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/COUTUSED  (
    .I(\div256inst/count<0>/CYMUXG_285 ),
    .O(\div256inst/Mcount_count_cy[1] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/CYMUXG  (
    .IA(\div256inst/count<0>/LOGIC_ZERO_283 ),
    .IB(\div256inst/Mcount_count_cy[0] ),
    .SEL(\div256inst/count<0>/CYSELG_274 ),
    .O(\div256inst/count<0>/CYMUXG_285 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/CYSELG  (
    .I(\div256inst/count<0>/G ),
    .O(\div256inst/count<0>/CYSELG_274 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/SRINV  (
    .I(rst_IBUF_220),
    .O(\div256inst/count<0>/SRINV_272 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\div256inst/count<0>/CLKINV_271 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/FFX/RSTOR  (
    .I(\div256inst/count<2>/SRINV_326 ),
    .O(\div256inst/count<2>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 1'b0 ))
  \div256inst/count_2  (
    .I(\div256inst/count<2>/DXMUX_366 ),
    .CE(VCC),
    .CLK(\div256inst/count<2>/CLKINV_325 ),
    .SET(GND),
    .RST(\div256inst/count<2>/FFX/RST ),
    .O(\div256inst/count [2])
  );
  X_ZERO #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/LOGIC_ZERO  (
    .O(\div256inst/count<2>/LOGIC_ZERO_337 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/DXMUX  (
    .I(\div256inst/count<2>/XORF_364 ),
    .O(\div256inst/count<2>/DXMUX_366 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/XORF  (
    .I0(\div256inst/count<2>/CYINIT_363 ),
    .I1(\div256inst/count<2>/F ),
    .O(\div256inst/count<2>/XORF_364 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/CYMUXF  (
    .IA(\div256inst/count<2>/LOGIC_ZERO_337 ),
    .IB(\div256inst/count<2>/CYINIT_363 ),
    .SEL(\div256inst/count<2>/CYSELF_343 ),
    .O(\div256inst/Mcount_count_cy[2] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/CYMUXF2  (
    .IA(\div256inst/count<2>/LOGIC_ZERO_337 ),
    .IB(\div256inst/count<2>/LOGIC_ZERO_337 ),
    .SEL(\div256inst/count<2>/CYSELF_343 ),
    .O(\div256inst/count<2>/CYMUXF2_338 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/CYINIT  (
    .I(\div256inst/Mcount_count_cy[1] ),
    .O(\div256inst/count<2>/CYINIT_363 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/CYSELF  (
    .I(\div256inst/count<2>/F ),
    .O(\div256inst/count<2>/CYSELF_343 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/DYMUX  (
    .I(\div256inst/count<2>/XORG_345 ),
    .O(\div256inst/count<2>/DYMUX_347 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/XORG  (
    .I0(\div256inst/Mcount_count_cy[2] ),
    .I1(\div256inst/count<2>/G ),
    .O(\div256inst/count<2>/XORG_345 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/COUTUSED  (
    .I(\div256inst/count<2>/CYMUXFAST_342 ),
    .O(\div256inst/Mcount_count_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/FASTCARRY  (
    .I(\div256inst/Mcount_count_cy[1] ),
    .O(\div256inst/count<2>/FASTCARRY_340 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/CYAND  (
    .I0(\div256inst/count<2>/CYSELG_328 ),
    .I1(\div256inst/count<2>/CYSELF_343 ),
    .O(\div256inst/count<2>/CYAND_341 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/CYMUXFAST  (
    .IA(\div256inst/count<2>/CYMUXG2_339 ),
    .IB(\div256inst/count<2>/FASTCARRY_340 ),
    .SEL(\div256inst/count<2>/CYAND_341 ),
    .O(\div256inst/count<2>/CYMUXFAST_342 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/CYMUXG2  (
    .IA(\div256inst/count<2>/LOGIC_ZERO_337 ),
    .IB(\div256inst/count<2>/CYMUXF2_338 ),
    .SEL(\div256inst/count<2>/CYSELG_328 ),
    .O(\div256inst/count<2>/CYMUXG2_339 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/CYSELG  (
    .I(\div256inst/count<2>/G ),
    .O(\div256inst/count<2>/CYSELG_328 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/SRINV  (
    .I(rst_IBUF_220),
    .O(\div256inst/count<2>/SRINV_326 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\div256inst/count<2>/CLKINV_325 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 1'b0 ))
  \div256inst/count_3  (
    .I(\div256inst/count<2>/DYMUX_347 ),
    .CE(VCC),
    .CLK(\div256inst/count<2>/CLKINV_325 ),
    .SET(GND),
    .RST(\div256inst/count<2>/SRINV_326 ),
    .O(\div256inst/count [3])
  );
  X_ZERO #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/LOGIC_ZERO  (
    .O(\div256inst/count<4>/LOGIC_ZERO_393 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/DXMUX  (
    .I(\div256inst/count<4>/XORF_420 ),
    .O(\div256inst/count<4>/DXMUX_422 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/XORF  (
    .I0(\div256inst/count<4>/CYINIT_419 ),
    .I1(\div256inst/count<4>/F ),
    .O(\div256inst/count<4>/XORF_420 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/CYMUXF  (
    .IA(\div256inst/count<4>/LOGIC_ZERO_393 ),
    .IB(\div256inst/count<4>/CYINIT_419 ),
    .SEL(\div256inst/count<4>/CYSELF_399 ),
    .O(\div256inst/Mcount_count_cy[4] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/CYMUXF2  (
    .IA(\div256inst/count<4>/LOGIC_ZERO_393 ),
    .IB(\div256inst/count<4>/LOGIC_ZERO_393 ),
    .SEL(\div256inst/count<4>/CYSELF_399 ),
    .O(\div256inst/count<4>/CYMUXF2_394 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/CYINIT  (
    .I(\div256inst/Mcount_count_cy[3] ),
    .O(\div256inst/count<4>/CYINIT_419 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/CYSELF  (
    .I(\div256inst/count<4>/F ),
    .O(\div256inst/count<4>/CYSELF_399 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/DYMUX  (
    .I(\div256inst/count<4>/XORG_401 ),
    .O(\div256inst/count<4>/DYMUX_403 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/XORG  (
    .I0(\div256inst/Mcount_count_cy[4] ),
    .I1(\div256inst/count<4>/G ),
    .O(\div256inst/count<4>/XORG_401 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/FASTCARRY  (
    .I(\div256inst/Mcount_count_cy[3] ),
    .O(\div256inst/count<4>/FASTCARRY_396 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/CYAND  (
    .I0(\div256inst/count<4>/CYSELG_384 ),
    .I1(\div256inst/count<4>/CYSELF_399 ),
    .O(\div256inst/count<4>/CYAND_397 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/CYMUXFAST  (
    .IA(\div256inst/count<4>/CYMUXG2_395 ),
    .IB(\div256inst/count<4>/FASTCARRY_396 ),
    .SEL(\div256inst/count<4>/CYAND_397 ),
    .O(\div256inst/count<4>/CYMUXFAST_398 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/CYMUXG2  (
    .IA(\div256inst/count<4>/LOGIC_ZERO_393 ),
    .IB(\div256inst/count<4>/CYMUXF2_394 ),
    .SEL(\div256inst/count<4>/CYSELG_384 ),
    .O(\div256inst/count<4>/CYMUXG2_395 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/CYSELG  (
    .I(\div256inst/count<4>/G ),
    .O(\div256inst/count<4>/CYSELG_384 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/SRINV  (
    .I(rst_IBUF_220),
    .O(\div256inst/count<4>/SRINV_382 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\div256inst/count<4>/CLKINV_381 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/LOGIC_ZERO  (
    .O(\div256inst/count<6>/LOGIC_ZERO_468 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/DXMUX  (
    .I(\div256inst/count<6>/XORF_469 ),
    .O(\div256inst/count<6>/DXMUX_471 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/XORF  (
    .I0(\div256inst/count<6>/CYINIT_467 ),
    .I1(\div256inst/count<6>/F ),
    .O(\div256inst/count<6>/XORF_469 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/CYMUXF  (
    .IA(\div256inst/count<6>/LOGIC_ZERO_468 ),
    .IB(\div256inst/count<6>/CYINIT_467 ),
    .SEL(\div256inst/count<6>/CYSELF_458 ),
    .O(\div256inst/Mcount_count_cy[6] )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/CYINIT  (
    .I(\div256inst/count<4>/CYMUXFAST_398 ),
    .O(\div256inst/count<6>/CYINIT_467 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/CYSELF  (
    .I(\div256inst/count<6>/F ),
    .O(\div256inst/count<6>/CYSELF_458 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/DYMUX  (
    .I(\div256inst/count<6>/XORG_448 ),
    .O(\div256inst/count<6>/DYMUX_450 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/XORG  (
    .I0(\div256inst/Mcount_count_cy[6] ),
    .I1(\div256inst/count<7>_rt_445 ),
    .O(\div256inst/count<6>/XORG_448 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/SRINV  (
    .I(rst_IBUF_220),
    .O(\div256inst/count<6>/SRINV_437 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\div256inst/count<6>/CLKINV_436 )
  );
  X_IPAD #(
    .LOC ( "PAD123" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD123" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD24" ))
  \clr/PAD  (
    .PAD(clr)
  );
  X_OBUF #(
    .LOC ( "PAD24" ))
  clr_OBUF (
    .I(\clr/O ),
    .O(clr)
  );
  X_OPAD #(
    .LOC ( "PAD22" ))
  \leds_on/PAD  (
    .PAD(leds_on)
  );
  X_OBUF #(
    .LOC ( "PAD22" ))
  leds_on_OBUF (
    .I(\leds_on/O ),
    .O(leds_on)
  );
  X_IPAD #(
    .LOC ( "PAD25" ))
  \winrnd/PAD  (
    .PAD(winrnd)
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  winrnd_IBUF (
    .I(winrnd),
    .O(\winrnd/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD21" ))
  \leds_ctrl<0>/PAD  (
    .PAD(leds_ctrl[0])
  );
  X_OBUF #(
    .LOC ( "PAD21" ))
  leds_ctrl_0_OBUF (
    .I(\leds_ctrl<0>/O ),
    .O(leds_ctrl[0])
  );
  X_OPAD #(
    .LOC ( "PAD28" ))
  \leds_ctrl<1>/PAD  (
    .PAD(leds_ctrl[1])
  );
  X_OBUF #(
    .LOC ( "PAD28" ))
  leds_ctrl_1_OBUF (
    .I(\leds_ctrl<1>/O ),
    .O(leds_ctrl[1])
  );
  X_IPAD #(
    .LOC ( "PAD23" ))
  \rst/PAD  (
    .PAD(rst)
  );
  X_BUF #(
    .LOC ( "PAD23" ))
  rst_IBUF (
    .I(rst),
    .O(\rst/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD23" ))
  \rst/IFF/IMUX  (
    .I(\rst/INBUF ),
    .O(rst_IBUF_220)
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_LUT4 #(
    .INIT ( 16'hEE7C ),
    .LOC ( "SLICE_X19Y36" ))
  \MCinst/state_FSM_FFd2-In1_G  (
    .ADR0(\div256inst/slowenable4_241 ),
    .ADR1(\MCinst/state_FSM_FFd2_243 ),
    .ADR2(\MCinst/state_FSM_FFd1_240 ),
    .ADR3(\MCinst/state_FSM_FFd3_242 ),
    .O(N7)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y36" ))
  \MCinst/state_FSM_FFd2/FFX/RSTOR  (
    .I(rst_IBUF_220),
    .O(\MCinst/state_FSM_FFd2/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y36" ),
    .INIT ( 1'b0 ))
  \MCinst/state_FSM_FFd2  (
    .I(\MCinst/state_FSM_FFd2/DXMUX_562 ),
    .CE(VCC),
    .CLK(\MCinst/state_FSM_FFd2/CLKINV_544 ),
    .SET(GND),
    .RST(\MCinst/state_FSM_FFd2/FFX/RST ),
    .O(\MCinst/state_FSM_FFd2_243 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y36" ))
  \MCinst/state_FSM_FFd2/DXMUX  (
    .I(\MCinst/state_FSM_FFd2/F5MUX_560 ),
    .O(\MCinst/state_FSM_FFd2/DXMUX_562 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y36" ))
  \MCinst/state_FSM_FFd2/F5MUX  (
    .IA(N6),
    .IB(N7),
    .SEL(\MCinst/state_FSM_FFd2/BXINV_553 ),
    .O(\MCinst/state_FSM_FFd2/F5MUX_560 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y36" ))
  \MCinst/state_FSM_FFd2/BXINV  (
    .I(\div256inst/slowenable9_0 ),
    .O(\MCinst/state_FSM_FFd2/BXINV_553 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y36" ))
  \MCinst/state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\MCinst/state_FSM_FFd2/CLKINV_544 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCFC ),
    .LOC ( "SLICE_X19Y36" ))
  \MCinst/state_FSM_FFd2-In1_F  (
    .ADR0(VCC),
    .ADR1(\MCinst/state_FSM_FFd2_243 ),
    .ADR2(\MCinst/state_FSM_FFd1_240 ),
    .ADR3(\MCinst/state_FSM_FFd3_242 ),
    .O(N6)
  );
  X_LUT4 #(
    .INIT ( 16'hFCEE ),
    .LOC ( "SLICE_X18Y42" ))
  \MCinst/state_FSM_FFd3-In70  (
    .ADR0(\MCinst/state_FSM_FFd3-In70_SW0/O ),
    .ADR1(\MCinst/state_FSM_FFd3-In25_0 ),
    .ADR2(N11_0),
    .ADR3(slowenable_0),
    .O(\MCinst/state_FSM_FFd3-In )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y42" ))
  \MCinst/state_FSM_FFd3/DXMUX  (
    .I(\MCinst/state_FSM_FFd3-In ),
    .O(\MCinst/state_FSM_FFd3/DXMUX_597 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y42" ))
  \MCinst/state_FSM_FFd3/YUSED  (
    .I(\MCinst/state_FSM_FFd3-In70_SW0/O_pack_2 ),
    .O(\MCinst/state_FSM_FFd3-In70_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y42" ))
  \MCinst/state_FSM_FFd3/CLKINV  (
    .I(clk_BUFGP),
    .O(\MCinst/state_FSM_FFd3/CLKINV_580 )
  );
  X_LUT4 #(
    .INIT ( 16'h5D5D ),
    .LOC ( "SLICE_X18Y42" ))
  \MCinst/state_FSM_FFd3-In70_SW0  (
    .ADR0(\MCinst/state_FSM_FFd2_243 ),
    .ADR1(\MCinst/state_FSM_FFd3_242 ),
    .ADR2(\MCinst/state_FSM_FFd1_240 ),
    .ADR3(VCC),
    .O(\MCinst/state_FSM_FFd3-In70_SW0/O_pack_2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y42" ))
  \N11/XUSED  (
    .I(N11),
    .O(N11_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y42" ))
  \N11/YUSED  (
    .I(\MCinst/state_FSM_FFd3-In111/O_pack_2 ),
    .O(\MCinst/state_FSM_FFd3-In111/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y29" ))
  \slowenable/XUSED  (
    .I(slowenable),
    .O(slowenable_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y29" ))
  \slowenable/YUSED  (
    .I(\div256inst/slowenable4_pack_1 ),
    .O(\div256inst/slowenable4_241 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y37" ))
  \MCinst/state_FSM_FFd1/DXMUX  (
    .I(\MCinst/state_FSM_FFd1-In ),
    .O(\MCinst/state_FSM_FFd1/DXMUX_680 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y37" ))
  \MCinst/state_FSM_FFd1/YUSED  (
    .I(\MCinst/state_FSM_FFd1-In15/O_pack_2 ),
    .O(\MCinst/state_FSM_FFd1-In15/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y37" ))
  \MCinst/state_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\MCinst/state_FSM_FFd1/CLKINV_664 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y40" ))
  \lfsrinst/lfsr_31/DYMUX  (
    .I(\lfsrinst/Mshreg_lfsr_3 ),
    .O(\lfsrinst/lfsr_31/DYMUX_712 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y40" ))
  \lfsrinst/lfsr_31/DIG_MUX  (
    .I(\lfsrinst/lfsr[9] ),
    .O(\lfsrinst/lfsr_31/DIG_MUX_701 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y40" ))
  \lfsrinst/lfsr_31/SRINV  (
    .I(1'b1),
    .O(\lfsrinst/lfsr_31/SRINV_695 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y40" ))
  \lfsrinst/lfsr_31/CLKINV  (
    .I(slowenable_0),
    .O(\lfsrinst/lfsr_31/CLKINV_699 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y40" ))
  \lfsrinst/lfsr<9>/DYMUX  (
    .I(\lfsrinst/lfsr_9_xor0000 ),
    .O(\lfsrinst/lfsr<9>/DYMUX_732 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y40" ))
  \lfsrinst/lfsr<9>/CLKINV  (
    .I(slowenable_0),
    .O(\lfsrinst/lfsr<9>/CLKINV_721 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \div256inst/slowenable9/XUSED  (
    .I(\div256inst/slowenable9_748 ),
    .O(\div256inst/slowenable9_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y39" ))
  \rst_IBUF_shift2/DXMUX  (
    .I(rst_IBUF_shift1_256),
    .O(\rst_IBUF_shift2/DXMUX_768 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y39" ))
  \rst_IBUF_shift2/DYMUX  (
    .I(\rst_IBUF_shift2/BYINV_759 ),
    .O(\rst_IBUF_shift2/DYMUX_760 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y39" ))
  \rst_IBUF_shift2/BYINV  (
    .I(1'b1),
    .O(\rst_IBUF_shift2/BYINV_759 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y39" ))
  \rst_IBUF_shift2/SRINV  (
    .I(rst_IBUF_220),
    .O(\rst_IBUF_shift2/SRINV_758 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y39" ))
  \rst_IBUF_shift2/CLKINV  (
    .I(slowenable_0),
    .O(\rst_IBUF_shift2/CLKINV_757 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y38" ))
  \rst_IBUF_shift4/FFX/RSTOR  (
    .I(\rst_IBUF_shift4/SRINV_782 ),
    .O(\rst_IBUF_shift4/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y38" ),
    .INIT ( 1'b0 ))
  rst_IBUF_shift4 (
    .I(\rst_IBUF_shift4/DXMUX_792 ),
    .CE(VCC),
    .CLK(\rst_IBUF_shift4/CLKINV_781 ),
    .SET(GND),
    .RST(\rst_IBUF_shift4/FFX/RST ),
    .O(rst_IBUF_shift4_259)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y38" ))
  \rst_IBUF_shift4/DXMUX  (
    .I(rst_IBUF_shift3_258),
    .O(\rst_IBUF_shift4/DXMUX_792 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y38" ))
  \rst_IBUF_shift4/DYMUX  (
    .I(rst_IBUF_shift2_257),
    .O(\rst_IBUF_shift4/DYMUX_784 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y38" ))
  \rst_IBUF_shift4/SRINV  (
    .I(rst_IBUF_220),
    .O(\rst_IBUF_shift4/SRINV_782 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y38" ))
  \rst_IBUF_shift4/CLKINV  (
    .I(slowenable_0),
    .O(\rst_IBUF_shift4/CLKINV_781 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y38" ),
    .INIT ( 1'b0 ))
  rst_IBUF_shift3 (
    .I(\rst_IBUF_shift4/DYMUX_784 ),
    .CE(VCC),
    .CLK(\rst_IBUF_shift4/CLKINV_781 ),
    .SET(GND),
    .RST(\rst_IBUF_shift4/SRINV_782 ),
    .O(rst_IBUF_shift3_258)
  );
  X_LUT4 #(
    .INIT ( 16'h5FF5 ),
    .LOC ( "SLICE_X18Y43" ))
  \MCinst/state_FSM_Out21  (
    .ADR0(\MCinst/state_FSM_FFd2_243 ),
    .ADR1(VCC),
    .ADR2(\MCinst/state_FSM_FFd1_240 ),
    .ADR3(\MCinst/state_FSM_FFd3_242 ),
    .O(clr_OBUF_820)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y43" ))
  \clr_OBUF/YUSED  (
    .I(\MCinst/state_FSM_FFd3-In25_812 ),
    .O(\MCinst/state_FSM_FFd3-In25_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X18Y43" ))
  \MCinst/state_FSM_FFd3-In25  (
    .ADR0(\MCinst/state_FSM_FFd2_243 ),
    .ADR1(\MCinst/state_FSM_FFd3_242 ),
    .ADR2(\MCinst/state_FSM_FFd1_240 ),
    .ADR3(winrnd_IBUF_235),
    .O(\MCinst/state_FSM_FFd3-In25_812 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y38" ))
  \rst_IBUF_shift5/DYMUX  (
    .I(rst_IBUF_shift4_259),
    .O(\rst_IBUF_shift5/DYMUX_830 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y38" ))
  \rst_IBUF_shift5/CLKINV  (
    .I(slowenable_0),
    .O(\rst_IBUF_shift5/CLKINV_827 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y36" ))
  \leds_ctrl_1_OBUF/YUSED  (
    .I(\MCinst/state_FSM_FFd1-In18_850 ),
    .O(\MCinst/state_FSM_FFd1-In18_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y41" ))
  \lfsrinst/lfsr<1>/DXMUX  (
    .I(\lfsrinst/lfsr[2] ),
    .O(\lfsrinst/lfsr<1>/DXMUX_901 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y41" ))
  \lfsrinst/lfsr<1>/DYMUX  (
    .I(\lfsrinst/lfsr[1] ),
    .O(\lfsrinst/lfsr<1>/DYMUX_894 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y41" ))
  \lfsrinst/lfsr<1>/SRINV  (
    .I(rst_IBUF_220),
    .O(\lfsrinst/lfsr<1>/SRINV_892 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y41" ))
  \lfsrinst/lfsr<1>/CLKINV  (
    .I(slowenable_0),
    .O(\lfsrinst/lfsr<1>/CLKINV_891 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y41" ))
  \lfsrinst/lfsr<2>/DXMUX  (
    .I(\lfsrinst/lfsr[3] ),
    .O(\lfsrinst/lfsr<2>/DXMUX_934 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y41" ))
  \lfsrinst/lfsr<2>/DYMUX  (
    .I(\lfsrinst/lfsr_311_923 ),
    .O(\lfsrinst/lfsr<2>/DYMUX_926 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y41" ))
  \lfsrinst/lfsr<2>/SRINV  (
    .I(rst_IBUF_220),
    .O(\lfsrinst/lfsr<2>/SRINV_916 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y41" ))
  \lfsrinst/lfsr<2>/CLKINV  (
    .I(slowenable_0),
    .O(\lfsrinst/lfsr<2>/CLKINV_915 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y37" ))
  \MCinst/state_FSM_FFd1-In7/XUSED  (
    .I(\MCinst/state_FSM_FFd1-In7_950 ),
    .O(\MCinst/state_FSM_FFd1-In7_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y26" ),
    .INIT ( 1'b0 ))
  \div256inst/count_1  (
    .I(\div256inst/count<0>/DYMUX_288 ),
    .CE(VCC),
    .CLK(\div256inst/count<0>/CLKINV_271 ),
    .SET(GND),
    .RST(\div256inst/count<0>/SRINV_272 ),
    .O(\div256inst/count [1])
  );
  X_LUT4 #(
    .INIT ( 16'h3333 ),
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/Mcount_count_lut<0>_INV_0  (
    .ADR0(VCC),
    .ADR1(\div256inst/count [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\div256inst/Mcount_count_lut [0])
  );
  X_FF #(
    .LOC ( "SLICE_X19Y26" ),
    .INIT ( 1'b0 ))
  \div256inst/count_0  (
    .I(\div256inst/count<0>/DXMUX_310 ),
    .CE(VCC),
    .CLK(\div256inst/count<0>/CLKINV_271 ),
    .SET(GND),
    .RST(\div256inst/count<0>/SRINV_272 ),
    .O(\div256inst/count [0])
  );
  X_FF #(
    .LOC ( "SLICE_X19Y28" ),
    .INIT ( 1'b0 ))
  \div256inst/count_5  (
    .I(\div256inst/count<4>/DYMUX_403 ),
    .CE(VCC),
    .CLK(\div256inst/count<4>/CLKINV_381 ),
    .SET(GND),
    .RST(\div256inst/count<4>/SRINV_382 ),
    .O(\div256inst/count [5])
  );
  X_FF #(
    .LOC ( "SLICE_X19Y28" ),
    .INIT ( 1'b0 ))
  \div256inst/count_4  (
    .I(\div256inst/count<4>/DXMUX_422 ),
    .CE(VCC),
    .CLK(\div256inst/count<4>/CLKINV_381 ),
    .SET(GND),
    .RST(\div256inst/count<4>/SRINV_382 ),
    .O(\div256inst/count [4])
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<7>_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\div256inst/count [7]),
    .O(\div256inst/count<7>_rt_445 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y29" ),
    .INIT ( 1'b0 ))
  \div256inst/count_7  (
    .I(\div256inst/count<6>/DYMUX_450 ),
    .CE(VCC),
    .CLK(\div256inst/count<6>/CLKINV_436 ),
    .SET(GND),
    .RST(\div256inst/count<6>/SRINV_437 ),
    .O(\div256inst/count [7])
  );
  X_FF #(
    .LOC ( "SLICE_X19Y29" ),
    .INIT ( 1'b0 ))
  \div256inst/count_6  (
    .I(\div256inst/count<6>/DXMUX_471 ),
    .CE(VCC),
    .CLK(\div256inst/count<6>/CLKINV_436 ),
    .SET(GND),
    .RST(\div256inst/count<6>/SRINV_437 ),
    .O(\div256inst/count [6])
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  \winrnd/IFF/IMUX  (
    .I(\winrnd/INBUF ),
    .O(winrnd_IBUF_235)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y42" ),
    .INIT ( 1'b0 ))
  \MCinst/state_FSM_FFd3  (
    .I(\MCinst/state_FSM_FFd3/DXMUX_597 ),
    .CE(VCC),
    .CLK(\MCinst/state_FSM_FFd3/CLKINV_580 ),
    .SET(GND),
    .RST(\MCinst/state_FSM_FFd3/FFX/RSTAND_602 ),
    .O(\MCinst/state_FSM_FFd3_242 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y42" ))
  \MCinst/state_FSM_FFd3/FFX/RSTAND  (
    .I(rst_IBUF_220),
    .O(\MCinst/state_FSM_FFd3/FFX/RSTAND_602 )
  );
  X_LUT4 #(
    .INIT ( 16'h0D0C ),
    .LOC ( "SLICE_X19Y42" ))
  \MCinst/state_FSM_FFd3-In111  (
    .ADR0(winrnd_IBUF_235),
    .ADR1(\MCinst/state_FSM_FFd1_240 ),
    .ADR2(\MCinst/state_FSM_FFd3_242 ),
    .ADR3(\lfsrinst/lfsr[9] ),
    .O(\MCinst/state_FSM_FFd3-In111/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F3 ),
    .LOC ( "SLICE_X19Y42" ))
  \MCinst/state_FSM_FFd3-In70_SW1  (
    .ADR0(VCC),
    .ADR1(\MCinst/state_FSM_FFd1_240 ),
    .ADR2(\MCinst/state_FSM_FFd3-In111/O ),
    .ADR3(\MCinst/state_FSM_FFd2_243 ),
    .O(N11)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X18Y29" ))
  \div256inst/slowenable4  (
    .ADR0(\div256inst/count [7]),
    .ADR1(\div256inst/count [6]),
    .ADR2(\div256inst/count [4]),
    .ADR3(\div256inst/count [5]),
    .O(\div256inst/slowenable4_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X18Y29" ))
  \div256inst/slowenable10  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\div256inst/slowenable4_241 ),
    .ADR3(\div256inst/slowenable9_0 ),
    .O(slowenable)
  );
  X_LUT4 #(
    .INIT ( 16'hECCC ),
    .LOC ( "SLICE_X18Y37" ))
  \MCinst/state_FSM_FFd1-In15  (
    .ADR0(\div256inst/slowenable9_0 ),
    .ADR1(winrnd_IBUF_235),
    .ADR2(\lfsrinst/lfsr[9] ),
    .ADR3(\div256inst/slowenable4_241 ),
    .O(\MCinst/state_FSM_FFd1-In15/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X18Y37" ))
  \MCinst/state_FSM_FFd1-In26  (
    .ADR0(\MCinst/state_FSM_FFd1-In18_0 ),
    .ADR1(\MCinst/state_FSM_FFd1_240 ),
    .ADR2(\MCinst/state_FSM_FFd1-In15/O ),
    .ADR3(\MCinst/state_FSM_FFd1-In7_0 ),
    .O(\MCinst/state_FSM_FFd1-In )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y37" ),
    .INIT ( 1'b0 ))
  \MCinst/state_FSM_FFd1  (
    .I(\MCinst/state_FSM_FFd1/DXMUX_680 ),
    .CE(VCC),
    .CLK(\MCinst/state_FSM_FFd1/CLKINV_664 ),
    .SET(GND),
    .RST(\MCinst/state_FSM_FFd1/FFX/RSTAND_685 ),
    .O(\MCinst/state_FSM_FFd1_240 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y37" ))
  \MCinst/state_FSM_FFd1/FFX/RSTAND  (
    .I(rst_IBUF_220),
    .O(\MCinst/state_FSM_FFd1/FFX/RSTAND_685 )
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X18Y40" ))
  \lfsrinst/Mshreg_lfsr_3/SRL16E  (
    .A0(VCC),
    .A1(VCC),
    .A2(GND),
    .A3(GND),
    .D(\lfsrinst/lfsr_31/DIG_MUX_701 ),
    .CE(\lfsrinst/lfsr_31/WSG ),
    .CLK(\lfsrinst/lfsr_31/CLKINV_699 ),
    .Q(\lfsrinst/Mshreg_lfsr_3 ),
    .Q15(\NLW_lfsrinst/Mshreg_lfsr_3/SRL16E_Q15_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y40" ),
    .INIT ( 1'b0 ))
  \lfsrinst/lfsr_31  (
    .I(\lfsrinst/lfsr_31/DYMUX_712 ),
    .CE(VCC),
    .CLK(\lfsrinst/lfsr_31/CLKINV_699 ),
    .SET(GND),
    .RST(GND),
    .O(\lfsrinst/lfsr_31_253 )
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X19Y40" ))
  \lfsrinst/Mxor_lfsr_9_xor0000_Result1  (
    .ADR0(VCC),
    .ADR1(\lfsrinst/lfsr[0] ),
    .ADR2(VCC),
    .ADR3(\lfsrinst/lfsr[3] ),
    .O(\lfsrinst/lfsr_9_xor0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y40" ),
    .INIT ( 1'b0 ))
  \lfsrinst/lfsr_9  (
    .I(\lfsrinst/lfsr<9>/DYMUX_732 ),
    .CE(VCC),
    .CLK(\lfsrinst/lfsr<9>/CLKINV_721 ),
    .SET(GND),
    .RST(\lfsrinst/lfsr<9>/FFY/RSTAND_737 ),
    .O(\lfsrinst/lfsr[9] )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y40" ))
  \lfsrinst/lfsr<9>/FFY/RSTAND  (
    .I(rst_IBUF_220),
    .O(\lfsrinst/lfsr<9>/FFY/RSTAND_737 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X18Y26" ))
  \div256inst/slowenable9  (
    .ADR0(\div256inst/count [3]),
    .ADR1(\div256inst/count [1]),
    .ADR2(\div256inst/count [0]),
    .ADR3(\div256inst/count [2]),
    .O(\div256inst/slowenable9_748 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y39" ),
    .INIT ( 1'b0 ))
  rst_IBUF_shift1 (
    .I(\rst_IBUF_shift2/DYMUX_760 ),
    .CE(VCC),
    .CLK(\rst_IBUF_shift2/CLKINV_757 ),
    .SET(GND),
    .RST(\rst_IBUF_shift2/SRINV_758 ),
    .O(rst_IBUF_shift1_256)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y39" ),
    .INIT ( 1'b0 ))
  rst_IBUF_shift2 (
    .I(\rst_IBUF_shift2/DXMUX_768 ),
    .CE(VCC),
    .CLK(\rst_IBUF_shift2/CLKINV_757 ),
    .SET(GND),
    .RST(\rst_IBUF_shift2/SRINV_758 ),
    .O(rst_IBUF_shift2_257)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y38" ),
    .INIT ( 1'b0 ))
  rst_IBUF_shift5 (
    .I(\rst_IBUF_shift5/DYMUX_830 ),
    .CE(VCC),
    .CLK(\rst_IBUF_shift5/CLKINV_827 ),
    .SET(GND),
    .RST(\rst_IBUF_shift5/FFY/RSTAND_835 ),
    .O(rst_IBUF_shift5_260)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y38" ))
  \rst_IBUF_shift5/FFY/RSTAND  (
    .I(rst_IBUF_220),
    .O(\rst_IBUF_shift5/FFY/RSTAND_835 )
  );
  X_LUT4 #(
    .INIT ( 16'h3030 ),
    .LOC ( "SLICE_X18Y36" ))
  \MCinst/state_FSM_FFd1-In18  (
    .ADR0(VCC),
    .ADR1(\MCinst/state_FSM_FFd3_242 ),
    .ADR2(\MCinst/state_FSM_FFd2_243 ),
    .ADR3(VCC),
    .O(\MCinst/state_FSM_FFd1-In18_850 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF03 ),
    .LOC ( "SLICE_X18Y36" ))
  \MCinst/state_FSM_Out01  (
    .ADR0(VCC),
    .ADR1(\MCinst/state_FSM_FFd3_242 ),
    .ADR2(\MCinst/state_FSM_FFd2_243 ),
    .ADR3(\MCinst/state_FSM_FFd1_240 ),
    .O(leds_ctrl_1_OBUF_858)
  );
  X_LUT4 #(
    .INIT ( 16'hFAFA ),
    .LOC ( "SLICE_X16Y47" ))
  \MCinst/state_FSM_Out11  (
    .ADR0(\MCinst/state_FSM_FFd1_240 ),
    .ADR1(VCC),
    .ADR2(\MCinst/state_FSM_FFd3_242 ),
    .ADR3(VCC),
    .O(leds_ctrl_0_OBUF_874)
  );
  X_LUT4 #(
    .INIT ( 16'hFAFF ),
    .LOC ( "SLICE_X16Y47" ))
  \MCinst/state_FSM_Out31  (
    .ADR0(\MCinst/state_FSM_FFd1_240 ),
    .ADR1(VCC),
    .ADR2(\MCinst/state_FSM_FFd3_242 ),
    .ADR3(\MCinst/state_FSM_FFd2_243 ),
    .O(leds_on_OBUF_882)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y41" ),
    .INIT ( 1'b1 ))
  \lfsrinst/lfsr_0  (
    .I(\lfsrinst/lfsr<1>/DYMUX_894 ),
    .CE(VCC),
    .CLK(\lfsrinst/lfsr<1>/CLKINV_891 ),
    .SET(\lfsrinst/lfsr<1>/SRINV_892 ),
    .RST(GND),
    .O(\lfsrinst/lfsr[0] )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y41" ),
    .INIT ( 1'b0 ))
  \lfsrinst/lfsr_1  (
    .I(\lfsrinst/lfsr<1>/DXMUX_901 ),
    .CE(VCC),
    .CLK(\lfsrinst/lfsr<1>/CLKINV_891 ),
    .SET(GND),
    .RST(\lfsrinst/lfsr<1>/SRINV_892 ),
    .O(\lfsrinst/lfsr[1] )
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X18Y41" ))
  \lfsrinst/lfsr_311  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(rst_IBUF_shift5_260),
    .ADR3(\lfsrinst/lfsr_31_253 ),
    .O(\lfsrinst/lfsr_311_923 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y41" ),
    .INIT ( 1'b0 ))
  \lfsrinst/lfsr_3  (
    .I(\lfsrinst/lfsr<2>/DYMUX_926 ),
    .CE(VCC),
    .CLK(\lfsrinst/lfsr<2>/CLKINV_915 ),
    .SET(GND),
    .RST(\lfsrinst/lfsr<2>/SRINV_916 ),
    .O(\lfsrinst/lfsr[3] )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y41" ),
    .INIT ( 1'b0 ))
  \lfsrinst/lfsr_2  (
    .I(\lfsrinst/lfsr<2>/DXMUX_934 ),
    .CE(VCC),
    .CLK(\lfsrinst/lfsr<2>/CLKINV_915 ),
    .SET(GND),
    .RST(\lfsrinst/lfsr<2>/SRINV_916 ),
    .O(\lfsrinst/lfsr[2] )
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ),
    .LOC ( "SLICE_X19Y37" ))
  \MCinst/state_FSM_FFd1-In7  (
    .ADR0(\MCinst/state_FSM_FFd3_242 ),
    .ADR1(\MCinst/state_FSM_FFd2_243 ),
    .ADR2(\div256inst/slowenable4_241 ),
    .ADR3(\div256inst/slowenable9_0 ),
    .O(\MCinst/state_FSM_FFd1-In7_950 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X19Y26" ))
  \div256inst/count<0>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\div256inst/count [1]),
    .ADR3(VCC),
    .O(\div256inst/count<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\div256inst/count [2]),
    .ADR3(VCC),
    .O(\div256inst/count<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X19Y27" ))
  \div256inst/count<2>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\div256inst/count [3]),
    .O(\div256inst/count<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\div256inst/count [4]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\div256inst/count<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X19Y28" ))
  \div256inst/count<4>/G/X_LUT4  (
    .ADR0(\div256inst/count [5]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\div256inst/count<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X19Y29" ))
  \div256inst/count<6>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\div256inst/count [6]),
    .ADR3(VCC),
    .O(\div256inst/count<6>/F )
  );
  X_BUF #(
    .LOC ( "PAD24" ))
  \clr/OUTPUT/OFF/OMUX  (
    .I(clr_OBUF_820),
    .O(\clr/O )
  );
  X_BUF #(
    .LOC ( "PAD22" ))
  \leds_on/OUTPUT/OFF/OMUX  (
    .I(leds_on_OBUF_882),
    .O(\leds_on/O )
  );
  X_BUF #(
    .LOC ( "PAD21" ))
  \leds_ctrl<0>/OUTPUT/OFF/OMUX  (
    .I(leds_ctrl_0_OBUF_874),
    .O(\leds_ctrl<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  \leds_ctrl<1>/OUTPUT/OFF/OMUX  (
    .I(leds_ctrl_1_OBUF_858),
    .O(\leds_ctrl<1>/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y40" ))
  \lfsrinst/Mshreg_lfsr_3/SRL16E.CE/WSGAND  (
    .I(\lfsrinst/lfsr_31/SRINV_695 ),
    .O(\lfsrinst/lfsr_31/WSG )
  );
  X_ONE   NlwBlock_top_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_top_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

