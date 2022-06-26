//MODULO
module Contaasin(y,clk,dir,Q0,Q1,Q2);
input clk,dir,y;
output Q0,Q1,Q2;
wire clkb,clkc,QA,QANEG,QB,QBNEG,QC,QCNEG;

//ASIGNACIONES
assign Q0=QA;
assign Q1=QB;
assign Q2=QC;

//Componentes
FlipFlopJK JK1 (y,y,clk,QA,QANEG);
MUX2A1ST MUX1 	(QA,QANEG,dir,clkb);

FlipFlopJK JK2 (y,y,clkb,QB,QBNEG);
MUX2A1ST MUX2 	(QB,QBNEG,dir,clkc);

FlipFlopJK JK3 (y,y,clkc,QC,QCNEG);

endmodule
