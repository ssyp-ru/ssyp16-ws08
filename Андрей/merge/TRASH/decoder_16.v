module decoder_16 (input [3:0] a, output reg [15:0] q);
always @(a) begin
q = 0;
q[a] = 1;
end

endmodule
