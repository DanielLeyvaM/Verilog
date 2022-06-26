//MODULOS
module GXNOR2(a,b,x);
	input a,b;
	output x;

//ASIGNACIONES
assign x=~(a^b);
endmodule