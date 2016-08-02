module PC(input clk, input add_offset, input [15:0] offset, output reg [15:0] counter);
always @(posedge clk) begin
if (add_offset)
	counter = counter + offset;
else
	counter = counter + 16'b0000000000000001;
end


endmodule
