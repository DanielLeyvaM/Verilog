`timescale 1ns/1ns

module tb_PWM ();
	reg clk_tb,rst_tb;
	reg [3:0] switch_tb;
	wire[7:0] out_display_tb;
	wire pwm_tb;

PWM DUT (
	.clk(clk_tb),
	.rst(rst_tb),
	.switch(switch_tb),
	.out_display(out_display_tb),
	.pwm(pwm_tb)
);

//Estimulos
initial begin
	clk_tb=1'b0;
	rst_tb=1'b0;
	switch_tb=4'b0000;
	
	#5 rst_tb=1'b1;
	#40000 switch_tb=4'b0001;
	#40000 switch_tb=4'b0010;
	#40000 switch_tb=4'b0011;
	#40000 switch_tb=4'b0100;
	#40000 switch_tb=4'b0101;
	#40000 switch_tb=4'b0110;
	#40000 switch_tb=4'b0111;
	#40000 switch_tb=4'b1000;
	#40000 switch_tb=4'b1001;
	#40000 switch_tb=4'b1010;

	#150000 $stop;
end	

//Reloj
always #10 clk_tb=~clk_tb;
endmodule
