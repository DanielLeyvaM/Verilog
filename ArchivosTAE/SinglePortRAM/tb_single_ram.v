`timescale 1ns/1ns

module tb_single_ram();
	reg [7:0] data_tb;
	reg [4:0] addr_tb;
	reg we_tb, clk_tb, rst_tb;
	reg [2:0] read_tb;
	wire full_tb;
	wire [7:0] q_tb;

single_port_ram ram1(
	.data(data_tb),
	.addr(addr_tb),
	.we(we_tb),
	.clk(clk_tb),
	.read(read_tb),
	.rst(rst_tb),
	.full(full_tb),
	.q(q_tb)
);

always #1 clk_tb=~clk_tb;

initial begin
	
	clk_tb = 1'b1; // at time 0
	addr_tb=5'b0;
	we_tb = 1'b0;
	read_tb = 3'b0;
	rst_tb= 1'b1;
	data_tb= 8'b0000_0000;
	
end

initial begin
	#1 rst_tb= 1'b0;
	#2 we_tb= 1'b1;
	repeat(31)
	begin
		@(posedge clk_tb)
		begin
				addr_tb <= 0;
				data_tb <= $random(); 
				addr_tb <= addr_tb + 1'b1;
		end
	end
	#1 we_tb <= 1'b0;
	repeat(31)
	begin
		@(posedge clk_tb)
		begin
				read_tb <=3'b001;
				addr_tb <= 0;
				addr_tb <= addr_tb + 1'b1;
		end
	end
	repeat(31)
	begin
		@(posedge clk_tb)
		begin
				read_tb <=3'b010;
				addr_tb <= 0;
				addr_tb <= addr_tb + 1'b1;
		end
	end
	repeat(31)
	begin
		@(posedge clk_tb)
		begin
				read_tb <=3'b100;
				addr_tb <= 0;
				addr_tb <= addr_tb + 1'b1;
		end
	end
	repeat(31)
	begin
		@(posedge clk_tb)
		begin
				read_tb <=3'b111;
				addr_tb <= 0;
				addr_tb <= addr_tb + 1'b1;
		end
	end
	#10  $stop;
end
endmodule

	