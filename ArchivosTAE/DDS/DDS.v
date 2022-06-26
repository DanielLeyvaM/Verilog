module DDS 
#(parameter DATA_WIDTH=8, parameter ADDR_WIDTH=8)	
(
	input clk, reset, stop,
	input [1:0] control_maquina,
	input [2:0] dds_word,
	input [(DATA_WIDTH-1):0] data,
	output [(DATA_WIDTH-1):0] out
);

wire write_enable;
wire [ADDR_WIDTH-1:0] tuning_word;


//Componentes
State_machine 
#(.ADDR_WIDTH(ADDR_WIDTH)) Maq1 (
	.clk(clk), 
	.reset(reset),
	.stop(stop),
	.control(control_maquina),
	.dds_word(dds_word),
	//salidas
	.dds_control(tuning_word),
	.we_control(write_enable)
);


single_port_ram 
#(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) ram1 (
	.data(data),
	.addr(tuning_word),	
	.we(write_enable),
	.clk(clk),
	//salidas
	.q(out)
);

endmodule
