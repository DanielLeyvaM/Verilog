//MODULOS
module mux4a1(a,b,c,d,sel,x);
input [3:0] a,b,c,d;
input [1:0] sel;
output reg [3:0] x;

always@(*)
begin
	if(sel==0)
		x=a;
	else if (sel==1)
		x=b;
	else if (sel==2)
		x=c;
	else 
		x=d;
end
endmodule
