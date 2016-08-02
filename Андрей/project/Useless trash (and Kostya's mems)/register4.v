module register4 (input loat_en, input clk, input [3:0] d,output reg [3:0] q);

always @(posedge clk) begin
if (loat_en)
	q<=d;

end
endmodule