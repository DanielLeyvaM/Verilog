//MODULOS
module SUM1B(a,b,c,s,co);
input a,b,c;
output s,co;

//ASIGNACIONES
assign s=(~a&~b&c)|(~a&b&~c)|(a&b&c)|(a&~b&~c);
assign co=(a&b)|(b&c)|(a&c);
endmodule
