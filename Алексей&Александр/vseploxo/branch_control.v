module branch_control(output reg add_offset,input z, input [1:0]sel,input j);
always@(sel,z,j)
add_offset=((sel[0])|(sel[1])|z)&(~(sel[0])|(sel[1])|~z)&j;
endmodule
