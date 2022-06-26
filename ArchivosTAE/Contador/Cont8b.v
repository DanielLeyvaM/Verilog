module Cont8b(
	input 				clk,rst,ena,
	output reg [7:0] 	Qdata
);


//Secuencial
always@(posedge clk or negedge rst)
begin
	if(!rst)
		Qdata<=0;	
	else
	if(ena)
		Qdata<=Qdata+1'b1;
end
endmodule
