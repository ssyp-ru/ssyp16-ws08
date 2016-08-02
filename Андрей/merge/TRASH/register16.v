module register16 (input loat_en, input clk, input [15:0] d,output reg [15:0] q);

always @(posedge clk) begin
if (loat_en)
	q<=d;

end
endmodule