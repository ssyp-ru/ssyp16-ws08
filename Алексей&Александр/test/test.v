module test(output F, input A, input B, input C);
	wire t1, t2;
	
	assign F = ~A&(B|C);

endmodule