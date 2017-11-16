`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:19:11 11/16/2017
// Design Name:   scorer
// Module Name:   U:/win/ELEC3500/Lab_8/scorer_tb.v
// Project Name:  Lab_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: scorer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module scorer_tb;

	// Inputs
	reg winrnd;
	reg right;
	reg leds_on;
	reg clk;
	reg rst;
	reg tie;

	// Outputs
	wire [6:0] score;

	// Instantiate the Unit Under Test (UUT)
	scorer uut (
		.winrnd(winrnd), 
		.right(right), 
		.leds_on(leds_on), 
		.clk(clk), 
		.rst(rst), 
		.score(score), 
		.tie(tie)
	);

	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		winrnd = 0;
		right = 0;
		leds_on = 0;
		clk = 0;
		rst = 0;
		tie = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		@(posedge clk); #1;
		@(posedge clk); #1;
		rst = 0;
		
	end
      
endmodule

