module RO_SH_16(input Il,input Ir,input [1:0] op_sel,input [15:0] B,output [15:0] F);
multiplexor2_14 m21(op_sel[0],B[13:0],B[15:2],F[14:1]);
multiplexor4_1 m41(op_sel,B[2],Il,B[2],B[0],F[15]);
multiplexor4_1 m42(op_sel,Ir,B[1],B[3],B[1],F[0]);


endmodule