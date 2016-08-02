module program_counter(output reg [15:0] pointer, input clk, 
								input add_offset, input [15:0] offset);
	always @(posedge clk) begin
		if (add_offset)
			pointer <= pointer + offset;
		else
			pointer <= pointer + 1;
	end
endmodule
