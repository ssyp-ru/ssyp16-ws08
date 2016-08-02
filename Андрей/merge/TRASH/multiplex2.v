module multiplex2 (input sel, input [3:0] mem0,  input [3:0] mem1, output reg [3:0] res);

always @(sel or mem0 or mem1) begin
case (sel)
0:
res = mem0;
1:
res = mem1;
endcase
end
endmodule
