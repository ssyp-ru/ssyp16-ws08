module memory_block(
output reg [15:0] OUT,
input [15:0] IN,
input C, input load_en);
	always @(posedge C) begin
		if (load_en)
			OUT <= IN;
	end
endmodule
