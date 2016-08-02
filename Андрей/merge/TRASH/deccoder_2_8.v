module decoder_2_8 (input [7:0] im_offset, input [7:0] a_offset, input offset_sel, output reg [7:0] offset);

always @(im_offset, a_offset, offset_sel, offset) begin
case (offset_sel)
0:
offset = im_offset;
1:
offset = a_offset;
endcase
end

endmodule
