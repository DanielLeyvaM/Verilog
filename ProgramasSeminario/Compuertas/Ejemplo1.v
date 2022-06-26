module Ejemplo1 (A,B,CAND,CNAND,COR,CNOR,CXOR,CNOT);
input A,B;
output CAND,CNAND,COR,CNOR,CXOR,CNOT;

assign CAND=A&B;
assign CNAND=~(A&B);
assign COR=A|B;
assign CNOR=~(A|B);
assign CXOR=A^B;
assign CNOT=~A;

endmodule 
