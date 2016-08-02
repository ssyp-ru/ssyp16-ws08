module PC(input clk,input [15:0] offset,input add_offset,output reg [15:0] PC);


always @(posedge clk) begin

	if(add_offset) 
		PC= PC+ offset; 
	else
		PC=PC+16'b0000000000000001;
	
end
endmodule