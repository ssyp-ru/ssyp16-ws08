module register_file(
output [15:0] A,
output [15:0] B,
input [15:0] D,
input clk,
input load_en,
input [3:0] dest_sel,
input [3:0] A_sel,
input [3:0] B_sel);
	wire [15:0] dec_w, r[0:15];
	wire w[0:15];
	decoder dec(dec_w, dest_sel);
	and(w[0], load_en, dec_w[0]);
	and(w[1], load_en, dec_w[1]);
	and(w[2], load_en, dec_w[2]);
	and(w[3], load_en, dec_w[3]);
	and(w[4], load_en, dec_w[4]);
	and(w[5], load_en, dec_w[5]);
	and(w[6], load_en, dec_w[6]);
	and(w[7], load_en, dec_w[7]);
	and(w[8], load_en, dec_w[8]);
	and(w[9], load_en, dec_w[9]);
	and(w[10], load_en, dec_w[10]);
	and(w[11], load_en, dec_w[11]);
	and(w[12], load_en, dec_w[12]);
	and(w[13], load_en, dec_w[13]);
	and(w[14], load_en, dec_w[14]);
	and(w[15], load_en, dec_w[15]);
	memory_block mem_block1(r[0], D, clk, w[0]);
	memory_block mem_block2(r[1], D, clk, w[1]);
	memory_block mem_block3(r[2], D, clk, w[2]);
	memory_block mem_block4(r[3], D, clk, w[3]);
	memory_block mem_block5(r[4], D, clk, w[4]);
	memory_block mem_block6(r[5], D, clk, w[5]);
	memory_block mem_block7(r[6], D, clk, w[6]);
	memory_block mem_block8(r[7], D, clk, w[7]);
	memory_block mem_block9(r[8], D, clk, w[8]);
	memory_block mem_block10(r[9], D, clk, w[9]);
	memory_block mem_block11(r[10], D, clk, w[10]);
	memory_block mem_block12(r[11], D, clk, w[11]);
	memory_block mem_block13(r[12], D, clk, w[12]);
	memory_block mem_block14(r[13], D, clk, w[13]);
	memory_block mem_block15(r[14], D, clk, w[14]);
	memory_block mem_block16(r[15], D, clk, w[15]);
	
	multiplexor_16x16 mult1(A, r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], r[8], 
	r[9], r[10], r[11], r[12], r[13], r[14], r[15], A_sel);
	
	multiplexor_16x16 mult2(B, r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], r[8], 
	r[9], r[10], r[11], r[12], r[13], r[14], r[15], B_sel);
endmodule
