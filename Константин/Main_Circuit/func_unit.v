module multiplexor_16x3(output reg [15:0] F, input [15:0] A, input [15:0] B, input sel);
	always begin
		if (~sel)
			F = A;
		else
			F = B;
	end
endmodule

module func_unit(output [15:0] F, output Z, 
input [15:0] A, input [15:0] B, input [3:0] sel);
	wire [15:0] tr_alu, tr_shifter;
	alu _alu(tr_alu, Z, A, B, sel[2:0]);
	bit_op_multiplexor shifter(tr_shifter, B, sel[1:0]);
	multiplexor_16x3 m_16x3(F, tr_alu, tr_shifter, sel[3]);
endmodule
