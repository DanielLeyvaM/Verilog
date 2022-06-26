//Module
module Cont4b (clk,rst,sal);

//Puertos
//sentido reg? tamaño nombre;
input 					 clk,rst;
output 	 reg 	[7:0]	 sal;
//registros
			 reg 	[3:0]	 mem;

//Asignaciones
always@(posedge clk)
begin
	if(rst==0)
	begin
		mem=mem+1;
	end
	else
	begin
		mem=4'b0000;
	end
end

always@(mem)
begin
	if(mem==0)
		begin
			//	 8'b.gfedcba
			sal=8'b00111111; 
	end
	else if(mem==1)
		begin
			//	 8'b.gfedcba
			sal=8'b00000110; 
		end	
	else if(mem==2)
		begin
			//	 8'b.gfedcba
			sal=8'b01011011; 
		end
	else if(mem==3)
		begin
			//	 8'b.gfedcba
			sal=8'b01001111; 
		end
	else if(mem==4)
		begin
			//	 8'b.gfedcba
			sal=8'b01100110; 
		end
	else if(mem==5)
		begin
			//	 8'b.gfedcba
			sal=8'b01101101; 
		end
	else if(mem==6)
		begin
			//	 8'b.gfedcba
			sal=8'b01111101; 
		end
	else if(mem==7)
		begin
			//	 8'b.gfedcba
			sal=8'b00000111; 
		end
	else if(mem==8)
		begin
			//	 8'b.gfedcba
			sal=8'b01111111; 
		end
	else if(mem==9)
		begin
			//	 8'b.gfedcba
			sal=8'b01101111; 
		end
	else if(mem==10)
		begin
			//	 8'b.gfedcba
			sal=8'b01110111; 
		end
	else if(mem==11)
		begin
			//	 8'b.gfedcba
			sal=8'b01111100; 
		end
	else if(mem==12)
		begin
			//	 8'b.gfedcba
			sal=8'b00111001; 
		end
	else if(mem==13)
		begin
			//	 8'b.gfedcba
			sal=8'b01011110; 
		end
	else if(mem==14)
		begin
			//	 8'b.gfedcba
			sal=8'b01111001; 
		end
	else if(mem==15)
		begin
			//	 8'b.gfedcba
			sal=8'b01110001; 
		end
end
endmodule



