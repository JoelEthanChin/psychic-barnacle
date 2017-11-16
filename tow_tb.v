`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:32:05 11/16/2017
// Design Name:   tow
// Module Name:   U:/win/ELEC3500/Lab_8/top_tb.v
// Project Name:  Lab_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tow
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
	reg pr;
	reg pl;
	reg CLK_I;
	reg rst;

	// Outputs
	wire [6:0] leds_out;

	// Instantiate the Unit Under Test (UUT)
	tow uut (
		.pr(pr), 
		.pl(pl), 
		.CLK_I(CLK_I), 
		.rst(rst), 
		.leds_out(leds_out)
	);
	always #976562 CLK_I=~CLK_I;

	initial begin
		// Initialize Inputs
		pr = 0;
		pl = 0;
		CLK_I = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		rst = 0;
		repeat(550) begin
			@(posedge CLK_I);
		end
		#1
		//Right wins
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pr = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pr = 0;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pr = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pr = 0;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pr = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pr = 0;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		//reset from Right wins
		rst = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		rst = 0;
		repeat(550) begin
			@(posedge CLK_I);
		end
		#1
		//Left wins
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pl = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pl = 0;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pl = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pl = 0;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pl = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pl = 0;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		//reset from Left wins
		rst = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		rst = 0;
		repeat(550) begin
			@(posedge CLK_I);
		end
		#1
		//test tie
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pr = 1; 
		pl = 1;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
		pr = 0;
		pl = 0;
		@(posedge CLK_I); #1;
		@(posedge CLK_I); #1;
	end
      
endmodule

