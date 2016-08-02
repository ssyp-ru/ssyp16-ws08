module sh(output OUT[3:0], input A[3:0]);

assign OUT[1] = A[0]
assign OUT[2] = A[1]
assign OUT[3] = A[2]

endmodule