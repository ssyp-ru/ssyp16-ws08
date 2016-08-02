module multiplexor4_16(input [1:0] S,input [15:0] M0,input [15:0] M1,input [15:0] M2,input [15:0] M3,output reg [15:0] OU);

always@(S or M0 or M1 or M2 or M3) begin

case(S)
0:OU=M0;
1:OU=M1;
2:OU=M2;
3:OU=M3;
endcase

end

endmodule