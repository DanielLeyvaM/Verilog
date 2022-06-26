`timescale 1ns/1ns

module tb_cont10k();
	reg clk_tb,reset_tb,LE_tb;
	wire [7:0] out_bcd_tb;
	wire [3:0] out_decod_tb;

Cont10K DUT(
	.clk(clk_tb),
	.reset(reset_tb),
	.LE(LE_tb),
	.out_bcd(out_bcd_tb),
	.out_decod(out_decod_tb)
);

always #1 clk_tb=~clk_tb;

initial begin
	clk_tb=1'b0;
	reset_tb=1'b0;
	LE_tb=1'b0;
	
	#1 reset_tb=1'b1;
	#1 LE_tb=1'b1;
	
	#20000 $stop;
end
endmodule

	
