module multiplex_1_4 (input a1, input a2, input a3,input a4, input [1:0] op_sel, output reg res);

always @(a1,a2,a3,a4,op_sel) begin
case (op_sel)
0: // left SH
	res = a1;
1: // right SH
	res = a2;
2: // left RO
	res = a3;
3: // right RO
	res = a4;
endcase
end

endmodule
