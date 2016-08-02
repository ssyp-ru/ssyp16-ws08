module nachalomazahizma (output [3:0]p, input [3:0]n, input [3:0]m);

wire [3:0]j;

dopcode dc (.z(j),.x(m));
calculator cal (.g(p),.d(n),.f(j));

endmodule
