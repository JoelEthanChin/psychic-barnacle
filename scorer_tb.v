// Scorer testbench example
// Gord Allan, Carleton University, Feb 2004

`timescale 1ns/1ns

module scorer_tb;
	
	`define WR     7'b0000111
	`define R3     7'b0000001
	`define R2		7'b0000010
	`define R1  	7'b0000100
	`define N   	7'b0001000
	`define L1  	7'b0010000
	`define L2  	7'b0100000
	`define L3		7'b1000000
	`define WL  	7'b1110000
	`define ERROR  7'b1010101
	
	reg  leds_on,winrnd, rst, right, clk;		// all inputs to the device are regs
	wire [6:0] score;							// output from the device is a wire
	
	// THE GOLDEN 2 RULES of testbenches!
	//	1) Never change an input on a clock edge
	//	2) Only look at outputs when they are valid

	reg [6:0] score_reg;						// a SAMPLED version of the device output
	always @(posedge clk or posedge rst)
		if(rst) score_reg <= 0;
		else 	score_reg <= score;

	// set up a clock that toggles every 10 ns
	always #10 clk <= ~clk;
	
	// write the main sequence of the test
	initial begin
	
	
		#200;
		// initialize all inputs
		clk = 0;		rst = 0;
		right = 0;	leds_on = 0;	winrnd = 0;
		
		// to follow rule 1, we wait until the clock edge, 
		// and then move just past it before modifying the input
		
		// EVEN with the reset the system we must follow RULE 1
		@(posedge clk); #1;		// waits for a clock edge, then moves just past it
		rst = 1;				// put the system in reset
		
		// =======================
		@(posedge clk); #1;		
		rst = 0;									// remove the system from reset
		right = 0;	leds_on = 0;	winrnd = 0;		// FIRST test setup
		$display("%t - Setting up for first test. @ next clock edge Score should be 7'b0001000", $time);

		// =======================
		@(posedge clk); #1;
		// Check the result from the last test
		if(score_reg == 7'b0001000) $display("%t - SUCCESS. Score was %b", $time, score_reg);
		else						$display("%t - ERROR. Score was %b", $time, score_reg);
		// setup inputs for next test
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == 7'b0000100); $display("%t - SUCCESS. Score was %b", $time, score_reg);


		// =======================
		//check R1->R2 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R2); $display("%t - SUCCESS. Score was %b", $time, score_reg); 
		 
		 //check R2->R3 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R3); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R3->R2 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R2); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R2->R1 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R1->N off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `N); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check N->L1 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L1->L2 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L2); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L2->L3 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L3); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L3->L2 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L2); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L2->L1 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L1->N off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `N); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //RESET
		  @(posedge clk); #1;		// waits for a clock edge, then moves just past it
		rst = 1;				// put the system in reset
		
		// =======================
		@(posedge clk); #1;		
		rst = 0;									// remove the system from reset
		right = 0;	leds_on = 0;	winrnd = 0;		// FIRST test setup
		$display("%t - Setting up for first test. @ next clock edge Score should be 7'b0001000", $time);
		
		//check N->R1
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R1->R2
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R2); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R2->R3
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R3); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R3->R1
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R1->R2
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R2); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R2->R1
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R1->N
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `N); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  		//check N->R1
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R1->R2
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R2); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R2->R3
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R3); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R3->WR
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `WR); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //RESET
		  @(posedge clk); #1;		// waits for a clock edge, then moves just past it
		rst = 1;				// put the system in reset
		
		// =======================
		@(posedge clk); #1;		
		rst = 0;									// remove the system from reset
		right = 0;	leds_on = 0;	winrnd = 0;		// FIRST test setup
		$display("%t - Setting up for first test. @ next clock edge Score should be 7'b0001000", $time);
		  
		  //check N->L1
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L1->L2
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L2); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L2->L3
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L3); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L3->L1
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L1->N
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `N); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check N->L1
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L1); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L1->L2
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L2); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L2->L3
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L3); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check L3->WL
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 1;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `WL); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  @(posedge clk); #1;		// waits for a clock edge, then moves just past it
		rst = 1;				// put the system in reset
		
		// =======================
		@(posedge clk); #1;		
		rst = 0;									// remove the system from reset
		right = 0;	leds_on = 0;	winrnd = 0;		// FIRST test setup
		$display("%t - Setting up for first test. @ next clock edge Score should be 7'b0001000", $time);

		// =======================
		@(posedge clk); #1;
		// Check the result from the last test
		if(score_reg == 7'b0001000) $display("%t - SUCCESS. Score was %b", $time, score_reg);
		else						$display("%t - ERROR. Score was %b", $time, score_reg);
		// setup inputs for next test
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == 7'b0000100); $display("%t - SUCCESS. Score was %b", $time, score_reg);


		// =======================
		//check R1->R2 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R2); $display("%t - SUCCESS. Score was %b", $time, score_reg); 
		 
		 //check R2->R3 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `R3); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R3->WR off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 0;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `WR); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //WL off
		  
		  @(posedge clk); #1;		// waits for a clock edge, then moves just past it
		rst = 1;				// put the system in reset
		
		// =======================
		@(posedge clk); #1;		
		rst = 0;									// remove the system from reset
		right = 0;	leds_on = 0;	winrnd = 0;		// FIRST test setup
		$display("%t - Setting up for first test. @ next clock edge Score should be 7'b0001000", $time);

		// =======================
		@(posedge clk); #1;
		// Check the result from the last test
		if(score_reg == 7'b0001000) $display("%t - SUCCESS. Score was %b", $time, score_reg);
		else						$display("%t - ERROR. Score was %b", $time, score_reg);
		// setup inputs for next test
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L1); $display("%t - SUCCESS. Score was %b", $time, score_reg);


		// =======================
		//check R1->R2 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L2); $display("%t - SUCCESS. Score was %b", $time, score_reg); 
		 
		 //check R2->R3 off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `L3); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		  
		  //check R3->WR off
		$display("%t - Setting up for Left jumping the light.", $time);
		right = 1;	leds_on = 0;	winrnd = 1;		
    	@(posedge clk); #1;//set the values back to zero to simulate the button being pressed not held
    right = 0;	leds_on = 0;	winrnd = 0;		
        wait(score_reg == `WL); $display("%t - SUCCESS. Score was %b", $time, score_reg);
		// continue on from here
		// you must test at least the following cases...
		// 	left pushing first from L2
		// 	right pushing first from L2
		// 	left pushing first from R3
		// 	right jumping the light from R3, 
		// 	right pushing first from R3
		
		$finish;
	end

// every time the clock falls, print out the value of the score
//always @(posedge clk) $display("%t - CLKSAMPLE: Score sampled to be %d", $time, score_reg);

// set up statements to inform you when inputs change 
always @(rst) $display("%t - DATAMONITOR: rst signal changed to %b", $time, rst);

// and finally instantiate the device under test (DUT) 
scorer scorerinst (.clk(clk), .rst(rst), .leds_on(leds_on), .right(right), .winrnd(winrnd), .score(score));

endmodule
