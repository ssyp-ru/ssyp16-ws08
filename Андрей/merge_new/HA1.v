module HA1 (input a, input b, output c, output s);
assign c = a & b;
assign s = (a|b)&~(a&b);
endmodule 