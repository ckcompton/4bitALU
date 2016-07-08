/* 
Name:Your Name 
File:xor.v
Description: This is a Four Bit RCA.
*/
module xnormod(a,b,out);
	
	input [3:0] a, b; 
	output [3:0] sum; 

assign out = a xnor b;
	


endmodule
