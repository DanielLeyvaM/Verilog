module Registro(
	input 		clk,rst,ena,
	input [7:0] data,
	output reg [7:0] Qdata
);

always@(posedge clk or negedge rst)
begin
	if(!rst)
		Qdata<=8'd0;	//8'h00  //8'b0000_0000
	else
		if(ena)
			Qdata<=data;
end
endmodule
