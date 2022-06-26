//MODULOS
module CONTA99(clk,reset,out);
input clk,reset;
output [7:0] out;

wire ena_uni,ena_dec,sel;
wire [3:0] unidades,decenas,numeros;

//ASIGNACIONES
//Componentes

assign ena_dec=unidades[3]&unidades[0];

Divisor1Hz Div1		(clk,reset,ena_uni);
Divisor100Hz Div100	(clk,reset,sel);

Conta10st ContUni		(ena_uni,unidades);
Conta10st ContDec		(ena_dec,decenas);

MUX2A1 mux1				(unidades,decenas,sel,numeros);
BCD7SEG decoder		(numeros,out);

endmodule
