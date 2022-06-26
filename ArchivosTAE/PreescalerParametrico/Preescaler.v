module Preescaler 
#(parameter FREC_REAL=50000000,parameter FREC_OUT=50000,parameter SIZE=8) 
(
	input clkMhz,rst,
	output reg clk
);

parameter BITS=(2**(SIZE));
parameter FREC=FREC_REAL/(FREC_OUT*BITS);
 
reg [25:0] contador;		//25 bits para reloj de 1hz

always@(posedge clkMhz or negedge rst)
begin
	if(~rst)
		contador<=0;
	else if (contador==FREC-1) begin
		contador<=0;
		clk<=1;
	end
	else begin
		contador<=contador+1'b1;
		clk<=0;
	end
end
endmodule
