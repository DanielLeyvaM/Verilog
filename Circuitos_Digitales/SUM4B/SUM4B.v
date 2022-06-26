//MODULOS
module SUM4B(a,b,ci,s,co);
input [3:0] a,b;
input 		ci;
output[3:0] s;
output		co;
//ALAMBRES 
wire co1,co2,co3;
//ASIGNACIONES
//Componentes 
SUM1B S1 (a[0],b[0],ci,s[0],co1);
SUM1B S2 (a[1],b[1],co1,s[1],co2);
SUM1B S3 (a[2],b[2],co2,s[2],co3);
SUM1B S4 (a[3],b[3],co3,s[3],co);
endmodule

 