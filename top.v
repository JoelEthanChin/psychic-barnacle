//top level module
module top(clk, rst, clr, pbl, pbr, winrnd, right, tie);

	input clk, rst, clr, pbl, pbr;
	output winrnd, right, tie;
	wire push, sypush;
	//create PBL module
	PBL PBLinst(.clr(clr),.pl(pbl),.pr(pbr),.rst(rst),.push(push),.right(right),.tie(tie));
	//create sychro module
	synchronizer synchronizerinst(.clk(clk),.rst(rst),.push(push),.sypush(sypush));
	//create OPP module
	opp oppinst(.clk(clk),.rst(rst),.sypush(sypush),.winrnd(winrnd));

endmodule