//MODULOS
module SUMRES4B(a,b,s,co,sal);
input [3:0]	a,b;
input 		s;
output [3:0] sal;
output 		co;
wire [3:0] m;

//ASIGNACIONES
//componentes
MUX2A1ST mux1 (a[0],~a[0],s,m[0]);
MUX2A1ST mux2 (a[1],~a[1],s,m[1]);
MUX2A1ST mux3 (a[2],~a[2],s,m[2]);
MUX2A1ST mux4 (a[3],~a[3],s,m[3]); 

SUM4B sumres (m,b,s,sal,co);
endmodule
