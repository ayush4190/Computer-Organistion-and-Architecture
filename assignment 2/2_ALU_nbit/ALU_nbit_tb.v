`include "ALU_nbit.v"
module ALU_nbit_tb;

reg [63:0] a;
reg [63:0] b;
reg cin;
reg [3:0] aluop;
wire [63:0] result;
wire cout,zero;
wire [63:0] set;
ALU_nbit A(a,b,cin,aluop,result,cout,zero,set);

initial
	begin
	$dumpfile("ALU_nbit.vcd");
	$dumpvars(0,ALU_nbit_tb);
	$monitor("a=0x%h b=0x%h cin=%b aluop=%b      result=0x%h cout=%b zero=%b",a,b,cin,aluop,result,cout,zero);
	$display("SET less then");
	aluop=4'b0111;
	cin=1;
	a=64'h0;
	b=64'h5;
	#5 a=64'h5;
	b=64'h5;
	#5 a=64'hf;
	b=64'h5;
	
	#5
	$display("AND");
	aluop=4'b0000;
	cin=0;
	a=64'hffff;
	b=64'habcdef;
	#5 
	a=64'h0;
	b=64'h1234567890abcdef;
	#5
	
	$display("OR");
	aluop=4'b0001;
	a=64'hffff;
	b=64'habcdef;
	#5 
	a=64'h0;
	b=64'h1234567890abcdef;
	#5
	
	$display("ADD");
	aluop=4'b0010;
	a=64'hff00;
	b=64'h00ee;
	#5 
	a=64'h5;
	b=64'h6;
	#5
	
	$display("SUB");
	aluop=4'b0110;
	cin=1;
	a=64'hffff;
	b=64'hff;
	#5 
	a=64'h0;
	b=64'hffffffffffffffff;
	#5
	
	$display("NOR");
	cin=0;
	aluop=4'b1100;
	a=64'hffff;
	b=64'habcdef;
	#5 
	a=64'h0;
	b=64'h1234567890abcdef;
	#5
	
	$display("NAND");
	aluop=4'b1101;
	a=64'hffff;
	b=64'habcdef;
	#5 
	a=64'h0;
	b=64'h1234567890abcdef;
	end

endmodule