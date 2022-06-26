`timescale 1ns/1ns

module tb_divisor();
	reg clkMHz_tb,reset_tb;				
	wire clkHz_tb;
	
Divisor100Hz DUT (
	.clkMHz(clkMHz_tb),
	.reset(reset_tb),
	.clkHz(clkHz_tb)
);

always #1 clkMHz_tb=~clkMHz_tb;

initial begin
	clkMHz_tb=1'b0;
	reset_tb=1'b0;
	
	#1 reset_tb=1'b1;
	#100500 $stop;
end

endmodule
