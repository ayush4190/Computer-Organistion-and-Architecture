//Ayush Kumar 17CO111
//Ranjana K 17CO134


module decoder(output[31:0] out,input enable,input[4:0] address);
	assign out= enable<<address;
endmodule
