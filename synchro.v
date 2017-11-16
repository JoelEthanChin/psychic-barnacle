//Sychronizer
/*This module controls the synchronization of
*the button presses
*The output sypush is the stablized button press
*/
module synchronizer(push, clk, rst, sypush);

	input push, clk, rst;
	output sypush;
	reg temp;

	always @ (posedge clk or posedge rst)
	begin
		if(rst) temp <=0;
		else temp <= push;
	end

	assign sypush = temp;

endmodule
