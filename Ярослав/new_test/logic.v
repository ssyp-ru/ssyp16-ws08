module logic(output reg[3:0] OUT, input[1:0] SEL, input[3:0] IN1,input[3:0] IN2);

always@(SEL or IN1 or IN2) begin
	case(SEL)
		0: OUT = IN1&IN2;
		1: OUT = IN1|IN2;
		2: OUT = IN1^IN2;
		3: OUT = ~IN1;
end

endmodule
// & | ^ nor