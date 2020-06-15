`include "me.v"
module add_tb;
reg a ,b;
wire c;
add a1(a,b,c);
initial
begin
$monitor("a=%b b=%b c=%b",a,b,c);
a=1'b0; b=1'b0;
end
endmodule

