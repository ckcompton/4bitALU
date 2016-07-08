/* 
Name:Cameron Compton
File:shiftR.v
Description: Shift Right by 1
*/
module Shift(a,cout,out);
	input [3:0] a;
	wire w1,w2,w3;
	output cout;
	output [3:0] out;
	
 assign out[2]=a[3];
 assign out[3]=1'b0;
 assign out[1]=a[2];
 assign cout = a[0];
 assign out[0]=a[1];
endmodule
