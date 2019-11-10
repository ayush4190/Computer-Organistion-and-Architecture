`include "ALU_1bit.v"
module ALU_nbit(a,b,cin,aluop,result,cout,zero,set);
input [63:0] a;
input [63:0] b;
input cin;
input [3:0] aluop;
output [63:0] result;
output [63:0] set;
output cout,zero;
wire [63:0] c;
genvar k;

alu_1bit A[63:0](a[63:0],b[63:0],{c[62:0],cin},aluop,{63'h0,set[63]},result[63:0],{cout,c[62:0]},set[63:0]);

wire [63:1] p;

or B[63:1](p[63:1],result[63:1],{p[62:1],result[0]});

not E(zero,p[63]);
endmodule
