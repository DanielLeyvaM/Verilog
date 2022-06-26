//MODULOS
module MUX2A1ST(a,b,s,out);
input a,b,s;
output out;
//Alambres
wire out1,out2,snot;

//ASIGNACIONES
//componentes
GAND2	a1	(b,s,out1);
GAND2	a2	(a,snot,out2);
GOR2 	o1	(out1,out2,out);
GNOT 	n1	(s,snot);
endmodule

	