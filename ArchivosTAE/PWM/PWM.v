module PWM
#(parameter BITS=4, parameter CLK_MHZ=50000000, parameter CLK_PWM=25000)
(
	input clk,rst,
	input [3:0] switch,
	output pwm,
	output [7:0] out_display
);

wire out_preescaler;
wire [(BITS-1):0] out_contador;

//Asignaciones
Preescaler #(.FREC_REAL(CLK_MHZ),.FREC_OUT(CLK_PWM),.SIZE(BITS)) 
p1(
	.clkMhz(clk),
	.rst(rst),
	.clk(out_preescaler)
);

ContadorNbits #(.SIZE(BITS))
con1 (
	.clk(clk),
	.rst(rst),
	.ena(out_preescaler),
	.Qdata(out_contador)
);

comparadorPWM #(.DATA(BITS))
comp1 (
	.clk(clk),
	.rst(rst),
	.counter(out_contador),
	.sw(switch),
	.seg_out(out_display),
	.pwm(pwm)
);

endmodule

