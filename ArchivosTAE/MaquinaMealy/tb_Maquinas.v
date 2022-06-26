`timescale 1ns/1ns

module tb_Maquinas();

reg clk_tb,rst_tb,x;
wire z_moore,z_mealy;

MooreSequenceDetector FSM_Moore
(
	// Input Ports
	.clk(clk_tb),
	rst(rst_tb),
	x(x),

	// Output Ports
	.z(z_moore)
);


MealySequenceDetector FSM_Mealy
(
	// Input Ports
	.clk(clk_tb),
	rst(rst_tb),
	x(x),

	// Output Ports
	.z(z_mealy)
);	


always #1 clk_tb=~clk_tb;

initial begin
	clk_tb=1'b0;
	rst_tb=1'b1;
	x=1'b0;
	
	#10.1 rst_tb=1'b0;
	#11 rst_tb=1'b1;
	
	#10 x=1'b1;
	#2 x=1'b1;
	#1 x=1'b0;
	#1 x=1'b1;
	#10 x=1'b1;
	#1 x=1'b1;
	#1 x=1'b0;
	#1 x=1'b1;
	#1 x=1'b0;
	#1 x=1'b1;
	#1 x=1'b0;
	#1 x=1'b1;
	#1 x=1'b0;
	#1 x=1'b1;
	end

endmodule
	
	
	