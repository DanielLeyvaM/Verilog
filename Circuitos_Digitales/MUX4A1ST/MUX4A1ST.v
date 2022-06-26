//MODULOS
module MUX4A1ST (a,b,c,d,s0,s1,out);
input a,b,c,d,s0,s1;
output out;
//Alambres
wire outm1,outm2;

//ASIGNACIONES
//Componente
MUX2A1ST	mux1	(a,b,s0,outm1);
MUX2A1ST	mux2	(c,d,s0,outm2);
MUX2A1ST mux3	(outm1,outm2,s1,out);
endmodule
