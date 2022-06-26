module Uni_Register (clk,clear,modo,serder,serizq,entparalela,Q);
	input clk,clear,serder,serizq;
	input [1:0] modo;
	input [3:0] entparalela;
	output reg [3:0] Q;

always@(negedge clk or negedge clear)
begin 
	if(~clear)
		Q<=0;
	else
		case(modo)
			0: begin
				Q<=Q;
			end
			1: begin
				Q[0]<=serder;
				Q[1]<=Q[0];
				Q[2]<=Q[1];
				Q[3]<=Q[2];
			end
			2: begin
				Q[3]<=serizq;
				Q[2]<=Q[3];
				Q[1]<=Q[2];
				Q[0]<=Q[1];
			end
			3: begin
				Q<=entparalela;
			end
		endcase
			
end	
endmodule
