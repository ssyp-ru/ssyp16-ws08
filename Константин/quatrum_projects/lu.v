module LU(output reg [15:0] C, input [15:0] A, input [15:0] B, input [1:0] sel);
	always begin
		case (sel)
			0: C = A&B;
			1: C = A|B;
			2: C = A^B;
			3: C = ~A;
		endcase
	end
endmodule
