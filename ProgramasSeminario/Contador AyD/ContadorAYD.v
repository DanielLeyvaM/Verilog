module ContadorAYD(sentido,clk,reset,contador,Segmentos);
input clk;
input reset;
input sentido;

wire[6:0] Segmentos1;
output reg [6:0] Segmentos;
output reg [3:0] contador;

always@(posedge clk)
begin
		if (reset)
			contador<=0;
		else
			if (sentido==0)
			contador<=contador+1;
			else
				if (sentido==1)
					contador<=contador-1;
		else 
			contador<=0;
end
			
always@ (contador)
		case (contador)
		1: Segmentos=7'b0000110;
		2: Segmentos=7'b1011011;
		3: Segmentos=7'b1001111;
		4: Segmentos=7'b1100110;
		5: Segmentos=7'b1101101;
		6: Segmentos=7'b1111101;
		7: Segmentos=7'b0000111;
		8: Segmentos=7'b1111111;
		9: Segmentos=7'b1100111;
		default: Segmentos=7'b0111111;
		endcase

endmodule