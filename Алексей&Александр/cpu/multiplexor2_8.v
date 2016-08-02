module multiplexor2_8(input S,input [7:0] M0,input [7:0] M1,output reg [7:0] OU);

always@(S or M0 or M1 ) begin

case(S)
0:OU=M0;
1:OU=M1;
endcase

end

endmodule