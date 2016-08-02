module datapath (input clk,
					  input load_en,
					  input [3:0] a_sel,
					  input [3:0] b_sel,
					  input [3:0] dest_sel,
					  input [3:0] op_sel,
					  input [15:0] const_in,
					  input const_sel,
					  input [15:0] data_in,
					  input data_sel,
					  output [15:0] a_out,
					  output [15:0] b_out,
					  output z);
wire [15:0] D;
wire [15:0] A;
wire [15:0] F;
wire [15:0] B;
reg_file rf (clk, load_en, D, dest_sel, a_sel, b_sel, a_out, B);

multiplex2_16 m1(const_sel, B, const_in, b_out);

functional_unit al_shift (op_sel, a_out, b_out, F, z);

multiplex2_16 m2(data_sel, F, data_in, D);

endmodule 