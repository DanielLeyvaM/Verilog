//modulo
module Multi2(a,b,s,x);

//Puertos
input a,b,s;
output reg x;	//Registro
//Funcional
//assign x=(a&~s)|(b&s);	

//Comportamental
always@(a,b,s)
begin
	if (s==0)
	begin
		x=a;
	end
	else
	begin
		x=b;
	end
end

endmodule