module memory1(output Q, output _Q, input D, input C);
	
	wire w1,w2,w3,w4,w5;
	nand(w2,D,C);
	not(w1,D);
	nand(w3,w1,C);
	nand(w5,w2,w4);
	nand(w4,w3,w5);
	assign Q=w5;
	assign _Q=w4;
	
endmodule

module memory2(output Q, output _Q,input C, input R, input S);
	
	
	wire w1,w2,w3,w4;
	nand(w1,S,C);
	nand(w2,C,R);
	nand(w3,w1,w4);
	nand(w4,w2,w3);
	nand(Q,w1,w4);
	nand(_Q,w2,w3);

endmodule

module memory(output Q,output _Q, input D, input C);

wire w1,w2,w3,w4;
not(w1,C);
memory1 m1(.D(D),.C(w1),.Q(w2),._Q(w3));
not(w4,w1);
memory2 m2(.S(w2),.C(w4),.R(w3),.Q(Q),._Q(_Q));

endmodule