//MODULOS
module DECOD2A4(a,out);
input [1:0] a;
output reg [3:0] out;

//ASIGNACIONES
always@(a)
begin
	case(a)
		0: begin
		out[0]=1; out[3:1]=0;
		end
		1: begin
		out[0]=0; out[1]=1; out[3:2]=0;
		end
		2: begin
		out[1:0]=0; out[2]=1; out[3]=0;
		end
		3: begin
		out[2:0]=0; out[3]=1;
		end
	endcase
end
endmodule
