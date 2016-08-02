module sr_latch(output Q, output _Q, input R, input S);
	nor(Q, R, _Q);
	nor(_Q, S, Q);
endmodule

module ram_cell(output Q, output _Q, input R, input S, input C);
	wire w1, w2;
	sr_latch sr(w1, w2, R & C, S & C);
	assign Q = w1 & C;
	assign _Q = w2 & C;
endmodule
