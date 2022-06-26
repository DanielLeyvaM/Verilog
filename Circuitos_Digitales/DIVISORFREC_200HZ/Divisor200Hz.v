module Divisor200Hz(clkMHz,clkHz);
input clkMHz;				//frec reloj=50MHz
output reg clkHz;
//(freloj/2)/fdeseada (25Mhz/200) = 125000
//log2(125000)=		 16.9	 		 = 17 bits
reg [16:0] contador;	
	
always@(negedge clkMHz)
begin
	if(contador==125000)
	begin
		clkHz<=!clkHz;
		contador<=0;
	end
	else
		contador<=contador+1;
end
endmodule

 
