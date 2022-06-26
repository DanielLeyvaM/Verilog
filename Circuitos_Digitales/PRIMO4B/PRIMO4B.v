//MODULOS
module PRIMO4B(a,out);
input [3:0] a;
output reg out;

//ASIGNACIONES
always@(a)
begin
	case(a)
		1,2,3,5,7,11,13: 	out=1;
		default: 			out=0;
	endcase
end
endmodule
