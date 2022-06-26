module Div10hz (clkmhz,clkhz);
	input clkmhz;
	output reg clkhz;	
	
	reg [21:0]contador;
	

always @ (negedge clkmhz)
begin
	//if (contador == 2500000)
	if (contador == 1)
	begin
		clkhz <= !clkhz;
		contador <= 0;
	end
	else
		contador <= contador +1;
	end
endmodule
