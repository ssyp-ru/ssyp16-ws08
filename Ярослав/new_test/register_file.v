module register_file(output [15:0] A, output[15:0] B, input [15:0]D, input[3:0]DEST_SEL,
																	 input[3:0]A_SEL,input[3:0]B_SEL,
																	 input LOAD_EN, input C);
wire en[15:0];
wire[15:0] dec_out;
wire[15:0] reg_out[15:0];

decoder dec(.IN(DEST_SEL),.OUT(dec_out));

and(en[0],LOAD_EN,dec_out[0]);
and(en[1],LOAD_EN,dec_out[1]);
and(en[2],LOAD_EN,dec_out[2]);
and(en[3],LOAD_EN,dec_out[3]);
and(en[4],LOAD_EN,dec_out[4]);
and(en[5],LOAD_EN,dec_out[5]);
and(en[6],LOAD_EN,dec_out[6]);
and(en[7],LOAD_EN,dec_out[7]);
and(en[8],LOAD_EN,dec_out[8]);
and(en[9],LOAD_EN,dec_out[9]);
and(en[10],LOAD_EN,dec_out[10]);
and(en[11],LOAD_EN,dec_out[11]);
and(en[12],LOAD_EN,dec_out[12]);
and(en[13],LOAD_EN,dec_out[13]);
and(en[14],LOAD_EN,dec_out[14]);
and(en[15],LOAD_EN,dec_out[15]);

memory_block reg0(.OUT(reg_out[0]),.IN(D),.C(C),.LOAD_EN(en[0]));
memory_block reg1(.OUT(reg_out[1]),.IN(D),.C(C),.LOAD_EN(en[1]));
memory_block reg2(.OUT(reg_out[2]),.IN(D),.C(C),.LOAD_EN(en[2]));
memory_block reg3(.OUT(reg_out[3]),.IN(D),.C(C),.LOAD_EN(en[3]));
memory_block reg4(.OUT(reg_out[4]),.IN(D),.C(C),.LOAD_EN(en[4]));
memory_block reg5(.OUT(reg_out[5]),.IN(D),.C(C),.LOAD_EN(en[5]));
memory_block reg6(.OUT(reg_out[6]),.IN(D),.C(C),.LOAD_EN(en[6]));
memory_block reg7(.OUT(reg_out[7]),.IN(D),.C(C),.LOAD_EN(en[7]));
memory_block reg8(.OUT(reg_out[8]),.IN(D),.C(C),.LOAD_EN(en[8]));
memory_block reg9(.OUT(reg_out[9]),.IN(D),.C(C),.LOAD_EN(en[9]));
memory_block reg10(.OUT(reg_out[10]),.IN(D),.C(C),.LOAD_EN(en[10]));
memory_block reg11(.OUT(reg_out[11]),.IN(D),.C(C),.LOAD_EN(en[11]));
memory_block reg12(.OUT(reg_out[12]),.IN(D),.C(C),.LOAD_EN(en[12]));
memory_block reg13(.OUT(reg_out[13]),.IN(D),.C(C),.LOAD_EN(en[13]));
memory_block reg14(.OUT(reg_out[14]),.IN(D),.C(C),.LOAD_EN(en[14]));
memory_block reg15(.OUT(reg_out[15]),.IN(D),.C(C),.LOAD_EN(en[15]));


multiplexor A_mul(.OUT(A),.IN0(reg_out[0]),
								  .IN1(reg_out[1]),
								  .IN2(reg_out[2]),
								  .IN3(reg_out[3]),
								  .IN4(reg_out[4]),
								  .IN5(reg_out[5]),
								  .IN6(reg_out[6]),
								  .IN7(reg_out[7]),
								  .IN8(reg_out[8]),
								  .IN9(reg_out[9]),
								  .IN10(reg_out[10]),
								  .IN11(reg_out[11]),
								  .IN12(reg_out[12]),
								  .IN13(reg_out[13]),
								  .IN14(reg_out[14]),
								  .IN15(reg_out[15]),
								  .SEL(A_SEL));
								  
multiplexor B_mul(.OUT(B),.IN0(reg_out[0]),
								  .IN1(reg_out[1]),
								  .IN2(reg_out[2]),
								  .IN3(reg_out[3]),
								  .IN4(reg_out[4]),
								  .IN5(reg_out[5]),
								  .IN6(reg_out[6]),
								  .IN7(reg_out[7]),
								  .IN8(reg_out[8]),
								  .IN9(reg_out[9]),
								  .IN10(reg_out[10]),
								  .IN11(reg_out[11]),
								  .IN12(reg_out[12]),
								  .IN13(reg_out[13]),
								  .IN14(reg_out[14]),
								  .IN15(reg_out[15]),
								  .SEL(B_SEL));
endmodule
//DONE