module lgc(output reg[15:0] OUT, input[1:0] SEL, input[15:0] IN1,input[15:0] IN2);//TO 16 DONE

always@(SEL or IN1 or IN2) begin
	case(SEL)
		0: OUT = IN1&IN2;
		1: OUT = IN1|IN2;
		2: OUT = IN1^IN2;
		3: OUT = ~IN1;
	endcase
end

endmodule
// & | ^ nor