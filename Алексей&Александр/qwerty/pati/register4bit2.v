module register4bit2 (output reg [3:0]q,input [3:0]d ,input clk, input load_en);

always@(posedge clk)
begin
if (load_en)
q<=d;
end
endmodule
