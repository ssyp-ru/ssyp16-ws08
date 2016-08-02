module nachalomazahizma (output [15:0]p, input [15:0]n, input [15:0]m);

wire [15:0]j;

dopcode dc (.z(j),.x(m));
calculator cal (.g(p),.d(n),.f(j));

endmodule
