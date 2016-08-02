module calculator(output[15:0]g, input[15:0]d,input[15:0]f);

wire C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15;

one FA1(.s(g[0]),.c1(C0),.a(f[0]),.b(d[0]),.c(1'b0));
one FA2(.s(g[1]),.c1(C1),.a(f[1]),.b(d[1]),.c(C0));
one FA3(.s(g[2]),.c1(C2),.a(f[2]),.b(d[2]),.c(C1));
one FA4(.s(g[3]),.c1(C3),.a(f[3]),.b(d[3]),.c(C2));
one FA5(.s(g[4]),.c1(C4),.a(f[4]),.b(d[4]),.c(C3));
one FA6(.s(g[5]),.c1(C5),.a(f[5]),.b(d[5]),.c(C4));
one FA7(.s(g[6]),.c1(C6),.a(f[6]),.b(d[6]),.c(C5));
one FA8(.s(g[7]),.c1(C7),.a(f[7]),.b(d[7]),.c(C6));
one FA9(.s(g[8]),.c1(C8),.a(f[8]),.b(d[8]),.c(C7));
one FA10(.s(g[9]),.c1(C9),.a(f[9]),.b(d[9]),.c(C8));
one FA11(.s(g[10]),.c1(C10),.a(f[10]),.b(d[10]),.c(C9));
one FA12(.s(g[11]),.c1(C11),.a(f[11]),.b(d[11]),.c(C10));
one FA13(.s(g[12]),.c1(C12),.a(f[12]),.b(d[12]),.c(C11));
one FA14(.s(g[13]),.c1(C13),.a(f[13]),.b(d[13]),.c(C12));
one FA15(.s(g[14]),.c1(C14),.a(f[14]),.b(d[14]),.c(C13));
one FA16(.s(g[15]),.c1(C15),.a(f[15]),.b(d[15]),.c(C14));


endmodule 