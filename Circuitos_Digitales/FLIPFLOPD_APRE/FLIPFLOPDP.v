//MODULOS
module FLIPFLOPDP(data,clk,pre,Q);
input data,clk,pre;
output reg Q;

//ASIGNACIONES
always@(posedge clk or negedge pre)
	if (~pre)
		Q=1;
	else
		Q=data;
endmodule
