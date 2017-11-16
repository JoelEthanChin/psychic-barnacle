//Push Button Latch module
/*This module controls the push button inputs
*for the TOW game
*The push output is true when any button is pressed
*right is true if the right button is pushed, else false
*tie is true if both buttons happen to be pressed at the
*same time
*/
module PBL(clr, pl, pr, rst, push, right, tie);

	input pl, pr, clr, rst;
	output push, right, tie;

	wire push, right, tie;
	wire rfirst, lfirst;
	wire lplus, rplus;

	assign lplus = (pl &~rfirst) | lfirst;
	assign lfirst = lplus &~(rst | clr);

	assign rplus = (pr &~lfirst) | rfirst;
	assign rfirst = rplus &~(rst | clr);

	assign push = lfirst | rfirst;
	assign tie = lfirst & rfirst;

	assign right = rfirst & ~lfirst;

endmodule
