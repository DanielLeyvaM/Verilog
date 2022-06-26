//Modulo
module Alarma(vent1,vent2,puerta,led1,led2,led3,rst,zumba,clk,on);

//Puertos
input 			vent1,vent2,puerta,rst,clk,on;
output 	reg	led1,led2,led3,zumba;
			reg	[1:0] 	estados;

parameter	pausa=0,activar=1;
	
always@(posedge clk)
begin
	case(on)
	0:
		estados=pausa;
	1:
		estados=activar;
	endcase
end

always@(estados)
begin	
	case(estados)
	
			pausa:
			begin
				led1=0;
				led2=0;
				led3=0;
				zumba=0;
			end
			
			activar:
			begin
				if(rst==1)
					zumba=0;
				else
				if(vent1==1 || vent2==1 || puerta==1)
					zumba=1;
				
				if(vent1==1)
					led1=1;
				if(vent1==0)
					led1=0;
				
				
				if(vent2==1)
					led2=1;
				if(vent2==0)
					led2=0;
				
			
				if(puerta==1)
					led3=1;
				if(puerta==0)
					led3=0;
			end
	endcase
end


endmodule


