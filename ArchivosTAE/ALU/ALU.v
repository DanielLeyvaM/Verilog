module ALU
#(parameter DATA_WIDTH=8)
(
	input signed[DATA_WIDTH-1:0] port_a,
	input signed[DATA_WIDTH-1:0] port_b,
	input [2:0] selector,
	output carry,zero, negativo,
	output reg [(DATA_WIDTH*2)-1:0] out
);


assign carry=(selector==0 && out[DATA_WIDTH]==0)? out[DATA_WIDTH-1]:0;
assign zero=(out==0)? 1:0;
assign negativo=(selector<=2 && out[DATA_WIDTH*2-1]==1)? 1:0;

always@(*)
begin
	case(selector)
		0:	//sUMA
		begin
			out[DATA_WIDTH:0]=port_a+port_b;
			out[(DATA_WIDTH*2)-1:DATA_WIDTH+1]={DATA_WIDTH-1{out[DATA_WIDTH]}};
			
		end
		1: //RESTA
		begin
			out[DATA_WIDTH:0]=port_a-port_b;
			out[(DATA_WIDTH*2)-1:DATA_WIDTH+1]={DATA_WIDTH-1{out[DATA_WIDTH]}};
		end
		2: //MULTIPLICACION
		begin 
			out[(DATA_WIDTH*2)-1:0]=port_a*port_b;
		end
		3:	//AND
		begin
			out[DATA_WIDTH-1:0]=port_a&port_b;
			out[(DATA_WIDTH*2)-1:DATA_WIDTH]=0;
		end
		4:	//OR
		begin
			out[DATA_WIDTH-1:0]=port_a|port_b;
			out[(DATA_WIDTH*2)-1:DATA_WIDTH]=0;
		end
		5:	//NAND
		begin
			out[DATA_WIDTH-1:0]=~(port_a&port_b);
			out[(DATA_WIDTH*2)-1:DATA_WIDTH]=0;
		end
		6:	//NOR
		begin
			out[DATA_WIDTH-1:0]=~(port_a|port_b);
			out[(DATA_WIDTH*2)-1:DATA_WIDTH]=0;
		end
		7:	//XOR
		begin
			out[DATA_WIDTH-1:0]=port_a^port_b;
			out[(DATA_WIDTH*2)-1:DATA_WIDTH]=0;
		end
		
		default: begin
			out[DATA_WIDTH:0]=port_a+port_b;
			out[(DATA_WIDTH*2)-1:DATA_WIDTH+1]={DATA_WIDTH-1{out[DATA_WIDTH]}};
		end
	endcase
end



endmodule
