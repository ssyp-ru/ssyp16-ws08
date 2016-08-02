module pc(input clk,input [15:0]offset,input add_offset,output reg [15:0]answer);

always @(posedge clk) 
begin
if (add_offset)
answer=answer+offset;
else
answer=answer+16'b0000000000000001;
end
endmodule
