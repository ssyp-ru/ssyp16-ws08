module PC (input clk, input [3:0] from_BC, output reg [7:0] counter);
always @(posedge clk) begin
	counter = counter + 1 + from_BC; 
end


endmodule
