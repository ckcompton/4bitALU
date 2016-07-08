/*
Name:Your Name 
File:FA_tb.v
Description: This is a Full Adder testbench
*/
module mult_tb;
reg [3:0] a,b;
wire [7:0] out;
   initial
     begin
        $dumpfile("mult_test.vcd");
        $dumpvars(0, m01);
        $monitor("%b %b %b", a,b, out);
        #0 	a = 4'b0001; b = 4'b0001; // create the all possible test values
		#50 a = 4'b1000; b = 4'b0010;
		#50 a = 4'b0010; b = 4'b0010;
        #50 $finish;
     end
   mult m01(a,b,out);
endmodule