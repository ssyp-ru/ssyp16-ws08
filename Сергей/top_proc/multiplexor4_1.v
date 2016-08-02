module multiplexor4_1(input [1:0] S,input M0,input M1,input M2,input M3,output reg OU);

always@(S or M0 or M1 or M2 or M3) begin

case(S)
0:OU=M0;
1:OU=M1;
2:OU=M2;
3:OU=M3;
endcase

end

endmodule