module memory_block(output reg [15:0]OUT, input [15:0]IN, input C, input LOAD_EN);//DONE

always @(posedge C) begin
	if(LOAD_EN)
		OUT = IN;
end

endmodule