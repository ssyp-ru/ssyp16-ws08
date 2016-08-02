module lu(output [15:0]send, input [15:0]a, input [15:0]b, input [1:0]op_sel);

multiplex m1(.send(send),.sel(op_sel),.s0(a&b),.s1(a|b),.s2(a^b),.s3(~a));

endmodule
