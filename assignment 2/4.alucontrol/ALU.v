`include "ALU_nbit.v"
`include "ALU_control.v"
module ALU(aluop,func7,func3,a,b,result,cout,zero,set);
input [0:1]aluop;
input [0:6] func7;
input [0:2] func3;
input [63:0]a;
input [63:0]b;
output [63:0]result;
output cout,zero;
wire [0:3]alu_operation;
output [0:63]set;

ALU_control A(aluop,func7,func3,alu_operation);
ALU_nbit B(a,b,alu_operation[1],alu_operation,result,cout,zero,set);

endmodule
