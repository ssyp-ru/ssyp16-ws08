module FA (input a, input b, input ci, output c, output s);
assign c = (a | b)&(b | ci)&(a | ci);
assign s = (a & b & ci) | (~a & ~b & ci) | (a & ~b & ~ci) | (~a & b & ~ci); 
endmodule
