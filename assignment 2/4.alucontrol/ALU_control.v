module ALU_control(aluop,func7,func3,alu_operation);
input [0:1]aluop;
input [0:6]func7;
input [0:2]func3;
output [0:3]alu_operation;

wire w;
not(w,aluop[0]);
and(alu_operation[0],w,aluop[0]);

wire w1,w2,w3;
and(w1,func7[1],aluop[0]);
not(w2,aluop[0]);
and(w3,w2,aluop[1]);
or(alu_operation[1],w3,w1);

wire t1,t2,t3;
not(t1,func3[0]);
and(t2,aluop[0],t1);
not(t3,aluop[0]);
or(alu_operation[2],t2,t3);

wire t;
xor(t,func7[1],func3[2]);
and(alu_operation[3],t,aluop[0]);


endmodule
