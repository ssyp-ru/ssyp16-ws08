module calculator(output[3:0]g, input[3:0]d,input[3:0]f);

wire C0, C1, C2, C3;

one FA1(.s(g[0]),.c1(C0),.a(f[0]),.b(d[0]),.c(1'b0));
one FA2(.s(g[1]),.c1(C1),.a(f[1]),.b(d[1]),.c(C0));
one FA3(.s(g[2]),.c1(C2),.a(f[2]),.b(d[2]),.c(C1));
one FA4(.s(g[3]),.c1(C3),.a(f[3]),.b(d[3]),.c(C2));

endmodule 