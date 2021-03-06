`timescale 1ns/1ps
module tb_preescaler();
	reg clkMhz_tb,rst_tb;
	wire clk_tb;
	
Preescaler DUT(
	.clkMhz(clkMhz_tb),
	.rst(rst_tb),
	.clk(clk_tb)
);

initial begin
	clkMhz_tb=1'b0;
	rst_tb=1'b0;
	
	#2 rst_tb=1'b1;
	#100500 $stop;
end

always #10 clkMhz_tb=~clkMhz_tb;
endmodule



