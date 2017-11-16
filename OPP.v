//One Pulse Per Press
/*This module prevents any "hardware bounching"
*caused by the physical buttons using a
*synchronized push from the synchronizer
*when the signal stabilizes
*/
module opp(sypush,clk,rst,winrnd);

	input sypush, clk, rst;
	output winrnd;
	reg temp;

	always @(posedge clk or posedge rst)
	begin
		if(rst) temp<=0;
		else temp<=sypush;
	end

	assign winrnd = ~temp & sypush;

endmodule
