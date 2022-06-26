//modulo
module Semaforo (r,a,v,clk,rst);

//Puertos
input clk, rst;
output reg r,a,v;

//Registros
		reg [1:0] 	estados;
		reg [5:0] 	contador;
		
//Parametros
parameter alto=0, siga=1, preventivo=2; 
 

always@(estados)
 begin
 case(estados)
	alto: 
	begin
		r=1;
		v=0;
		a=0;
	end
	
	siga:
	begin
		r=0;
		v=1;
		a=0;
	end
		
	preventivo:
	begin
		r=0;
		v=0;
		a=1;
	end
	endcase
end

always@(posedge clk)
begin
	if (rst)
	begin
		estados=alto;
		contador=1;
	end
	else
		case(estados)
			alto:
			//binario: (contador==6'b101000);
			if (contador==40)
			begin
				contador=1;
				estados=siga;
			end
			else
				contador=contador+1;
			
			siga:
			if (contador==20)
			begin
				contador=1;
				estados=preventivo;
			end
			else
				contador=contador+1;
			
			preventivo:
			if(contador==3)
			begin
				contador=1;
				estados=alto;
			end
			else
				contador=contador+1;
		endcase
end

endmodule

	
 
 