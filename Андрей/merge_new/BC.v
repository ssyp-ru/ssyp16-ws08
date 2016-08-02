module BC (input z, input [1:0] BZ_BNZ_JMP_JMR, input J,output add_offset);
assign add_offset = ((~BZ_BNZ_JMP_JMR[0] & z)|(BZ_BNZ_JMP_JMR[0] & ~z)|BZ_BNZ_JMP_JMR[1]) & J;

endmodule
