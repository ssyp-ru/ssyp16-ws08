module from_16_to_8_and_8 (input [15:0] A, output [7:0] B1, output [7:0] B2);

assign B1 = A[7:0];
assign B2 = A[15:8];

endmodule
