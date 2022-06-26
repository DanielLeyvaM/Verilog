//MODULO
module FlipFlopJK(J,K,clear,clk,Q,QNEG);
input J,K,clk,clear;
output reg Q,QNEG;

always@(negedge clk or negedge clear)
begin
	if(!clear) begin
		Q<=0;
		QNEG<=1;
	end
		else
		begin
				if(J==0 && K==0)begin
					Q<=Q;
					QNEG<=QNEG;
					end
				else if(J==0 && K==1)begin
					Q<=0;
					QNEG<=1;
					end
				else if(J==1 && K==0)begin
					Q<=1;
					QNEG<=0;
					end
				else begin
					Q<=~Q;
					QNEG<=Q;
				end
			end
		end

endmodule
