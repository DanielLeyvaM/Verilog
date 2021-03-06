`timescale 1ns/1ns
module tb_maquinaestados();
	reg clk_tb, reset_tb,full_ram_tb, stop_tb;
	reg [1:0] control_tb;
	reg [2:0] dds_word_tb;
	wire [2:0] dds_control_tb;
	wire we_control_tb;

//Instancias
State_machine maquina1(	
	.clk(clk_tb), 
	.reset(reset_tb),
	.full_ram(full_ram_tb), 
	.stop(stop_tb),
	.control(control_tb),
	.dds_word(dds_word_tb),
	.dds_control(dds_control_tb),
	.we_control(we_control_tb)
);

always #1 clk_tb=~clk_tb;
		
initial begin
	clk_tb=1'b0;
	reset_tb=1'b1;
	full_ram_tb=1'b0;
	stop_tb=1'b0;
	control_tb=2'b00;
	dds_word_tb=2'b00;
	
	#1 reset_tb=1'b0;
	#50
	#1 control_tb=2'b01;
	#20 full_ram_tb=1'b1;
	#20
	#1 control_tb=2'b10;	
	#10 dds_word_tb=3'b001;
	#10 control_tb=2'b11;
	#10 stop_tb=1'b1;
	#10 stop_tb=1'b0;
	#100 $stop;
	
end
endmodule
