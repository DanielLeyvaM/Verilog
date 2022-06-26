//TEST BENCH

`timescale 1ns/1ps

//Senales test bench
module tb_Cont8b();
	reg 		clk_tb,rst_tb1,ena_tb1;	//Entradas deben ser registros
	reg 		rst_tb2,ena_tb2;	//Entradas deben ser registros
	wire [7:0] 	Qdata_tb1,Qdata_tb2;	//Salidas deben ser alambres


//Instancias Modulo
Cont8b DUT1(	//Device Under Test

//	entradas	
	.clk	(clk_tb),
	.rst	(rst_tb1),
	.ena	(ena_tb1),
	
//salidas
	.Qdata	(Qdata_tb1)
);	
	

//Instancias Modulo
Cont8b DUT2(	//Device Under Test

//	entradas	
	.clk	(clk_tb),
	.rst	(rst_tb2),
	.ena	(ena_tb2),
	
//salidas
	.Qdata	(Qdata_tb2)
);

	
//Oscilacion clk
always #10 clk_tb= ~clk_tb;

//Proceso Initial
initial
begin

	clk_tb=1'b0;
	rst_tb1=1'b1;
	rst_tb2=1'b1;
	ena_tb1=0;
	ena_tb2=1'b0;
	
	#10 rst_tb1= 1'b0;
	#11 rst_tb2= 1'b0;

	#10 rst_tb1= 1'b1;
	#34 rst_tb2= 1'b1;
	#30 ena_tb1= 1'b1;
	#25 ena_tb2= 1'b1;
	#10000 $stop;
	
end
endmodule

