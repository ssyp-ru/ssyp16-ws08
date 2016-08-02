module chetkiyaue(output q1,output q2, output q3,input c);

ended e1(.q1(q1),.q2(),.d(q1^(q3&q2)),.c(c));
ended e2(.q1(q2),.q2(),.d(q2^q3),.c(c));
ended e3(.q1(q3),.q2(),.d(~q3),.c(c));

endmodule
