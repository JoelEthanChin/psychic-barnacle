/*
	 Author: Gord Allan - gallan@doe.carleton.ca
*/

// =======================================================================================
// SCORER 
//	- resets to Neutral
//	- advances on winrnd
//	- determines who won the point based on leds_on and right control signals
//	- outputs the score as a 7 bit word (L3 L2 L1 N R1 R2 R3)
//      - a win shows up as either (1 1 1 0 0 0 0) if WL or (0 0 0 0 1 1 1) if WR
//----------------------------------------------------------------------------------------

module scorer(winrnd, right, leds_on, clk, rst, score);
	`define WR     4'b1001
	`define R3     4'b0001
	`define R2		4'b0010
	`define R1  	4'b0011
	`define N   	4'b0100
	`define L1  	4'b0101
	`define L2  	4'b0110
	`define L3		4'b0111
	`define WL  	4'b1000
	`define ERROR  4'b0000

	input clk;		// input clk 
	input rst;		// asynchronous reset
	input right;		// indicates who was pushed first 
	input leds_on;		// used to indicate whether the light's were on to determine a jump-the-light
	input winrnd;		// one-cycle pulse that someone has pushed
	output [6:0] score;	//  MSB 5 [WL L2 L1 0 R1 R2 WR] LSB 0

	reg [6:0] score;	
	reg [3:0] state;	// One of WL, WR, L1, L2, L3, R1, R2, R3 or ERROR
	reg [3:0] nxtstate;	// C/L

	// SYNCHRONOUS STATE ASSIGNMENT ---------------------------------------------
	always @(posedge clk or posedge rst)
   		if (rst) state <= `N;
   		else state <= nxtstate;
	
    // ========================================================================
    // 
    //  Next State logic:  Determine next-state of scorer based on current state and inputs
    //

    wire mr;            
	// move right if right pushed properly, or if left pushed improperly
	assign mr = (right & leds_on) | (~right & ~leds_on);

	always @(state or mr or leds_on or winrnd) begin
		nxtstate = state;
        if(winrnd) begin
    		if(leds_on)         // Proper pushes (uses favour the loser options)
    			case(state)
    			`N:	if(mr) nxtstate = `R1; else nxtstate=`L1;	
    			`L1:	if(mr) nxtstate = `N; else nxtstate=`L2;
    			`L2:	if(mr) nxtstate = `L1; else nxtstate=`L3;
    			`L3:	if(mr) nxtstate = `L1; else nxtstate=`WL;
    			`R1:	if(mr) nxtstate = `R2; else nxtstate=`N;
    			`R2:	if(mr) nxtstate = `R3; else nxtstate=`R1;
    			`R3:	if(mr) nxtstate = `WR; else nxtstate=`R1;
    			`WL:	nxtstate = `WL;
    			`WR:	nxtstate = `WR;
    			default: nxtstate = `ERROR;
    			endcase
    		else	            // the leds were off, player jumped the light
    			case(state)
    			`N:	if(mr) nxtstate = `R1; else nxtstate = `L1;
    			`L1:	if(mr) nxtstate = `N; else nxtstate = `L2;
    			`L2:	if(mr) nxtstate = `L1; else nxtstate=`L3;	
    			`L3:	if(mr) nxtstate = `L2; else nxtstate=`WL;	
    			`R1:	if(mr) nxtstate = `R2; else nxtstate=`N;	
    			`R2:	if(mr) nxtstate = `R3; else nxtstate=`R1;	
    			`R3:	if(mr) nxtstate = `WR; else nxtstate=`R2;	
    			`WL:	nxtstate = `WL;
    			`WR:	nxtstate = `WR;
    			default: nxtstate = `ERROR;
    			endcase
        end
    end


    // output logic - what value of 'score' should show based on the internal state
	always @(state)	
		case(state)
		`N:	score = 7'b0001000;
		`L1:	score = 7'b0010000;
		`L2:	score = 7'b0100000;
		`L3:	score = 7'b1000000;
		`R1:	score = 7'b0000100;
		`R2:	score = 7'b0000010;
		`R3:	score = 7'b0000001;
		`WL:	score = 7'b1110000;
		`WR:	score = 7'b0000111;
		default: score = 7'b1010101;
		endcase

endmodule

