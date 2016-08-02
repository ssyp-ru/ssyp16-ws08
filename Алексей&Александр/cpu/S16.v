module S16(input [15:0] SHZ,input clk,input loat_en, output reg [15:0] Q );
always @(posedge clk) begin
if(loat_en)
	Q<=SHZ;
end
endmodule