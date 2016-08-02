module memory1(output Q, output _Q, input D, input C);
	wire w1, w2, w3, w4, w5;
	nand(w2, D, C);
	not(w1, D);
	nand(w3, w1, C);
	nand(w5, w2, w4);
	nand(w4, w3, w5);
	assign Q = w5;
	assign _Q = w4;
endmodule

module memory2(output Q, output _Q, input S, input C, input R);
	wire w1, w2, w3, w4;
	nand(w1, S, C);
	nand(w2, R, C);
	nand(w3, w1, w4);
	nand(w4, w2, w3);
	nand(Q, w1, w4);
	nand(_Q, w2, w3);
endmodule

module memory(output Q, output _Q, input D, input C);
	wire w1, w2, w3, w4;
	not(w1, C);
	memory1 mem1(.Q(w2), ._Q(w3), .D(D), .C(w1));
	not(w4, w1);
	memory2 mem2(.Q(Q), ._Q(_Q), .S(w2), .C(w4), .R(w3));
endmodule