module Divisor100Hz(clkMHz,reset,clkHz);
input clkMHz,reset;				//frec reloj=50MHz
output reg clkHz;
//(freloj/2)/fdeseada (25Mhz/100) = 250000
//log2(250000)=	17.9			= 18 bits
reg [17:0] contador;	
	
always@(negedge clkMHz or negedge reset)
begin
	if (~reset)
		contador<=0;
	else 
		//if(contador==250000)
		if(contador==60)
		begin
			clkHz<=!clkHz;
			contador<=0;
		end
		else
			contador<=contador+1;
end
endmodule


