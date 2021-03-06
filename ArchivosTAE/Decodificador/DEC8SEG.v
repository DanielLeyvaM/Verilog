module DEC8SEG (
	input [3:0] data,
	output reg [7:0] seg_out
);

always@(data)
begin
	case(data)
		0: seg_out=8'b1111_1100;
		1: seg_out=8'b0110_0000;
		2: seg_out=8'b1101_1010;
		3: seg_out=8'b1111_0010;
		4: seg_out=8'b0110_0110;
		5: seg_out=8'b1011_0110;
		6: seg_out=8'b1011_1110;
		7: seg_out=8'b1110_0000;
		8: seg_out=8'b1111_1110;
		9: seg_out=8'b1110_0110;
		default: 
			seg_out=8'b0000_0001;	//En caso de falla (punto display)
	endcase
end
endmodule
