module Divisor400Hz(clkMHz,clkHz);
input clkMHz;				//frec reloj=50MHz
output reg clkHz;
//(freloj/2)/fdeseada (25Mhz/400) = 62500
//log2(62500)=		 	15.9	 		 = 16 bits
reg [15:0] contador;	
	
always@(negedge clkMHz)
begin
	//if(contador==62500)
	if(contador==40)
	begin
		clkHz<=!clkHz;
		contador<=0;
	end
	else
		contador<=contador+1;
end
endmodule
