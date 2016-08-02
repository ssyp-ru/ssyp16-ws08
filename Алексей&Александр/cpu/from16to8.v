module from16to8 (input [15:0] A,output [7:0] B1,output [7:0] B2);
assign B1=A[15:8];
assign B2=A[7:0];
endmodule