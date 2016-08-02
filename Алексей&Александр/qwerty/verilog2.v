`timescale 1ns/1ns


module verilog2();
reg clk;
reg [2:0] counter;
wire f;
initial begin
clk=1;
counter=-1'b1;
end

always #5 clk=~clk;
always @(posedge clk)
counter=counter+1'b1;
qwerty dut(.x(f), .a(counter[2]), .b(counter[1]), .c(counter[0]));
endmodule