//MODULOS
module Flipflop(data,preset,clk,rst,Q);
input preset,data,clk,rst;
output reg Q;

//ASIGNACIONES
always@(posedge clk or negedge preset or negedge rst)
begin	
	Q<=data;
	if(~rst)
		Q<=0;
	else if(~preset)
		Q<=1;
	else
		Q<=data;
end
endmodule
