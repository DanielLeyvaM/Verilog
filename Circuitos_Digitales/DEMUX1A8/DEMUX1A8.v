//MODULOS
module DEMUX1A8(a,sel,out);
input a;
input [2:0] sel;
output reg [7:0] out;

//ASIGNACIONES
always@(a,sel)
begin
	case(sel)
		0: begin
			out[0]=a;	out[7:1]=0; end
		1:	begin
			out[0]=0;	out[1]=a;	out[7:2]=0; end
		2: begin
			out[1:0]=0;	out[2]=a;	out[7:3]=0; end
		3: begin
			out[2:0]=0;	out[3]=a;	out[7:4]=0;	end
		4: begin	
			out[3:0]=0;	out[4]=a;	out[7:5]=0;	end
		5: begin
			out[4:0]=0;	out[5]=a;	out[7:6]=0;	end
		6: begin
			out[5:0]=0;	out[6]=a;	out[7]=0;	end
		7: begin 
			out[6:0]=0;	out[7]=a;	end
		default: out=0;
	endcase
end
endmodule
