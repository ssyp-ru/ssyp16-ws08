module multiplexor_16x16(
output reg [15:0] A, 
input [15:0] REG0, input [15:0] REG1, input [15:0] REG2, input [15:0] REG3,
input [15:0] REG4, input [15:0] REG5, input [15:0] REG6, input [15:0] REG7,
input [15:0] REG8, input [15:0] REG9, input [15:0] REG10, input [15:0] REG11,
input [15:0] REG12, input [15:0] REG13, input [15:0] REG14, input [15:0] REG15,
input [0:3] SEL);
	always begin
		case (SEL)
			0: A = REG0;
			1: A = REG1;
			2: A = REG2;
			3: A = REG3;
			4: A = REG4;
			5: A = REG5;
			6: A = REG6;
			7: A = REG7;
			8: A = REG8;
			9: A = REG9;
			10: A = REG10;
			11: A = REG11;
			12: A = REG12;
			13: A = REG13;
			14: A = REG14;
			15: A = REG15;
		endcase
	end
endmodule
