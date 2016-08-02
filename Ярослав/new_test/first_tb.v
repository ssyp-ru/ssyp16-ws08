`timescale 1ns/1ns

module first_tb();
reg clk;
reg [2:0] counter;
wire f;

initial begin
clk = 1;
counter = 1'b1;
end
always #5 clk = ~clk;

always @(posedge clk)
counter = counter+1'b1;

first OUT(.X(f),.A(counter[2]),.B(counter[1]),.C(counter[0]));

endmodule