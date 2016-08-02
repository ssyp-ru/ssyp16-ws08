module ALU (input [2:0] op_sel, input [15:0] A, input [15:0] B, output [15:0] F, output v, output c, output n, output z);
wire [15:0] AU1;
wire [15:0] LU1;

AU_16 au (op_sel[0],A,B,AU1,v,c,n,z);
LU16 lu (op_sel[1:0],A,B,LU1);

multiplex2_16 choose_mod (op_sel[2],AU1,LU1,F);

endmodule
	