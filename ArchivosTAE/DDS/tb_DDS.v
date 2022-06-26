`timescale 1ns/1ns
module tb_DDS #(parameter DATA_WIDTH=8, parameter ADDR_WIDTH=8);
	reg clk_tb, reset_tb, stop_tb;
	reg [1:0] control_maquina_tb; //Estados maquina
	reg [2:0] dds_word_tb;			//Tuning word
	reg [(DATA_WIDTH-1):0] data_tb;
	wire [(DATA_WIDTH-1):0] out_tb;
	
	integer statusI = 0, filetxt;	//Apuntador archivo(file) 
		
//Instancias
DDS DUT (	
	.clk(clk_tb), 
	.reset(reset_tb),
	.stop(stop_tb),
	.control_maquina(control_maquina_tb),
	.dds_word(dds_word_tb),
	.data(data_tb),
	.out(out_tb)
);


always #1 clk_tb=~clk_tb;

initial begin
	clk_tb = 1'b0;
	reset_tb = 1'b1; //Reset activo en alto
	stop_tb=1'b0;
	control_maquina_tb=2'b00;
	dds_word_tb=3'b000;
	data_tb=8'bx;
		
	filetxt = $fopen("Sine_hex.txt","r"); //Leer Archivo
end

//Maquina estados		
initial begin
	#1 reset_tb=1'b0;
	//Estado IDLE
	#20
	
	#2 control_maquina_tb=2'b01;	//Estado INIT (write automaticamente=1)

	repeat(256)
	begin
		@(posedge clk_tb)
		begin
				statusI = $fscanf(filetxt,"%h \n",data_tb);
		end
	end
	$fclose(filetxt);
	
	#1 control_maquina_tb=2'b10;	//Estado Tuning Word
	
	#10 dds_word_tb=3'b001;	
	//Se cambia automaticamente a IDLE
	repeat(512)
	begin
		@(posedge clk_tb)
		stop_tb=1'b0;
	end
	
	#1 stop_tb=1'b1;	
	#1 dds_word_tb=3'b010;	
	#10 stop_tb=1'b0;

	repeat(512)
	begin
		@(posedge clk_tb)
		stop_tb=1'b0;
	end
	
	#1 stop_tb=1'b1;	
	#1 dds_word_tb=3'b100;	
	#10 stop_tb=1'b0;
	
	repeat(512)
	begin
		@(posedge clk_tb)
		stop_tb=1'b0;
	end
	
	#1 stop_tb=1'b1;	
	#1 dds_word_tb=3'b111;	
	#10 stop_tb=1'b0;
	
	repeat(512)
	begin
		@(posedge clk_tb)
		stop_tb=1'b0;
	end
	
	#1 stop_tb=1'b1;	
	#1 control_maquina_tb=2'b00;	
	#10 stop_tb=1'b0;
	
	#1000 $stop;
	
end
endmodule
