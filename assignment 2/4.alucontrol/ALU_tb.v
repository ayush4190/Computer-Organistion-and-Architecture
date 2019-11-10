`include "ALU.v"
module ALU_tb;
reg [0:1]aluop;
reg [0:6]func7;
reg [0:2]func3;
reg [63:0]a;
reg [63:0]b;
wire [63:0]result;
wire cout,zero;
wire [63:0]set;

ALU	A(aluop,func7,func3,a,b,result,cout,zero,set);

initial 
begin
	$dumpfile("ALU.vcd");
	$dumpvars(0,ALU_tb);
	$display("\nLoad/Store");
	$display("ALUOP   Func7  Func3 	   A  	     	   B		    Result      cout  zero");
	$monitor(" %2b   %7b   %3b   %16h %16h %16h  %d     %d",aluop,func7,func3,a,b,result,cout,zero);
	aluop=2'b00;
	func3=3'b000;
	func7=7'h0;
	a=64'h1;
	b=64'ha;
	
	#5	$display("\nBEQ");
	$display("ALUOP   Func7  Func3 	   A  	     	   B		    Result      cout  zero");
	aluop=2'b01;
	a=64'hf;
	
	#5	$display("\nADD");
	$display("ALUOP   Func7  Func3 	   A  	     	   B		    Result      cout  zero");
	aluop=2'b10;
	func7=7'b0;
	func3=3'b0;
	a=64'hf;
	b=64'hf;
	#5 a=64'hffffffffffffffff;
	b=64'h1;
	#5 a=64'h5fffffffffffffff;
	b=64'hff;
	#5 b=64'hffffffffffffffff;
	a=64'h1;
	
	#5	$display("\nSUB");
	$display("ALUOP   Func7  Func3 	   A  	     	   B		    Result      cout  zero");
	aluop=2'b10;
	func7=7'b0100000;
	a=64'hf;
	b=64'hf;
	#5 a=64'hffffffffffffffff;
	b=64'h1;
	#5 a=64'h5fffffffffffffff;
	b=64'hff;
	#5 b=64'hffffffffffffffff;
	a=64'h1;
	
	#5	$display("\nAND");
	$display("ALUOP   Func7  Func3 	   A  	     	   B		    Result      cout  zero");
	aluop=2'b10;
	func7=7'b0000000;
	func3=3'b110;
	a=64'hf;
	b=64'hf;
	#5 a=64'hffffffffffffffff;
	b=64'h1;
	#5 a=64'h5fffffffffffffff;
	b=64'hff;
	
	#5	$display("\nOR");
	$display("ALUOP   Func7  Func3 	   A  	     	   B		    Result      cout  zero");
	aluop=2'b10;
	func7=7'b0000000;
	func3=3'b111;
	a=64'hf;
	b=64'hf;
	#5 a=64'hffffffffffffffff;
	b=64'h1;
	#5 a=64'h5fffffffffffffff;
	b=64'hff;
	#5 $finish;
end

endmodule
