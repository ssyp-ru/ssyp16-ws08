module shifter(output [15:0]f, input [15:0]b, input [1:0]op_sel);

multiplex1 m0(.send(f[0]), .sel(op_sel), .s0(1'b0), .s1(b[1]), .s2(b[15]), .s3(b[1]));
multiplex0 m1(.send(f[15]), .sel(op_sel), .s0(b[14]), .s1(1'b0), .s2(b[14]), .s3(b[0]));
multiplex3 m3(.send(f[14:1]), .sel(op_sel[0]), .s1(b[13:0]), .s2(b[15:2]));

endmodule

