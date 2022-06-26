module ImparyPar(input A,B,C,D,output x);
wire out1,out2,out3,out4;

not not1(out3,A);
not not2(out4,D);
and and1(out1,out3,out4);
and and2(out2,A,D);
or or1(x,out1,out2);

endmodule

