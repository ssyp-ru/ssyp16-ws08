module Dflipflop(input D,input C,output Q,output Q1);
wire wc,uwc,w1,w2,w3,w4,w5,w6,w7,w8,w9;
not(wc,C);
not(w1,D);
nand(w2,wc,D);
nand(w3,w1,wc);
nand(w4,w5,w3);
nand(w5,w4,w2);
not(uwc,wc);
nand(w6,uwc,w5);
nand(w7,uwc,w4);
nand(w8,w7,w9);
nand(w9,w6,w8);
assign Q=w9;
assign Q1=w8;
endmodule