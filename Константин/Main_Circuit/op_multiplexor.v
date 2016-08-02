module op_multiplexor(
output reg [15:0] F, 
input [15:0] A,
input [15:0] B,
input SEL);
	always begin
		if (~SEL)
			F = A;
		else
			F = B;
	end
endmodule
