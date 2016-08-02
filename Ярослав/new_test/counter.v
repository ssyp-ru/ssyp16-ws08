module counter(output Q1,output Q4,output Q7, input C );

wire w2,w3,w5,w6,z1,z2,z3;

memory m0(.C(C),.Q(Q1),.D(w2),._Q(z1));
not(w2,Q1);
xor(w3,Q1,Q4);
memory m1(.C(C),.D(w3),.Q(Q4),._Q(z2));
and(w5,Q1,Q4);
xor(w6,w5,Q7);
memory m2(.D(w6),.C(C),.Q(Q7),._Q(z3));

	

endmodule
