module pipo4b (D,LE,clk,Q);
	input [3:0]D;
	input LE,clk;
	output [3:0]Q;
	
reg [3:0]Q;

always @(negedge clk)
begin
	if(LE==1'b1)
		Q<=D;
	else if (LE==1'b0)
		Q<=Q;
	else
		Q<=4'bzzzz;
end
endmodule
