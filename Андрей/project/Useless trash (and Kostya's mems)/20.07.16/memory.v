module memory (input d, input c, output q, output w);
wire e1,e2,e3,e4,e5,e6;
nand(e1,d,~c);
nand(e2,~d,~c);
nand(e3,e4,e1);
nand(e4,e3,e2);
nand(e5,c,e3);
nand(e6,c,e4);

assign q = ~(w&e5);
assign w = ~(q&e6);

endmodule
