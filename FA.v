/* 
Name:Your Name 
File:FA.v
Description: This is a Full Adder
*/
module FA(a,b,cin,sum,cout);
	input a, b, cin;
	output sum, cout;
	wire w,w1,w2,w3;
	
	xor a0(w,b,a);
	xor a1(sum,w,cin);
	
	and a2(w1,a,b);
	and a3(w2,a,cin);
	and a4(w3,b,cin);
	or a5(cout,w1,w2,w3);
endmodule
