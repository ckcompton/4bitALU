/* 
Name:Cameron Compton
File:RCA4.v
Description: This is a Four Bit RCA.
*/
module RCA4(a,b,cin,sum,cout,op,V);
	
	input [3:0] a, b; 
	input cin;
	input op;
	
	
	output [7:0] sum; 
	output cout;
	output V;
	
	
	wire c0,c1,c2,c3;
	wire b0,b1,b2,b3;
	
	xor(b0,b[0],op); //will negate B if op is 1 for subtraction
	xor(b1,b[1],op);
	xor(b2,b[2],op);
	xor(b3,b[3],op);
	//xor(cout,c3,op);
	xor(V,c3,c2);
	
	assign c0 = (op)? 1'b1:cin;
	
	FA	FA01(a[0],b0,c0,sum[0],c1);
	FA	FA02(a[1],b1,c1,sum[1],c2);
	FA	FA03(a[2],b2,c2,sum[2],c3);
	FA	FA04(a[3],b3,c3,sum[3],cout);	

endmodule
