`include "halfAdder.v"
module fullAdder(op1,op2,cin,s,c);
input op1,op2,cin;
output s,c;
wire s1,c1,c2;
halfAdder ha1(op1,op2,s1,c1);
halfAdder ha2(cin,s1,s,c2);
or(c,c1,c2);
endmodule