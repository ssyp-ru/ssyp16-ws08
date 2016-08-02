module datapath(output z,output [15:0]a_end, output[15:0] b_end, input [3:0]a_sel, input [3:0]b_sel,input data_sel, input [3:0]op_sel, input [15:0]data_in,input [15:0]const_in, input [3:0]dest_sel, input load_en,input const_sel, input clk);

wire [15:0]l1,l2,f;

func_unit fu1(.z(z),.send(f), .sel(op_sel), .a(a_end), .b(l2));
multiplex4 m5(.send(l1), .s1(f), .s2(data_in), .sel(data_sel));
fileregister fr(.a(a_end), .b(b_end),.clk(clk) , .d(l1) ,.a_sel(a_sel) , .b_sel(b_sel), .dest_sel(dest_sel) ,.load_en(load_en));
multiplex4 m6(.send(l2), .s1(b_end), .s2(const_in), .sel(const_sel));

endmodule
