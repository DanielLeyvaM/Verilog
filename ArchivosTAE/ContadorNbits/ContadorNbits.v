module ContadorNbits 
#(parameter SIZE=8)
(
	input clk,rst,ena,
	output reg [(SIZE-1):0] Qdata
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
