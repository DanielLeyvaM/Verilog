// Quartus Prime Verilog Template
// Single port RAM with single read/write address 

module single_port_ram 
#(parameter DATA_WIDTH=8, parameter ADDR_WIDTH=5)	//2**5= 32 direcciones
(
	input [(DATA_WIDTH-1):0] data,
	input [(ADDR_WIDTH-1):0] addr,	
	input we, clk, rst,
	input [2:0] read,
	output reg full,
	output [(DATA_WIDTH-1):0] q
);

	localparam MAX_ADDR=(2**ADDR_WIDTH)-1;
	
	// Declare the RAM variable
	reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
	
	reg [(ADDR_WIDTH-1):0] counter;	//Contador ram full
	reg [(ADDR_WIDTH-1):0] DDS;	//Contador read modificable DDS
	
	// Variable to hold the registered read address
	reg [ADDR_WIDTH-1:0] addr_reg;

	always @ (posedge clk)
	begin
		// Write
		if(rst)
		begin
			counter<=0;
			DDS<=0;
		end
		else 
			if(counter==MAX_ADDR)
			begin
				ram[addr] <= data;
				full<=1'b1;
				counter<=0;
			end
			else if (we) 
			begin
				ram[addr] <= data;
				counter<=counter+1;
				full<=1'b0;
			end
			else if(we==0 && read) begin
			DDS<=0;
				case (read)
				1: DDS<=DDS+1;
				2: DDS<=DDS+4;
				3: DDS<=DDS+8;
				4: DDS<=DDS+16;
				5: DDS<=DDS+32;
				6: DDS<=DDS+64;
				7: DDS<=DDS+128;
				endcase
			end
		
		
		addr_reg<=DDS;
		
	end
	
	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.  
	assign q = ram[addr_reg];
	
endmodule
