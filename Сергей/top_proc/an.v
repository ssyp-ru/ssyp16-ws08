module an (input a,input b,output c);
wire w1,w2,w3,w4,w5,w6,w7,w8;
//assign w1=(~A & ~B);
//assign w2=(~A & ~B);
//assign C=(~w1 & ~w2);
 assign c=~(~(a|b)&~(a|b));
endmodule