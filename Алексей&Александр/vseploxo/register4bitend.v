module register4bitend (output reg [15:0]q,input [15:0]d ,input clk, input load_en);

always@(posedge clk)
begin
if (load_en)
q<=d;
end
endmodule
