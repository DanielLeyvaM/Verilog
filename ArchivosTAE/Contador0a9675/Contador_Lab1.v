module Contador_Lab1(
	input 				clk,rst,ena,
	output reg [7:0] 	seg_unidades,seg_decenas,seg_centenas,seg_millares
);

reg [3:0] 	unidades,decenas,centenas,millares;

//-------------------------------Contadores-------------------------------------------

always@(posedge clk or negedge rst)
begin
	if(!rst)	
	begin
		unidades	<=4'b0000;
		decenas	<=4'b0000;
		centenas	<=4'b0000;
		millares	<=4'b0000;
	end
	else
	begin
		if(ena)
		begin
			unidades<=unidades+1'b1;
			if(millares==9 && centenas==6 && decenas==7 && unidades==5)
			begin
				unidades	<=0;
				decenas	<=0;
				centenas	<=0;
				millares	<=0;
			end
			else if(centenas==9 && unidades==9 && decenas==9)
			begin
				unidades<=0;
				decenas<=0;
				centenas<=0;
				millares<=millares+1'b1;
			end
			else if(decenas==9 && unidades==9)
			begin
				unidades<=0;
				decenas<=0;
				centenas<=centenas+1'b1;
			end
			else if(unidades==9)
			begin
				unidades<=0;
				decenas<=decenas+1'b1;
			end
		end //if (ena)
	end //else	
end


//------------------------------------Decodificadores-----------------------------------

always@(unidades)
	case(unidades)
		0: seg_unidades=8'b1111_1100;
		1: seg_unidades=8'b0110_0000;
		2: seg_unidades=8'b1101_1010;
		3: seg_unidades=8'b1111_0010;
		4: seg_unidades=8'b0110_0110;
		5: seg_unidades=8'b1011_0110;
		6: seg_unidades=8'b1011_1110;
		7: seg_unidades=8'b1110_0000;
		8: seg_unidades=8'b1111_1110;
		9: seg_unidades=8'b1110_0110;
		default: 
			seg_unidades=8'b0000_0001;	//En caso de falla (punto display)

	endcase

always@(decenas)
begin
	case(decenas)
		0: seg_decenas=8'b1111_1100;
		1: seg_decenas=8'b0110_0000;
		2: seg_decenas=8'b1101_1010;
		3: seg_decenas=8'b1111_0010;
		4: seg_decenas=8'b0110_0110;
		5: seg_decenas=8'b1011_0110;
		6: seg_decenas=8'b1011_1110;
		7: seg_decenas=8'b1110_0000;
		8: seg_decenas=8'b1111_1110;
		9: seg_decenas=8'b1110_0110;
		default: 
			seg_decenas=8'b0000_0001;	//En caso de falla (punto display)
	endcase
end

always@(centenas)
begin
	case(centenas)
		0: seg_centenas=8'b1111_1100;
		1: seg_centenas=8'b0110_0000;
		2: seg_centenas=8'b1101_1010;
		3: seg_centenas=8'b1111_0010;
		4: seg_centenas=8'b0110_0110;
		5: seg_centenas=8'b1011_0110;
		6: seg_centenas=8'b1011_1110;
		7: seg_centenas=8'b1110_0000;
		8: seg_centenas=8'b1111_1110;
		9: seg_centenas=8'b1110_0110;
		default: 
			seg_centenas=8'b0000_0001;	//En caso de falla (punto display)
	endcase
end

always@(millares)
begin
	case(millares)
		0: seg_millares=8'b1111_1100;
		1: seg_millares=8'b0110_0000;
		2: seg_millares=8'b1101_1010;
		3: seg_millares=8'b1111_0010;
		4: seg_millares=8'b0110_0110;
		5: seg_millares=8'b1011_0110;
		6: seg_millares=8'b1011_1110;
		7: seg_millares=8'b1110_0000;
		8: seg_millares=8'b1111_1110;
		9: seg_millares=8'b1110_0110;
		default: 
			seg_millares=8'b0000_0001;	//En caso de falla (punto display)
	endcase
end		
endmodule
