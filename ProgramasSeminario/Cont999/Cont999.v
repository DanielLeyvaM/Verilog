//Modulo
module Cont999 (clk,rst,sal1,sal2,sal3,ctrl,dir);

//Puertos
input 		 			clk,rst,ctrl,dir;
output reg 	[3:0] 	sal1,sal2,sal3;
		 reg 				estados;
//Paramteros
parameter contar=1, pausa=0;

always@(posedge clk)
begin
	if(rst==1)
		estados=pausa;
	else
	case(estados)
		pausa:
			if(ctrl==1)
			estados=contar;
			
		contar:
			if(ctrl==1)
			estados=pausa;
	endcase

end


always@(posedge clk)
begin
	if(rst==1)
	begin
		sal1=0;
		sal2=0;
		sal3=0;
	end
	else
	if(dir==0)
	begin
		if(sal1==9 && sal2==9 && sal3==9)
			sal3=-1;
		if(sal1==9 && sal2==9)
		begin
			sal2=-1;
			sal3=sal3+1;
		end
		if(sal1==9)
		begin
			sal1=0;
			sal2=sal2+1;
		end
		else
			if(estados==contar)
				sal1=sal1+1;
	end

	
	else
	if(dir==1)
	begin
	if(sal1==0 && sal2==0 && sal3==0)
			sal3=10;
	if(sal1==0 && sal2==0)
	begin
			sal2=10;
			sal3=sal3-1;
	end	
	if(sal1==0)
		begin
			sal1=9;
			sal2=sal2-1;
		end
		else
			if(estados==contar)
				sal1=sal1-1;
	end
	
end
endmodule