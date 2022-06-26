module Divisor1Hz(clkMHz,reset,clkHz);
input clkMHz,reset;				//frec reloj=50MHz
output reg clkHz;
reg [24:0] contador;		//Bits necesarios para 25000000 (f/2)

always@(negedge clkMHz)
begin
	if (~reset)
		contador<=0;
	else 
		//if(contador==25000000)
		if(contador==1)
		begin
			clkHz<=!clkHz;
			contador<=0;
		end
		else
			contador<=contador+1;
end
endmodule

		
		