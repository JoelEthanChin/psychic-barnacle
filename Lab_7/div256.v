//divider 
module div256(clk,rst,slowenable);
	input clk, rst;
	output slowenable;
	
	reg [7:0]count;
	
	always @(posedge clk or posedge rst)
		begin
			if(rst) count <= 0;
			else count <= count+1;
		end
	assign slowenable = &count;
endmodule
		