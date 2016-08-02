module RO_SH (input [3:0] B,input [1:0] op_sel, output [3:0] F);

multiplex4 m4(op_sel, {B[2:0], 1'b0},  {1'b0, B[3:1]},  {B[2:0], B[3]}, {B[0], B[3:1]}, F);

endmodule 