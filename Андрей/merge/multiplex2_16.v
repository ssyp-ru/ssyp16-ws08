module multiplex2_16 (input sel, input [15:0] mem0,  input [15:0] mem1, output reg [15:0] res);

always @(sel or mem0 or mem1) begin
case (sel)
0:
res = mem0;
1:
res = mem1;
endcase
end
endmodule
