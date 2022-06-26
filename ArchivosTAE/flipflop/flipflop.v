module flipflop (

	input 		D_in,clk,
	output reg 		Q,QNEG
	//input wire D_in;	Si no se especifica son tipo wire
);

always@(posedge clk)
begin
	Q 		<= D_in;
	QNEG 	<= !D_in;
end


endmodule

