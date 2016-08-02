module LU16 (input [1:0] op_sel, input [15:0] A, input [15:0] B, output [15:0] res);
wire [15:0] AND1;
wire [15:0] OR1;
wire [15:0] XOR1;
wire [15:0] NOT1;
assign AND1 = A & B;

assign OR1 = A | B;

assign XOR1 = A ^ B;

assign NOT1 = ~A;

multiplex4_16 m4(op_sel, AND1, OR1, XOR1, NOT1, res);

endmodule
