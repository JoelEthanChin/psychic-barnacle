module top(clk, rst, clr, winrnd, leds_on, leds_ctrl);

	input clk, rst, winrnd;
	output leds_on, clr;
	output [1:0]leds_ctrl;
	wire slowenable, rout;
	//divider object
	div256 div256inst(.clk(clk), .rst(rst), .slowenable(slowenable));
	//shift register object
	lfsr lfsrinst(.slowenable(slowenable), .rst(rst), .rout(rout)); 
	//master controller object
	MC MCinst(.slowenable(slowenable), .rout(rout), .winrnd(winrnd), .clk(clk), .rst(rst), .leds_on(leds_on), .leds_ctrl(leds_ctrl), .clr(clr));
	
	
endmodule