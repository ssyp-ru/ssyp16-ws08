module n_shifter(output [3:0]OUT,input[3:0] IN, input [1:0] SEL);

//MINI-MULTIPLEXOR
	multiplexor m0(.OUT(OUT),.IN0({IN[2:0],1'b0}),
									 .IN1({1'b0,IN[3:1]}),
									 .IN2({IN[2:0],IN[3]}),
									 .IN3({IN[0],IN[3:1]}),
									 .SEL(SEL));
//

endmodule

module shifter(output [15:0]OUT,input[15:0] IN, input [1:0] SEL, input Il,input Ir);//0/1 s/1 0/1 l/r 

	multiplexor2x14 m_c(.OUT(OUT[14:1]),.A(IN[13:0]),.B(IN[15:2]),.SEL(SEL[0]));
	multiplexor4x1 m_l(.OUT(OUT[15]),.SEL(SEL),.A1(IN[14]),.A2(Ir),.A3(IN[14]),.A4(IN[0]));
	multiplexor4x1 m_r(.OUT(OUT[0]),.SEL(SEL),.A1(Il),.A2(IN[1]),.A3(IN[15]),.A4(IN[1]));
	
endmodule

//DONE