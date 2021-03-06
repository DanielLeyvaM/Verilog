`timescale 1ns/1ns

module tb_comparadorPWM #(parameter DATA=4) ();
	reg clk_tb,rst_tb;
	reg [3:0] sw_tb;
	reg [(DATA-1):0] counter_tb;
	
	wire [7:0] seg_out_tb;
	wire pwm_tb;
	
comparadorPWM DUT(
		.clk(clk_tb),
		.rst(rst_tb),
		.sw(sw_tb),
		.counter(counter_tb),
		
		.seg_out(seg_out_tb),
		.pwm(pwm_tb)
);

initial begin
	clk_tb=1'b0;
	rst_tb=1'b0;
	sw_tb=4'b0000;
	counter_tb=8'b00000000;
	
	#2 rst_tb=1'b1;
	
	#2 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b0001;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b0010;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b0011;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b0100;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b0101;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b0110;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b0111;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b1000;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b1001;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#1 sw_tb=4'b1010;
	#10 counter_tb=4'b0000;
	#10 counter_tb=4'b0001;
	#10 counter_tb=4'b0010;
	#10 counter_tb=4'b0011;
	#10 counter_tb=4'b0100;
	#10 counter_tb=4'b0101;
	#10 counter_tb=4'b0110;
	#10 counter_tb=4'b0111;
	#10 counter_tb=4'b1000;
	#10 counter_tb=4'b1001;
	#10 counter_tb=4'b1010;
	#10 counter_tb=4'b1011;
	#10 counter_tb=4'b1100;
	#10 counter_tb=4'b1101;
	#10 counter_tb=4'b1110;
	#10 counter_tb=4'b1111;
	
	#10000 $stop;
end

always #10 clk_tb=~clk_tb;

endmodule
