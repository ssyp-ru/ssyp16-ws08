module memory4 (input c, input [3:0] d,output reg [3:0] q);

always @(posedge c) begin

q<=d;

end
endmodule