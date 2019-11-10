//Ayush Kumar 17C0111
//Ranjana K 17C0134


`include "fullAdder.v"
module alu_1bit(a,b,cin,aluop,less,result,cout,w3);
input a,b,cin,less;
input [3:0] aluop;
output result;
output cout;
wire aout,bout;
wire w1,w2,u1,u2,u3,u4;
inout w3;

wire k1,k2,ain,r3in;
not a1(ain,a);
not r(r3in,aluop[3]);
and a11(k1,a,r3in);
and a12(k2,ain,aluop[3]);
or a21(aout,k1,k2);

wire l1,l2,bin,r2in;
not b1(bin,b);
not r1(r2in,aluop[2]);
and b11(l1,b,r2in);
and b12(l2,bin,aluop[2]);
or b21(bout,l1,l2);


and q0(w1,aout,bout);
or q1(w2,aout,bout);
fullAdder q2(aout,bout,cin,w3,cout);


/*
if(aluop[1]==0&&aluop[0]==0)
	begin result<=w1; end
if(aluop[1]==0&&aluop[0]==1)
	begin result<=w2; end
if(aluop[1]==1&&aluop[0]==1)
	begin result<=w3; end*/

and v1(u1,~aluop[1],~aluop[0],w1);
and v2(u2,~aluop[1],aluop[0],w2);
and v3(u3,aluop[1],~aluop[0],w3);
and v4(u4,aluop[1],aluop[0],less);
or v4(result,u1,u2,u3,u4);
endmodule
