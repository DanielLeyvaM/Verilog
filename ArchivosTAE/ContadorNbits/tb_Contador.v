`timescale 1ns/1ns

module tb_Contador #(parameter SIZE=8) ();
	reg clk_tb,rst_tb,ena_tb;
	wire [(SIZE-1):0] Qdata_tb;
	
ContadorNbits DUT(
		.clk(clk_tb),
		.rst(rst_tb),
		.ena(ena_tb),
		.Qdata(Qdata_tb)
);

initial begin
	clk_tb=1'b0;
	rst_tb=1'b0;
	ena_tb=1'b0;
	
	#5 rst_tb=1'b1;
	#2 ena_tb=1'b1;
	
	#10000 $stop;
end

always #20 clk_tb=~clk_tb;

endmodule
