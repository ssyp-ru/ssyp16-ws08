module UNLIMITED_REGISTER (input clk, input load_en, input [3:0] d, input [1:0] dest_sel, input [1:0] a_sel, input [1:0] b_sel, output [3:0] A, output [3:0] B);
wire [3:0] sel;
wire [3:0] r0;
wire [3:0] r1;
wire [3:0] r2;
wire [3:0] r3;

decoder d1 (dest_sel, sel);

wire t0,t1,t2,t3;

and(t0,load_en, sel[0]);
and(t1,load_en, sel[1]);
and(t2,load_en, sel[2]);
and(t3,load_en, sel[3]);

register4 reg0 (t0, clk, d, r0);
register4 reg1 (t1, clk, d, r1);
register4 reg2 (t2, clk, d, r2);
register4 reg3 (t3, clk, d, r3);

multyplex a1 (a_sel, r0,r1,r2,r3, A);
multyplex b1 (b_sel, r0,r1,r2,r3, B);
endmodule
 