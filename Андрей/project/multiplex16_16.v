module multiplex16_16 (input [3:0] sel, input [15:0] mem0,  input [15:0] mem1,  input [15:0] mem2,  input [15:0] mem3,  input [15:0] mem4,  input [15:0] mem5,  input [15:0] mem6,  input [15:0] mem7,  input [15:0] mem8,  input [15:0] mem9,  input [15:0] mem10,  input [15:0] mem11,  input [15:0] mem12,  input [15:0] mem13,  input [15:0] mem14,  input [15:0] mem15, output reg [15:0] res);

always @(sel or mem0 or mem1 or mem2 or mem3 or mem4 or mem5 or mem6 or mem7 or mem8 or mem9 or mem10 or mem11 or mem12 or mem13 or mem14 or mem15) begin
case (sel)
0:
res = mem0;
1:
res = mem1;
2:
res = mem2;
3:
res = mem3;
4:
res = mem4;
5:
res = mem5;
6:
res = mem6;
7:
res = mem7;
8:
res = mem8;
9:
res = mem9;
10:
res = mem10;
11:
res = mem11;
12:
res = mem12;
13:
res = mem13;
14:
res = mem14;
15:
res = mem15;
endcase
end
endmodule
