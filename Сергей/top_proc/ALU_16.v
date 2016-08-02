module ALU_16(input [2:0] op_sel,input [15:0] A,input [15:0] B,output [15:0] RES,output V,output C,output N,output Z);

wire [15:0] R1;
wire [15:0] R2;
AU16 a4(op_sel[0],A,B,R1,V,C,N);
LU16 l4(op_sel[1:0],A,B,R2);
multiplexor2_16 m2(op_sel[2],R1,R2,RES);
assign Z = &(~RES) & 1'b1;


endmodule