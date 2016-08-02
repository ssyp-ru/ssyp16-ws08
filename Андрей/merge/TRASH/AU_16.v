module AU_16 (input op_sel, input [15:0] A, input [15:0] B, output [15:0] res, output v, output c, output n, output z);
reg [15:0] BB;
always @(op_sel,A,B) begin
if (~op_sel)
	BB = B;
else
	BB = 65536 - B;
end
wire c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14;
NA n1(A[0],BB[0],c0,res[0]);
FA f1(A[1],BB[1],c0,c1,res[1]);
FA f2(A[2],BB[2],c1,c2,res[2]);
FA f3(A[3],BB[3],c2,c3,res[3]);
FA f4(A[4],BB[4],c3,c4,res[4]);
FA f5(A[5],BB[5],c4,c5,res[5]);
FA f6(A[6],BB[6],c5,c6,res[6]);
FA f7(A[7],BB[7],c6,c7,res[7]);
FA f8(A[8],BB[8],c7,c8,res[8]);
FA f9(A[9],BB[9],c8,c9,res[9]);
FA f10(A[10],BB[10],c9,c10,res[10]);
FA f11(A[11],BB[11],c10,c11,res[11]);
FA f12(A[12],BB[12],c11,c12,res[12]);
FA f13(A[13],BB[13],c12,c13,res[13]);
FA f14(A[14],BB[14],c13,c14,res[14]);
FA f15(A[15],BB[15],c14,c,res[15]);
assign z = ~res[0]&~res[1]&~res[2]&~res[3]&~res[4]&~res[5]&~res[6]&~res[7]&~res[8]&~res[9]&~res[10]&~res[11]&~res[12]&~res[13]&~res[14]&~res[15];
assign v = c14^c;
assign n = v^res[15];//(B[3] & ~A[3])|(~(~B[3] & A[3])&(B[2] & ~A[2]))|(~(~B[3] & A[3])&~(~B[2] & A[2])&(B[1] & ~A[1]))|(~(~B[3] & A[3])&~(~B[2] & A[2])&~(~B[1] & A[1])&(B[0] & ~A[0])) & op_sel;
endmodule

//v = c3^c2;
