//MODULOS
module SUM8B(a,b,ci,s,co);
input [7:0] a,b;
input  ci;
output[7:0] s;
output co;
//ALAMBRES
wire co1;

//ASIGNACIONES
SUM4B S1(a[3:0],b[3:0],ci,s[3:0],co1);
SUM4B S2(a[7:4],b[7:4],co1,s[7:4],co);
endmodule
