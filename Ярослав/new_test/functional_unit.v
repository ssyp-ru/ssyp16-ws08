module functional_unit(output[15:0] OUT,output Z,input[15:0] A,input[15:0] B,input[3:0] SEL);//DONE
	wire[15:0] w1,w2;
	alu _alu(w1, Z, A, B, SEL[2:0]);
	shifter shift(w2, B, SEL[1:0],1'b0,1'b0);
	multiplexor2x16 m0(OUT, w1,w2,SEL[3]);
endmodule
