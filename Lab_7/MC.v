//Master Controller
module MC(input slowenable, input rout, input winrnd, input clk, input rst, output leds_on, output [1:0]leds_ctrl, output clr);

	reg reg_leds_on;
	reg [1:0] reg_leds_ctrl;
	reg reg_clear;
	
	reg [2:0] state;
	reg [2:0] nxtstate;
	
	assign leds_on = reg_leds_on;
	assign leds_ctrl = reg_leds_ctrl;
	assign clr = reg_clear;
	
	`define reset 0
	`define wait_a 1
	`define wait_b 2
	`define dark 3
	`define play 4
	`define gloat_a 5
	`define gloat_b 6
	`define ALL_OFF 0
	`define ALL_ON 1
	`define RESET_CODE 2
	`define SCORE 3
	//change states
	always @(posedge clk or posedge rst)
		if(rst) state <= `reset;
		else state <= nxtstate;
	//after state change, determine next state	
	always @(state or rst or slowenable or winrnd or rout)
		
		case(state)
		
			`reset:
				if(rst) nxtstate <= `reset; 
				else nxtstate <= `wait_a;
			
			`wait_a:
				if(slowenable) nxtstate <= `wait_b;
				else nxtstate <= `wait_a;
			
			`wait_b:
				if(slowenable) nxtstate <= `dark; 
				else nxtstate <= `wait_b;
			
			`dark:
				if(winrnd) nxtstate <= `gloat_a;
				else if(slowenable && rout) nxtstate <= `play;
				else nxtstate <= `dark;
			
			`play:
				if(winrnd) nxtstate <= `gloat_a;
				else nxtstate <= `play;
			
			`gloat_a:
				if(slowenable) nxtstate <= `gloat_b;
				else nxtstate <= `gloat_a;
			
			`gloat_b:
				if(slowenable) nxtstate <= `dark;
				else nxtstate <= `gloat_b;
			
			default:
				nxtstate <= `reset;
		endcase
	
	//at state change, determine output
	always @(state)
		
		case(state)
		
			`reset:
				begin
					reg_leds_on <=1;
					reg_clear <= 1;
					reg_leds_ctrl <= `RESET_CODE;
				end
			`wait_a:
				begin
					reg_leds_on <= 1;
					reg_clear <= 1;
					reg_leds_ctrl <= `ALL_ON;
				end
			`wait_b:
				begin
					reg_leds_on <= 1;
					reg_clear <= 1;
					reg_leds_ctrl <= `ALL_ON;
				end
			`dark:
				begin
					reg_leds_on <= 0;
					reg_clear <= 0;
					reg_leds_ctrl <= `ALL_OFF;
				end
			`play:
				begin
					reg_leds_on <= 1;
					reg_clear <= 0;
					reg_leds_ctrl <= `SCORE;
				end
			`gloat_a:
				begin 
					reg_leds_on <=1;
					reg_clear <=1;
					reg_leds_ctrl <= `SCORE;
				end
			`gloat_b:
				begin
					reg_leds_on <= 1;
					reg_clear <= 1;
					reg_leds_ctrl <= `SCORE;
				end
				
			default:
				begin
					reg_leds_on <= 0;
					reg_clear <= 1;
					reg_leds_ctrl <= `RESET_CODE;
				end
		endcase
endmodule
	
	
