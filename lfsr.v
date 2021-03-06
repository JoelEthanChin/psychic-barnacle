//linear feedback shift register
/*This module uses slowenable as a reduced clock pulse
*as one input to control how frequent the MC should check the current
*state using rout
*/
module lfsr(slowenable, rst, rout);

	input slowenable, rst;
	output rout;

	reg [9:0]lfsr;
	assign rout = lfsr[9];

	always @(posedge slowenable or posedge rst)
		begin
			if(rst) lfsr[9:0] <=1;
			else
				begin
					lfsr[8:0] <= lfsr[9:1];
					lfsr[9] <= lfsr[0]^lfsr[3]; //set last bit to 0 bit xor 3 bit
				end
		end
endmodule
