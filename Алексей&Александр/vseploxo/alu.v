module alu(output z,output [15:0]f, input [15:0]a , input [15:0]b, input [2:0]op_sel);

wire [15:0]l1,l2;
mazahizm maz1(.z(z),.answer(l1), .int1(a), .int2(b), .check(op_sel[0]));
lu logic1(.send(l2) ,.a(a) ,.b(b) ,.op_sel(op_sel[1:0]));
multiplex1bit m1b1(.send(f), .sel(op_sel[2]), .s1(l1), .s2(l2));
	endmodule
