module multiplex_2_16_new (input [15:0] im_offset, input [15:0] a_offset, input offset_sel, output reg [15:0] offset);

always @(im_offset, a_offset, offset_sel, offset) begin
case (offset_sel)
0:
offset = im_offset;
1:
offset = a_offset;
endcase
end

endmodule
