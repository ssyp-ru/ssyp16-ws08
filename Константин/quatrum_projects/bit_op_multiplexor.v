module mult_14x14(output reg [13:0] B, input [13:0] X, input [13:0] Y, input SEL);
	always begin
		if (~SEL)
			B = X;
		else
			B = Y;
	end
endmodule

module mult_4x1(output reg X, input A, input B, input C, input D, input [1:0] SEL);
	always begin
		case (SEL)
			0: X = A;
			1: X = B;
			2: X = C;
			3: X = D;
		endcase
	end
endmodule

module bit_op_multiplexor(output [15:0] F, input [15:0] A, input VAL1, input VAL2, input [1:0] SEL);
	mult_14x14 m14x14(F[14:1], A[13:0], A[15:2], SEL[0]);
	mult_4x1 m4x1_1(F[15], A[14], VAL1, A[14], A[0], SEL);
	mult_4x1 m4x1_2(F[0], VAL2, A[1], A[15], A[1], SEL);
endmodule
