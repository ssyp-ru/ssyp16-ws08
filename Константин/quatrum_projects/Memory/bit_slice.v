module bit_slice(output OUT, input [3:0] word_sel, input rw_mode, input data);
	wire [3:0] w_s, w_r, w_q, w__q;
	and(w_s[0], data, rw_mode);
	and(w_s[1], data, rw_mode);
	and(w_s[2], data, rw_mode);
	and(w_s[3], data, rw_mode);
	
	assign w_r = ~(w_s);
	
	ram_cell r_cell0(w_q[0], w__q[0], w_s[0], w_r[0], word_sel[0]);
	ram_cell r_cell1(w_q[1], w__q[1], w_s[1], w_r[1], word_sel[1]);
	ram_cell r_cell2(w_q[2], w__q[2], w_s[2], w_r[2], word_sel[2]);
	ram_cell r_cell3(w_q[3], w__q[3], w_s[3], w_r[3], word_sel[3]);
	
	wire tr;
	sr_latch control_sr_latch(OUT, tr, (|w_q), (|w__q));
endmodule
