/* 
Name:Your Name 
File:ALU4.v
Description: This is a Four Bit ALU.
*/
module ALU4(a,b,cin,op,cout,out);

	input [3:0] a,b;
	input cin;
	input cout;
	input [2:0] op;
	
	output reg [7:0] out;  
	//output reg cout;
	input v;
	input [3:0] addersub;
	input [3:0] shift;
	input [3:0] outcompare;
	
	RCA4 rca01(a,b,cin,addersub,cout,op[0],v);
	Shift sh01(a,cout1,shift);
	compare c01(a,b,outcompare);

always @(op,addersub,shift)
begin
	if(op == 3'b000 )
	assign out = addersub;
	if(op == 3'b001 )
	assign out = addersub;
	if(op == 3'b010 )
	assign out = shift;
	if(op == 3'b011 )
	assign out = a * b;
	if(op == 3'b100 )
	assign out[3:0] = a~^b;
	if(op == 3'b101 )
	assign out = outcompare;
	
	end
endmodule
