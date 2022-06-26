//Modulo
module ALU (a,b,s,z);

//Puertos
//Sentido reg? tamaño nombre
input 			[7:0]	 a,b;
input 			[3:0]	 s;
output 	 reg	[16:0]		 z;

//Alambres								//and  or	xor
			wire 	[7:0]	sum,res,mult,log1,log2,log3,negA,negB;
			
assign sum=a+b;
assign res=a-b;
assign mult=a*b;
assign log1=a&b;
assign log2=a|b;
assign log3=a^b;
assign negA=~a;
assign negB=~b;

always@(s)
begin
	case(s)
		0:	
			z=sum;
		1:
			z=res;
		2:
			z=mult;
		3:
			z=log1;
		4:
			z=log2;
		5:
			z=log3;
		6:
			z=negA;
		default 
			z=negB;
	endcase

end

endmodule
