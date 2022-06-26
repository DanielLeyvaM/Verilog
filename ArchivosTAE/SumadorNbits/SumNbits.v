module SumNbits #(parameter DATA_WIDTH=4)(
	input [(DATA_WIDTH-1):0] 	data_A,
	input [(DATA_WIDTH-1):0] 	data_B,
	output [(DATA_WIDTH):0] 	sum_out
);

assign sum_out=data_A+data_B;

endmodule
 