//Testbench
`timescale 1ns/1ps
module tb_Contador_Lab1();
	reg 		clk_tb,rst_tb,ena_tb;	//Entradas->reg
	wire [7:0] 	seg_unidades_tb,seg_decenas_tb,seg_centenas_tb,seg_millares_tb;	//Salidas->wire
	
//Instancias modulo
	Contador_Lab1 DUT (
	//Entradas
	.clk	(clk_tb),
	.rst	(rst_tb),
	.ena	(ena_tb),
	//Salidas
	.seg_unidades	(seg_unidades_tb),
	.seg_decenas	(seg_decenas_tb),
	.seg_centenas	(seg_centenas_tb),
	.seg_millares	(seg_millares_tb)
);
//reloj
always #1 clk_tb= ~clk_tb;

initial begin
	clk_tb=1'b0;
	rst_tb=1'b0;
	ena_tb=1'b0;
	
	#2 rst_tb=1'b1;
	#2 ena_tb=1'b1;
	
	
	#25000 $stop;
end

endmodule

