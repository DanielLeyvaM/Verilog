//MODULOS
module Conta10st(clk,Q);
input clk;
output [3:0] Q;

wire clear;

//ASIGNACIONES
assign clear=~(Q[1]&Q[3]);


FlipFlopJK Qa	(1,1,clear,clk, Q[0],z);
FlipFlopJK Qb	(1,1,clear,Q[0],Q[1],z);
FlipFlopJK Qc	(1,1,clear,Q[1],Q[2],z);
FlipFlopJK Qd	(1,1,clear,Q[2],Q[3],z);

endmodule
