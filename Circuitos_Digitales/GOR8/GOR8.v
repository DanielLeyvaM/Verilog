////MODULOS
//module GOR8(a,b,c,d,e,f,g,h,x);
//	input a,b,c,d,e,f,g,h;
//	output x;
////ASIGNACIONES
//assign x=a|b|c|d|e|f|g|h;
//endmodule

//MODULOS
module GOR8(a,x);
	input [7:0] a;
	output x;
//ASIGNACIONES
assign x= a[7]|a[6]|a[5]|a[4]|a[3]|a[2]|a[1]|a[0];
endmodule
