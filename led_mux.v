//led_mux
module led_mux(input [6:0] score, input [1:0] leds_ctrl, input clk, output [6:0] leds_out);
	
	
	`define ALL_OFF 0
	`define ALL_ON 1
	`define RESET_CODE 2
	`define SCORE 3
	
	reg [6:0] leds_out;
	always @(posedge clk)
	
		case(leds_ctrl)
		
			`ALL_OFF:
				leds_out = 7'b0000000;
				
			`ALL_ON:
				leds_out = 7'b1111111;
				
			`RESET_CODE:
				leds_out = 7'b1111011;
				
			`SCORE:
				leds_out = score;
			
		endcase
	
endmodule