module part_sum(output OUT_SH, output C, input SH, input A, input B);
	assign OUT_SH = ((A^B)&SH)|A&B;
	assign C = A^B^SH;
endmodule

module sum(output [15:0] X, output LAST, output _LAST, input [15:0] A, input [15:0] B);
	wire w[0:15];
	part_sum sum1(w[0], X[0], 0, A[0], B[0]);
	part_sum sum2(w[1], X[1], w[0], A[1], B[1]);
	part_sum sum3(w[2], X[2], w[1], A[2], B[2]);
	part_sum sum4(w[3], X[3], w[2], A[3], B[3]);
	part_sum sum5(w[4], X[4], w[3], A[4], B[4]);
	part_sum sum6(w[5], X[5], w[4], A[5], B[5]);
	part_sum sum7(w[6], X[6], w[5], A[6], B[6]);
	part_sum sum8(w[7], X[7], w[6], A[7], B[7]);
	part_sum sum9(w[8], X[8], w[7], A[8], B[8]);
	part_sum sum10(w[9], X[9], w[8], A[9], B[9]);
	part_sum sum11(w[10], X[10], w[9], A[10], B[10]);
	part_sum sum12(w[11], X[11], w[10], A[11], B[11]);
	part_sum sum13(w[12], X[12], w[11], A[12], B[12]);
	part_sum sum14(w[13], X[13], w[12], A[13], B[13]);
	part_sum sum15(w[14], X[14], w[13], A[14], B[14]);
	part_sum sum16(w[15], X[15], w[14], A[15], B[15]);
	assign LAST = w[15];
	assign _LAST = w[14];
endmodule

module AU(output [15:0] X, output V, output C, output N, output Z, 
			input [15:0] A, input [15:0] B, input [1:0] sel);
	reg [15:0] ins;
	always @(sel[0] or B) begin
		if (sel[0])
			ins = 5'h10000 - B;
		else
			ins = B;
	end
	wire _c;
	sum s(X, C, _c, A, ins);
	assign V = C ^ _c;
	assign N = V ^ X[15];
	assign Z = ~(|X);
endmodule
