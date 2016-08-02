module datapath(output [15:0]A_OUT,
					 output [15:0]B_OUT,
					 output Z,
					 output [15:0]AROUND,
					 input [3:0]A_SEL,
					 input [3:0]B_SEL,
					 input [15:0]CONST_IN,
					 input [15:0]DATA_IN,
					 input [3:0]DEST_SEL,
					 input [3:0]OP_SEL,
					 input LOAD_EN,
					 input CONST_SEL,
					 input DATA_SEL,
					 input CLK);
	
	wire [15:0]reg_out_A;
	wire [15:0]reg_out_B;
	wire [15:0]func_in_const;
	wire [15:0]func_out;
	wire [15:0]reg_in;
	
	multiplexor2x16 m0(func_in_const,
						reg_out_B,
						CONST_IN,
						CONST_SEL);
	assign AROUND = func_in_const;
	register_file reg_file(reg_out_A,
								  reg_out_B,
								  reg_in,
								  DEST_SEL,
								  A_SEL,
								  B_SEL,
								  LOAD_EN,
								  CLK);
	functional_unit func_unit(func_out,
									  Z,
									  reg_out_A,
									  func_in_const,
									  OP_SEL);
	multiplexor2x16 m1(reg_in,
						func_out,
						DATA_IN,
						DATA_SEL);
	assign A_OUT = reg_out_A;
	assign B_OUT = reg_out_B;
					 
endmodule
