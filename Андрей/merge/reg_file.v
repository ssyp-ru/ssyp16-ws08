module reg_file (input clk, input load_en, input [15:0] d, input [3:0] dest_sel, input [3:0] a_sel, input [3:0] b_sel, output [15:0] A, output [15:0] B);
wire [15:0] sel;
wire [15:0] r0;
wire [15:0] r1;
wire [15:0] r2;
wire [15:0] r3;
wire [15:0] r4;
wire [15:0] r5;
wire [15:0] r6;
wire [15:0] r7;
wire [15:0] r8;
wire [15:0] r9;
wire [15:0] r10;
wire [15:0] r11;
wire [15:0] r12;
wire [15:0] r13;
wire [15:0] r14;
wire [15:0] r15;

decoder_16 d1 (dest_sel, sel);

wire t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15;

and(t0,load_en, sel[0]);
and(t1,load_en, sel[1]);
and(t2,load_en, sel[2]);
and(t3,load_en, sel[3]);
and(t4,load_en, sel[4]);
and(t5,load_en, sel[5]);
and(t6,load_en, sel[6]);
and(t7,load_en, sel[7]);
and(t8,load_en, sel[8]);
and(t9,load_en, sel[9]);
and(t10,load_en, sel[10]);
and(t11,load_en, sel[11]);
and(t12,load_en, sel[12]);
and(t13,load_en, sel[13]);
and(t14,load_en, sel[14]);
and(t15,load_en, sel[15]);

register16 reg0 (t0, clk, d, r0);
register16 reg1 (t1, clk, d, r1);
register16 reg2 (t2, clk, d, r2);
register16 reg3 (t3, clk, d, r3);
register16 reg4 (t4, clk, d, r4);
register16 reg5 (t5, clk, d, r5);
register16 reg6 (t6, clk, d, r6);
register16 reg7 (t7, clk, d, r7);
register16 reg8 (t8, clk, d, r8);
register16 reg9 (t9, clk, d, r9);
register16 reg10 (t10, clk, d, r10);
register16 reg11 (t11, clk, d, r11);
register16 reg12 (t12, clk, d, r12);
register16 reg13 (t13, clk, d, r13);
register16 reg14 (t14, clk, d, r14);
register16 reg15 (t15, clk, d, r15);

multiplex16_16 a1 (a_sel, r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15, A);
multiplex16_16 b1 (b_sel, r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15, B);
endmodule
 