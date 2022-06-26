module mux2a1(
	input select,
	input [7:0] dataA,dataB,
	output reg [7:0] dataOut
);

always@(*)
begin
	if(!select)
		dataOut=dataA;
	else
		dataOut=dataB;
end
endmodule
