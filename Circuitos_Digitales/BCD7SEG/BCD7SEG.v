//MODULOS
module BCD7SEG(a,out);
input[3:0] a;
output reg[7:0] out;

//ASIGNACIONES
always@(a)
begin
	//out	 8'bHGFEDCBA
	if(a==0)
		out=8'b1100_0000;
	else if(a==1)
		out=8'b1111_1001;
	else if(a==2)
		out=8'b1010_0100;
	else if(a==3)
		out=8'b1011_0000;
	else if(a==4)
		out=8'b1001_1001;
	else if(a==5)
		out=8'b1001_0010;
	else if(a==6)
		out=8'b1000_0010;
	else if(a==7)
		out=8'b1011_1000;
	else if(a==8)
		out=8'b1000_0000;
	else if(a==9)
		out=8'b1001_0000;
	else
		out=8'b0111_1111;
end
endmodule
