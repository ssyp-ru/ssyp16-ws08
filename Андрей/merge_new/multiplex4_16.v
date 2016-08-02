module multiplex4_16 (input [1:0] sel, input [15:0] mem0,  input [15:0] mem1,  input [15:0] mem2,  input [15:0] mem3, output reg [15:0] res);

always @(sel or mem0 or mem1 or mem2 or mem3) begin
case (sel)
0:
res = mem0;
1:
res = mem1;
2:
res = mem2;
3:
res = mem3;
endcase
end
endmodule
