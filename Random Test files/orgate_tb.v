`include "orgate.v"
module orgate_tb;
reg a,b;
wire c;
orgate m1(a,b,c);
initial begin 
$monitor("a=%b , b=%b , c=%b",a,b,c);
a=1'b0; b=1'b0;
#5
a=1'b0 ; b=1'b1;
end
endmodule

