//Ayush Kumar 17CO111
//Ranjana K 17CO134

`include "ALU_control.v"
module ALU_control_tb;
reg[0:1] aluop;
reg[0:6] func7;
reg[0:2] func3;
wire[0:3] alu_operation;

ALU_control A(aluop,func7,func3,alu_operation);

initial
begin
	$dumpfile("ALU_control.vcd");
	$dumpvars(0,ALU_control_tb);
	$display("\nLOAD instruction");
	aluop=2'b00;
	func7=7'b0;
	func3=3'b0;
	$monitor("alu_op=%2b func7=%7b func3=%3b    alu_operation=%4b",aluop,func7,func3,alu_operation);
	#5
	$display("\nStore Instruction");
	func3=3'b010;
	#5
	$display("\nBranch if Equal");
	aluop=2'b01;
	#5
	$display("\nR-type");
	aluop=2'b10;
	func7=7'b0;
	func3=3'b0;
	#5
	func7=7'b0100000;
	#5
	func7=7'b0;
	func3=3'b111;
	#5
	func7=7'b0;
	func3=3'b111;
	#5
	func3=3'b110;
	#5
	$finish;
end


endmodule
