module qwerty(output x, input a, input b, input c);

assign x=~a&(b|c);

endmodule