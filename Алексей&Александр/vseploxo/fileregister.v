module fileregister(output [15:0]a, output [15:0]b,input clk , input [15:0]d ,input [3:0]a_sel , input [3:0]b_sel, input [3:0]dest_sel , input load_en);

wire [15:0]l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15;
wire s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;


decoder dec( .s0(s0), .s1(s1), .s2(s2), .s3(s3), .s4(s4),.s5(s5),.s6(s6),.s7(s7),.s8(s8),.s9(s9),.s10(s10),.s11(s11),.s12(s12),.s13(s13),.s14(s14),.s15(s15), .dest_sel(dest_sel));
register4bitend r0(.q(l0), .d(d), .clk(clk), .load_en(s0 & load_en));
register4bitend r1(.q(l1), .d(d), .clk(clk), .load_en(s1 & load_en));
register4bitend r2(.q(l2), .d(d), .clk(clk), .load_en(s2 & load_en));
register4bitend r3(.q(l3), .d(d), .clk(clk), .load_en(s3 & load_en));
register4bitend r4(.q(l4), .d(d), .clk(clk), .load_en(s4 & load_en));
register4bitend r5(.q(l5), .d(d), .clk(clk), .load_en(s5 & load_en));
register4bitend r6(.q(l6), .d(d), .clk(clk), .load_en(s6 & load_en));
register4bitend r7(.q(l7), .d(d), .clk(clk), .load_en(s7 & load_en));
register4bitend r8(.q(l8), .d(d), .clk(clk), .load_en(s8 & load_en));
register4bitend r9(.q(l9), .d(d), .clk(clk), .load_en(s9 & load_en));
register4bitend r10(.q(l10), .d(d), .clk(clk), .load_en(s10 & load_en));
register4bitend r11(.q(l11), .d(d), .clk(clk), .load_en(s11 & load_en));
register4bitend r12(.q(l12), .d(d), .clk(clk), .load_en(s12 & load_en));
register4bitend r13(.q(l13), .d(d), .clk(clk), .load_en(s13 & load_en));
register4bitend r14(.q(l14), .d(d), .clk(clk), .load_en(s14 & load_en));
register4bitend r15(.q(l15), .d(d), .clk(clk), .load_en(s15 & load_en));
multiplexfb m1(.send(a), .sel(a_sel), .s0(l0), .s1(l1), .s2(l2), .s3(l3), .s4(l4),.s5(l5),.s6(l6),.s7(l7),.s8(l8),.s9(l9),.s10(l10),.s11(l11),.s12(l12),.s13(l13),.s14(l14),.s15(l15));
multiplexfb m2(.send(b), .sel(b_sel), .s0(l0), .s1(l1), .s2(l2), .s3(l3), .s4(l4),.s5(l5),.s6(l6),.s7(l7),.s8(l8),.s9(l9),.s10(l10),.s11(l11),.s12(l12),.s13(l13),.s14(l14),.s15(l15));

endmodule
