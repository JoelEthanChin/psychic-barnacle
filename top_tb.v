`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:21:26 11/02/2017
// Design Name:   top
// Module Name:   U:/win/ELEC3500/Lab_6/top_tb.v
// Project Name:  Lab_6
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
	reg clr;
	reg pbl;
	reg pbr;

	// Outputs
	wire winrnd;
	wire right;
	wire tie;
	
	always #10 clk <= ~clk;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst(rst), 
		.clr(clr), 
		.pbl(pbl), 
		.pbr(pbr), 
		.winrnd(winrnd), 
		.right(right), 
		.tie(tie)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		clr = 0;
		pbl = 0;
		pbr = 0;
		
		

		// Wait 100 ns for global reset to finish
		#100;
        
		//reset the program
		rst = 1; 
		clr = 1;
		#1;
		rst = 0;
		clr = 0;
		#1;
	
		
		//test right before left
		pbr = 1;
		#1;
		pbl = 1;
		#3;
		@(posedge clk); #1;
		@(posedge clk); #1;
		pbl = 0;
		pbr = 0;
		@(posedge clk); #1;
		@(posedge clk); #1;
		#1;
		clr = 1;
		#1;
		@(posedge clk); #1;
		@(posedge clk); #1;
		clr = 0;
		#1;
		
		
		//test left before right
		pbl = 1;
		#1;
		pbr = 1;
		#3;
		@(posedge clk); #1;
		@(posedge clk); #1;
		pbl = 0;
		pbr = 0;
		@(posedge clk); #1;
		@(posedge clk); #1;
		#1;
		rst = 1;
		#1;
		@(posedge clk); #1;
		@(posedge clk); #1;
		rst = 0;
		#1;
		
		
		//test tie
		pbl = 1;
		pbr = 1;
		#3;
		@(posedge clk); #1;
		@(posedge clk); #1;
		pbl = 0;
		pbr = 0;
		@(posedge clk); #1;
		@(posedge clk); #1;
		#1;
		
		
	end
      
endmodule

