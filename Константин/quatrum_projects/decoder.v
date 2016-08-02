module decoder(output reg [15:0] OUT, input [0:3] IN);
	always @(IN) begin
		OUT = 0;
		OUT[IN] = 1;
	end
endmodule
