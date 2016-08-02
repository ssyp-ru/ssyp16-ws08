module func_unit (output z,output [15:0]send,input [3:0]sel, input [15:0]a, input [15:0]b);

wire [15:0]l1,l2;

alu alu1(.z(z),.f(l1) , .a(a) , .b(b), .op_sel(sel[2:0]));
shifter sift1(.f(l2), .b(b), .op_sel(sel[1:0]));
multiplex4 m4(.send(send), .s1(l1), .s2(l2), .sel(sel[3]));

endmodule

