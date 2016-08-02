module BC (input Z,input [1:0] B,input J,output reg add_offset);

always @* begin

if(J==1) begin
if(B==0)
	add_offset= (~Z);
else
if(B==1)
	add_offset= Z;
else
	add_offset=1;
	
end 
else
add_offset= 0;	
	
end

endmodule