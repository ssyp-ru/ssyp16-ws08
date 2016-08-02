module multiplexor(output reg[15:0]OUT, input[15:0]IN0,
													input[15:0]IN1,
													input[15:0]IN2,
													input[15:0]IN3,
													input[15:0]IN4,
													input[15:0]IN5,
													input[15:0]IN6,
													input[15:0]IN7,
													input[15:0]IN8,
													input[15:0]IN9,
													input[15:0]IN10,
													input[15:0]IN11,
													input[15:0]IN12,
													input[15:0]IN13,
													input[15:0]IN14,
													input[15:0]IN15,
													input[3:0]SEL);

always @*
	case (SEL)
		0: OUT <= IN0;
		1: OUT <= IN1;
		2: OUT <= IN2;
		3: OUT <= IN3;
		4: OUT <= IN4;
		5: OUT <= IN5;
		6: OUT <= IN6;
		7: OUT <= IN7;
		8: OUT <= IN8;
		9: OUT <= IN9;
		10: OUT <= IN10;
		11: OUT <= IN11;
		12: OUT <= IN12;
		13: OUT <= IN13;
		14: OUT <= IN14;
		15: OUT <= IN15;//DONE
	endcase
endmodule
module multiplexor2x14(output reg[13:0]OUT, input[13:0] A, input[13:0] B, input SEL);//DONE

always @(A or B or SEL) begin
	case(SEL)
		0: OUT = A;
		1: OUT = B;
	endcase
end

endmodule

module multiplexor4x1(output reg OUT, input A1,input A2,input A3,input A4, input [1:0]SEL);

	always @(A1 or A2 or A3 or A4 or SEL) begin
		case(SEL)
			0: OUT = A1;
			1: OUT = A2;
			2: OUT = A3;
			3: OUT = A4;
		endcase
	end

endmodule

module multiplexor2x16(output reg[15:0] OUT,input[15:0] A,input[15:0] B,input SEL);//
	always @(A or B or SEL) begin
		case(SEL)
			0: OUT = A;
			1: OUT = B;
		endcase
	end
	
endmodule
