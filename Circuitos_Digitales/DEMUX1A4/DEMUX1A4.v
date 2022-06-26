//MODULOS
module DEMUX1A4(a,sel,out);
input a;
input [1:0] sel;
output reg [3:0] out;

//ASIGNACIONES
always@(a,sel)
begin
	case(sel)
		0: 
		begin
			out[0]=a;
			out[3:1]=0;
		end
		1:	
		begin
			out[0]=0;
			out[1]=a;
			out[3:2]=0;
		end
		2: 
		begin
			out[1:0]=0;
			out[2]=a;
			out[3]=0;
		end
		3: 
		begin
			out[2:0]=0;
			out[3]=a;
		end
		default: out=0;
	endcase
end
endmodule
