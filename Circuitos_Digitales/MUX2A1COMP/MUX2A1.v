//MODULOS
module MUX2A1(a,b,sel,x);
input [3:0] a,b;
input sel;
output reg [3:0] x;

always@(*)
begin
	if(sel==0)
		x=a;
	else
		x=b;
end
endmodule
