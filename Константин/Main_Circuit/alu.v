module alu(output [15:0] F, output Z,
 input [15:0] A, input [15:0] B, input [2:0] op_sel);
	wire [15:0] tr_a, tr_b;
	AU au(tr_a, Z, A, B, op_sel[1:0]);
	LU lu(tr_b, A, B, op_sel[1:0]);
	op_multiplexor op_mult(F, tr_a, tr_b, op_sel[2]);
endmodule
