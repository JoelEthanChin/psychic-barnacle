//Sychronizer
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