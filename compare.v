/* 
Name:Cameron Compton
File:compare.v
Description: 3 bit output
*/
module compare(a,b,out);
	input [3:0] a,b;
	output reg [3:0] out;
	
always @(a,b,out)
begin

	if(a < b)
	assign out = 4'b0001;  // out = 001 if a is less than b
	if(a >  b)
	assign out = 4'b0010;
	if(a == b )
	assign out = 4'b0000;

	end
endmodule
