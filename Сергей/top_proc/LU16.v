module LU16(input [1:0] op_sel,input [15:0] A,input [15:0] B,output [15:0] RES);
wire [15:0]AND;
wire [15:0]OR;
wire [15:0]XOR;
wire [15:0]NOT;
and_16 a4(A,B,AND);
or_16 o4(A,B,OR);
xor_16 x4(A,B,XOR);
not_16 n4(A,NOT);
multiplexor4_16 mu4(op_sel,AND,OR,XOR,NOT,RES);
endmodule