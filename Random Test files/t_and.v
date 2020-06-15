`include "and.v"
module andgate_tb;
reg a,b;
wire c;
andgate M1(a,b,c);
intial begin
//$dumpfile("andgate.vcd");
//$dumpvars(0,"andgatei_tb");
$monitor("a=%b b=%b c=%b",a,b,c);
a=1b'0;
b=1b'0;
#5
a=1b'0;
b=1b'1;
end
endmodule

