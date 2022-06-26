module cont2b(clk,reset,out);
	input clk,reset; 
	output reg [1:0] out;
	
	
always@(posedge clk or negedge reset)
begin
	if(~reset)
		out<=0;
	else
		out<=out+1;
	
end
endmodule
