module RO_SH_GOOD (input [15:0] B, input [1:0] op_sel, input Ir, input Il, output [15:0] F);
wire [13:0] center;
wire left;
wire right;

multiplex2_14 m22(op_sel[0],B[13:0], B[15:2], F[14:1]);
multiplex_1_4 m141(B[14], Il, B[14], B[0], op_sel,F[15]);
multiplex_1_4 m142(Ir, B[1], B[15], B[1], op_sel,F[0]);



endmodule
