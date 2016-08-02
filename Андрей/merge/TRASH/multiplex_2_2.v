module multiplex_2_2(input [1:0] A, input [1:0] B, input op_sel, output reg [1:0] res);

always @(op_sel, A, B) begin
case (op_sel)
0://left
	res = A;
1://right
	res = B;
endcase
end

endmodule
