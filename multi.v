/* 
Name:Your Name 
File:RCA4.v
Description: This is a Four Bit RCA.
*/
module mult(a,b,out);
	
	input [3:0] a, b; 
	output [3:0] out; 

assign out =  a * b ;
endmodule