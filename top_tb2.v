`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:26:37 11/09/2017
// Design Name:   top
// Module Name:   U:/win/ELEC3500/Lab_7/top_tb.v
// Project Name:  Lab_7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tb;

	// Inputs
	reg clk;
	reg rst;
	reg winrnd;

	// Outputs
	wire clr;
	wire leds_on;
	wire [1:0] leds_ctrl;
	
	always #976562 clk=~clk;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst(rst), 
		.clr(clr), 
		.winrnd(winrnd), 
		.leds_on(leds_on), 
		.leds_ctrl(leds_ctrl)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		winrnd = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		//reset module
		rst = 1;
		@(posedge clk); #1;
		@(posedge clk); #1;
		rst = 0;
		//wait to get into dark state
		repeat(550) begin
			@(posedge clk);
		end
		#1
		//win round from dark state
		winrnd = 1;
		@(posedge clk); #1;
		@(posedge clk); #1;
		winrnd = 0;
		//wait to get back into dark state
		repeat(1700) @(posedge clk);
		#1
		//win round during play state
		winrnd = 1;
		@(posedge clk); #1;
		@(posedge clk); #1;
		winrnd = 0;
		@(posedge clk); #1;
		@(posedge clk); #1;
		rst = 1;
      @(posedge clk); #1;
		@(posedge clk); #1;
		rst = 0;
		//wait until back into dark state
		repeat(4000) @(posedge clk);
		#1
		//reset during play state
		rst = 1; 
      @(posedge clk); #1;
		@(posedge clk); #1;
		rst = 0;  

	end
      
endmodule

