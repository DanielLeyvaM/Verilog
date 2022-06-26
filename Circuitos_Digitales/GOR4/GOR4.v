////MODULOS
//module GOR4(a,b,c,d,x);
//	input a,b,c,d;
//	output x;
////ASIGNACIONES
//assign x=a|b|c|d;
//endmodule

//MODULOS
module GOR4(a,x);
	input [3:0] a;
	output x;
//ASIGNACIONES
assign x= a[3]|a[2]|a[1]|a[0];
endmodule