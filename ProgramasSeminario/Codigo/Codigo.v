//modulo
module Codigo (clk, rst,sentido,sal);

//Puertos
input clk,rst,sentido;
output 	reg  	[3:0] 	sal;

//Registros
			reg	[3:0]		estados;
//Parametros
parameter primero=0,segundo=1,tercero=2,cuarto=3, quinto=4;
parameter sexto=5, septimo=6, octavo=7, noveno=8;
			
always@(estados)
begin
	case(estados)
	primero:
		sal=2;
	segundo:
		sal=1;
	tercero:
		sal=5;
	cuarto:
		sal=5;
	quinto:
		sal=0;
	sexto:
		sal=0;
	septimo:
		sal=7;
	octavo:
		sal=9;
	noveno:
		sal=4;
	endcase
end

always@(posedge clk)
begin
	if (rst)
		estados=primero;
	else
	case(estados)
		primero:
		if (sentido)
			estados=noveno;
		else
			estados=segundo;
		segundo:
		if (sentido)
			estados=noveno;
		else
			estados=tercero;
		tercero:
		if (sentido)
			estados=noveno;
		else
			estados=cuarto;
		cuarto:
		if (sentido)
			estados=noveno;
		else
			estados=quinto;
		quinto:
		if (sentido)
			estados=noveno;
		else
			estados=sexto;
		sexto:
		if (sentido)
			estados=noveno;
		else
			estados=septimo;
		septimo:
		if (sentido)
			estados=noveno;
		else
			estados=octavo;
		octavo:
			estados=noveno;
		noveno:
			estados=primero;
	endcase
end

endmodule


