module DisplayIF(sw,a_to_g);
	input [3:0] sw;
	output reg [6:0] a_to_g;
	
always @ (sw)
		if(sw==0)a_to_g='b100_0000;
		else if(sw==1)a_to_g='b111_1001;
		else if(sw==2)a_to_g='b010_0100;
		else if(sw==3)a_to_g='b011_0000;
		else if(sw==4)a_to_g='b001_1001;
		else if(sw==5)a_to_g='b001_0010;
		else if(sw==6)a_to_g='b000_0010;
		else if(sw==7)a_to_g='b111_1000;
		else if(sw==8)a_to_g='b000_0000;
		else if(sw==9)a_to_g='b001_0000;
		else if(sw==10)a_to_g='b000_1000;
		else if(sw==11)a_to_g='b000_0011;
		else if(sw==12)a_to_g='b100_0110;
		else if(sw==13)a_to_g='b010_0001;
		else if(sw==14)a_to_g='b000_0110;
		else a_to_g='b000_1110;
endmodule
