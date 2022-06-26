//MODULOS
module FLIPFLOPD(data,clk,rst,Q);
input data,clk,rst;
output reg Q;

//ASIGNACIONES
always@(posedge clk or negedge rst)
	if(~rst)
		Q=0;
	else	
		Q=data;
endmodule

