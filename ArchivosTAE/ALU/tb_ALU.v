`timescale 1ns/1ns

module tb_ALU #(parameter DATA_WIDTH=8);
	reg[DATA_WIDTH-1:0] port_a_tb;
	reg[DATA_WIDTH-1:0] port_b_tb;
	reg [2:0] selector_tb;
	wire carry_tb,zero_tb,negativo_tb;
	wire [(DATA_WIDTH*2)-1:0] out_tb;
	
//Instancias
ALU DUT(
	.port_a(port_a_tb),
	.port_b(port_b_tb),
	.selector(selector_tb),
	.carry(carry_tb),
	.zero(zero_tb),
	.negativo(negativo_tb),
	.out(out_tb)
);

//Reloj

//Estimulos
initial begin
	//-----------------------------SUMA-----------------------------------
	selector_tb=3'b000;
	
	port_a_tb=8'b0111_1111;
	port_b_tb=8'b0111_1111;
	
	#1 
	port_a_tb=8'b1000_0001;
	port_b_tb=8'b1000_0001;

	#1 
	port_a_tb=8'b0000_0000;
	port_b_tb=8'b0000_0000;
	
	//-----------------------------RESTA-----------------------------------
	#1 
	selector_tb=3'b001;
	
	port_a_tb=8'b0000_1111;
	port_b_tb=8'b0000_0011;
	
	#1
	port_a_tb=8'b1000_1111;
	port_b_tb=8'b0000_1111;
	
	#1
	port_a_tb=8'b0000_1111;
	port_b_tb=8'b1000_1111;
	
	#1 
	port_a_tb=8'b1000_0001;
	port_b_tb=8'b1000_0001;
	
	//-----------------------------MULTIPLICACION-----------------------------------
	#1 
	selector_tb=3'b010;
	
	port_a_tb=8'b0000_1111;
	port_b_tb=8'b0000_0011;
	
	#1
	port_a_tb=8'b0111_1111;
	port_b_tb=8'b0111_1111;
	
	#1
	port_a_tb=8'b0000_0000;
	port_b_tb=8'b1000_1111;
	
	#1 
	port_a_tb=8'b1000_0001;
	port_b_tb=8'b1000_0001;
	
	//-----------------------------AND-----------------------------------
	#1 
	selector_tb=3'b011;
	
	port_a_tb=8'b0000_0000;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b1111_1111;
	
		
	//-----------------------------OR-----------------------------------
	#1 
	selector_tb=3'b100;
	
	port_a_tb=8'b0000_0000;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b1111_1111;
	
	//-----------------------------NAND-----------------------------------
	#1 
	selector_tb=3'b101;
	
	port_a_tb=8'b0000_0000;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b1111_1111;
	
	//-----------------------------NOR-----------------------------------
	#1 
	selector_tb=3'b110;
	
	port_a_tb=8'b0000_0000;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b1111_1111;
	
	//-----------------------------XOR-----------------------------------
	#1 
	selector_tb=3'b111;
	
	port_a_tb=8'b0000_0000;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b0000_0000;
	
	#1 
	port_a_tb=8'b1111_1111;
	port_b_tb=8'b1111_1111;
	
	#1 $stop;
end
endmodule
	
	