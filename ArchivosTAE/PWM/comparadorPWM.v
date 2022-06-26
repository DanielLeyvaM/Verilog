module comparadorPWM
#(parameter DATA=8)
(
	input clk,rst,
	input [(DATA-1):0] counter,
	input [3:0] sw,
	output reg [7:0] seg_out,
	output reg pwm
);

parameter bitsadecimal=(2**(DATA))-1;
parameter porc1=(1*bitsadecimal)/10;
parameter porc2=(2*bitsadecimal)/10;
parameter porc3=(3*bitsadecimal)/10;
parameter porc4=(4*bitsadecimal)/10;
parameter porc5=(5*bitsadecimal)/10;
parameter porc6=(6*bitsadecimal)/10;
parameter porc7=(7*bitsadecimal)/10;
parameter porc8=(8*bitsadecimal)/10;
parameter porc9=(9*bitsadecimal)/10;


//--------------------------Comparador-------------------------------------
always@(posedge clk or negedge rst)
begin
	if(~rst) begin
		pwm<=0;
	end
	else begin
		case(sw)
			0: begin
					pwm<=0;
				end
			1: begin
				if(counter>porc1)
					pwm<=0;
				else
					pwm<=1;
				end
			2: begin
				if(counter>porc2)
					pwm<=0;
				else
					pwm<=1;
				end
			3: begin
				if(counter>porc3)
					pwm<=0;
				else
					pwm<=1;
				end
			4: begin
				if(counter>porc4)
					pwm<=0;
				else
					pwm<=1;
				end
			5: begin
				if(counter>porc5)
					pwm<=0;
				else
					pwm<=1;
				end
			6: begin
				if(counter>porc6)
					pwm<=0;
				else
					pwm<=1;
				end
			7: begin
				if(counter>porc7)
					pwm<=0;
				else
					pwm<=1;
				end
			8: begin
				if(counter>porc8)
					pwm<=0;
				else
					pwm<=1;
				end
			9: begin
				if(counter>porc9)
					pwm<=0;
				else
					pwm<=1;
				end
			default:
				pwm=1;
			endcase
	end
end


//-----------------------------Decodificador----------------------------
always@(sw)
begin
	case(sw)
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
			seg_out=8'b0000_0001; //Punto display
	endcase
end

endmodule

