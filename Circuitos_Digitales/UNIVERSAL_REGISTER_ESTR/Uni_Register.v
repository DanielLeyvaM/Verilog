//MODULOS
module Uni_Register(clk,clear,modo,serder,serizq,entparalela,Q);
	input clk,clear,serder,serizq;
	input [1:0] modo;
	input [3:0] entparalela;
	output [3:0] Q;

wire outm1,outm2,outm3,outm4;
wire Q0,Q1,Q2,Q3;

//COMPONENTES	
				//a,b,c,d,s0,s1,out
mux4a1 mux1 (Q0,serder,Q1,entparalela[0],modo,outm1);
mux4a1 mux2 (Q1,Q0,	  Q2,entparalela[1],modo,outm2);
mux4a1 mux3 (Q2,Q1,	  Q3,entparalela[2],modo,outm3);
mux4a1 mux4 (Q3,Q2,serizq,entparalela[3],modo,outm4);

				//data,clk,rst,Q
FLIPFLOPD ff1 (outm1,clk,clear,Q0);
FLIPFLOPD ff2 (outm2,clk,clear,Q1);
FLIPFLOPD ff3 (outm3,clk,clear,Q2);
FLIPFLOPD ff4 (outm4,clk,clear,Q3);

assign Q[3]=Q3;
assign Q[2]=Q2;
assign Q[1]=Q1;
assign Q[0]=Q0;

endmodule
