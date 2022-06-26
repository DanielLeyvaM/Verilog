//MODULOS
module Cont10K(clk,reset,LE,out_bcd,out_decod);
	input clk,reset,LE;
	output [7:0] out_bcd;
	output [3:0] out_decod;

wire clk400,clk10,endec,encen,enmil;
wire [1:0] outcontador;
wire [3:0] outdec1,outdec2,outdec3,outdec4;
wire [3:0] a,b,c,d,outmux;


//Componentes
					//clkMHz,clkHz
Div10hz div10 (clk,clk10);

						//clkMHz,clkHz
Divisor400Hz div4 (clk,clk400);

assign endec=outdec1[0]&outdec1[3];
assign encen=outdec2[0]&outdec2[3];
assign enmil=outdec3[0]&outdec3[3];

				//clk,out
Conta10st c1 (clk10,outdec1);
Conta10st c2 (endec,outdec2);
Conta10st c3 (encen,outdec3);
Conta10st c4 (enmil,outdec4);

				//D,LE,clk,Q
pipo4b p1 (outdec1,LE,clk10,a);
pipo4b p2 (outdec2,LE,clk10,b);
pipo4b p3 (outdec3,LE,clk10,c);
pipo4b p4 (outdec4,LE,clk10,d);

				//clk,reset,out
cont2b con2b (clk400,reset,outcontador);	

			//a,b,c,d,sel,x
mux4a1 m1 (a,b,c,d,outcontador,outmux);	

				//a,out
DECOD2A4 dec1(outcontador,out_decod);

				//a,out
BCD7SEG bcd1 (outmux,out_bcd);

endmodule


