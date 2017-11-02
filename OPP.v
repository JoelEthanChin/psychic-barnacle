//One Pulse Per Press
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