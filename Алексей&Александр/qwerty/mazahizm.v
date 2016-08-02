module mazahizm (output [3:0]answer, input [3:0]int1, input [3:0]int2, input check );
always
if (check&check)
nachaomazahizma (.p(answer),.n(int1),.m(int2));
else
calculator(.g(answer),.d(int1),.f(int2));
endmodule
