//Modulo
module PWM (clk,rst,sal,ctrl,dir);

//Puertos
input 		 clk,rst,ctrl,dir;
output reg 	[3:0] 	sal;
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
			if(ctrl==0)
			estados=pausa;
	endcase

end


always@(posedge clk)
begin
	if(rst==1)
		sal=0;
	else
	
	if(dir==0)
	begin
		if(sal==10)
			sal=0;
		else
			if(estados==contar)
				sal=sal+1;
	end

	else
	if(dir==1)
	begin
	if(sal==0)
		sal=10;
	else
		if(estados==contar)
				sal=sal-1;
	end
end	
endmodule
