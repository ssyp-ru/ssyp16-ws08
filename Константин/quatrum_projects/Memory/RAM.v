module RAM(output [3:0] OUT, input [3:0] DATA, input [3:0] word_sel, input rw_mode);
	bit_slice b_slice0(OUT[0], word_sel, rw_mode, DATA[0]);
	bit_slice b_slice1(OUT[1], word_sel, rw_mode, DATA[1]);
	bit_slice b_slice2(OUT[2], word_sel, rw_mode, DATA[2]);
	bit_slice b_slice3(OUT[3], word_sel, rw_mode, DATA[3]);
endmodule
