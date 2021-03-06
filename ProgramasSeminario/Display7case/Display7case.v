module Display7case(a_to_g,sw);
		input [0:3]sw;
		output reg [0:6]a_to_g;
		
		always @ (sw)
		case(sw)
		0:a_to_g='b100_0000;
		1:a_to_g='b111_1001;
		2:a_to_g='b010_0100;
		3:a_to_g='b011_0000;
		4:a_to_g='b001_1001;
		5:a_to_g='b001_0010;
		6:a_to_g='b000_0010;
		7:a_to_g='b111_1000;
		8:a_to_g='b000_0000;
		9:a_to_g='b001_0000;
		10:a_to_g='b000_1000;
		11:a_to_g='b000_0011;
		12:a_to_g='b100_0110;
		13:a_to_g='b010_0001;
		14:a_to_g='b000_0110;
		15:a_to_g='b000_1110;
		endcase
endmodule
