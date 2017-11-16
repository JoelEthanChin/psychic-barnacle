`timescale 1ns / 1ps

module tow(
    input pr,
    input pl,
    input CLK_I,
    input rst,
    output [6:0] leds_out
    );
//Complete wire signals needed below ???


//Slower Clock from 100Mhz to 500Hz -Given DO NOT remove 
//clk_div createCLKdivide(.CLK_I(CLK_I),.rst(rst), .clk(clk));
assign clk = CLK_I;

wire clr, push, sypush, right, tie, winrnd, slowenable, rout;
wire [6:0]score;
wire leds_on;

wire [1:0]leds_ctrl;
//----------------------------------------------------------------------
//Instantiate PBL Sync OPP ??? 
PBL PBLinst(.clr(clr), .pl(pl), .pr(pr), .rst(rst), .push(push), .right(right), .tie(tie));
opp OPPinst(.sypush(sypush),.clk(clk),.rst(rst),.winrnd(winrnd));
synchronizer synchroInst(.push(push), .clk(clk), .rst(rst), .sypush(sypush));
//----------------------------------------------------------------------
//Instantiate scorer Led_Mux 
scorer scorerInst(.winrnd(winrnd), .right(right), .leds_on(leds_on), .clk(clk), .rst(rst), .score(score), .tie(tie));
led_mux led_mux_inst(.score(score), .leds_ctrl(leds_ctrl), .clk(clk), .leds_out(leds_out));

//----------------------------------------------------------------------
//Div256 LFSR MC speed_controller
div256 createSLOWEN(.clk(clk),.rst(rst),.slowenable(slowenable));
lfsr createRAND(.slowenable(slowenable), .rst(rst), .rout(rout));
MC createMASTERCONTROLLER(.slowenable(slowenable),  .rout(rout),  .winrnd(winrnd),  .clk(clk), .rst(rst),  .leds_on(leds_on),  .leds_ctrl(leds_ctrl),  .clr(clr));
//speed_controller speed_controller(clk,rst,slowen, slowen1024,slowen64,speed_round,speed_tie,speed_right,speed_led,winspeed,speed_exit);

endmodule
