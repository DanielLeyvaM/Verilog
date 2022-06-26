////MODULOS
//module GAND3(a,b,c,x);
//	input a,b,c;
//	output x;
////ASIGNACIONES
//assign x=a&b&c;
//endmodule

//MODULOS
module GAND3(a,x);
input [2:0] a;
output x;
//ASIGNACIONES
assign x= a[2]&a[1]&a[0];
endmodule
