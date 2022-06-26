//Modulo
module Display16 (clk,sal,rst);

//Puertos
input clk,rst;
output	reg 	[15:0]	sal;

			reg 	[3:0]		estados;
			

parameter cero=0,uno=1,dos=2,tres=3,cuatro=4,cinco=5,seis=6;
parameter siete=7,ocho=8,nueve=9,diez=10,once=11,doce=12;

always@(posedge clk)
begin
	case(estados)
			cero:
				estados=uno;
			uno:
				estados=dos;
			dos:
				estados=tres;
			tres:
				estados=cuatro;
			cuatro:
				estados=cinco;
			cinco:
				estados=seis;
			seis:
				estados=siete;
			siete:
				estados=ocho;
			ocho:
				estados=nueve;
			nueve:
				estados=diez;
			diez:
				estados=once;
			once:
				estados=doce;
			doce:
				estados=cero;
		endcase
end


always@(estados)
begin
	case(estados)
	
		cero:
			sal=16'b0000000000011000;	//-
		uno:
			sal=16'b1111110001000010;	//D
		dos:	
			sal=16'b1111001100011000;	//A
		tres:	
			sal=16'b0011001110000001;	//N
		cuatro:	
			sal=16'b1100110001000010;	//I
		cinco:	
			sal=16'b1100111100010000;	//E
		seis:	
			sal=16'b0000111100000000;	//L
			
		siete:
			sal=16'b0000000000011000;	//-
		ocho:	
			sal=16'b0000111100000000;	//L
		nueve:	
			sal=16'b1100111100010000;	//E
		diez:	
			sal=16'b0000000010100010;	//Y
		once:	
			sal=16'b0000001100100100;	//V
		doce:	
			sal=16'b1111001100011000;	//A
	
	endcase
end

endmodule