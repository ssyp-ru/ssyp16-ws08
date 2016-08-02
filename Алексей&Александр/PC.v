module PC(input clk,input [7:0] N,output reg [7:0] addres);


always @(posedge clk) begin
	addres=addres + N + 1 ;
end
endmodule