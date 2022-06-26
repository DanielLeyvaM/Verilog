`timescale 1ns/1ns

module CONTA99_tb();
	reg clk_tb,reset_tb;
	wire [8:0] out_tb;

CONTA99 con1 (
	.clk(clk_tb),
	//.selector(selector_tb),
	.reset(reset_tb),
	.out(out_tb)
);

initial begin
	clk_tb=1'b0;
	reset_tb=1'b0;
	
	#1 reset_tb=1'b1;
	//selector_tb=1'b0;
	
	//#10000 selector_tb=1'b1;
	#20000 $stop;
end

	always #1 clk_tb=~clk_tb;

endmodule

	