module alu(output [15:0]OUT,output Z, input [15:0]A,input [15:0]B,input [2:0]OP_SEL);//DONE
	wire [15:0] au_out;
	wire [15:0]lv_out;
	calc au(.SEL(OP_SEL[0]),.Z(au_out),.X(A),.Y(B));
	lgc lv(.OUT(lv_out),.IN1(A),.IN2(B),.SEL(OP_SEL[1:0]));
	assign Z = ~(|au_out);
	multiplexor2x16 m0(.OUT(OUT),.A(au_out),
									 .B(lv_out),
									 .SEL(OP_SEL[2]));

endmodule
