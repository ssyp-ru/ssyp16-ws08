module datapath(
output [15:0] A_OUT, output [15:0] B_OUT,
output V, output C, output N, output Z,
output [15:0] AROUND,
input [15:0] data_in, input data_sel,
input [15:0] const_in, input const_sel,
input clk, input load_en,
input [3:0] dest_sel, input [3:0] A_sel, input [3:0] B_sel,
input [3:0] op_sel);
	wire [15:0] w1, w2, wa, wb, wd;
	multiplexor_16x3 m16x3_1(w1, wb, const_in, const_sel);
	assign AROUND = w1;
	register_file reg_file(wa, wb, wd, clk, load_en, dest_sel, A_sel, B_sel);
	func_unit f_unit(w2, V, C, N, Z, wa, w1, op_sel);
	multiplexor_16x3 m16x3_2(wd, w2, data_in, data_sel);
	assign A_OUT = wa;
	assign B_OUT = wb;
endmodule
