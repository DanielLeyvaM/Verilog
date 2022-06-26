//Modulo
module Secuencial(A,B,X);

//Puertos
input A,B;
output reg X;  //Hacer X un registro
//alambres


//Asignaciones
always @(A,B)
begin
	if((A==1) && (B==1))
	begin
		X=1;	//No se puede dar valores a la salida se necesita registro
	end
	else
	begin
		X=0;
	end
end


endmodule