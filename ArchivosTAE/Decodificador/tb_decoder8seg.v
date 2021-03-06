`timescale 1ns/1ns
module tb_decoder8seg();
	reg [3:0] data_tb;
	wire [7:0] seg_out_tb;

DEC8SEG DUT(
	.data(data_tb),
	.seg_out(seg_out_tb)
);

initial begin
	data_tb=4'b0000;
	
	#2 data_tb=4'b0001;
	#2 data_tb=4'b0010;
	#2 data_tb=4'b0011;
	#2 data_tb=4'b0100;
	#2 data_tb=4'b0101;
	#2 data_tb=4'b0110;
	#2 data_tb=4'b0111;
	#2 data_tb=4'b1000;
	#2 data_tb=4'b1001;
	#2 data_tb=4'b1010;
	#2 data_tb=4'b1011;
	#2 data_tb=4'b1100;
	#2 data_tb=4'b1101;
	#2 data_tb=4'b1110;
	#2 data_tb=4'b1111;
	
	#2 $stop;
end
endmodule
