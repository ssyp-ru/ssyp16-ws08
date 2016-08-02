module one (output reg s , output reg c1, input a , input b ,input c);

always @(a or b or c) begin 
s=((~a)&(~b)&c)|((~a)&b&(~c))|(a&(~b)&(~c))|(a&b&c);
c1=(a&b)|(b&c)|(c&a);
end

endmodule
 

