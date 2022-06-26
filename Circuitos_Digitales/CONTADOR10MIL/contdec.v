module contdec(clk,reset,out);
	input clk,reset; 
	output reg [3:0] out;
	
	
always@(posedge clk or negedge reset)
begin
	if(~reset)
		out<=0;
	else if(out==9)
		out<=0;
	else
		out<=out+1;
	
end
endmodule
