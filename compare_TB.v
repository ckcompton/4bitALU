/*
Name:Your Name 
File:FA_tb.v
Description: This is a Full Adder testbench
*/
module compare_tb;
reg [3:0] a,b;
output [3:0] out;
   initial
     begin
        $dumpfile("compare_test.vcd");
        $dumpvars(0, c01);
        $monitor("%b %b %b", a,b, out);
        #0 	a = 4'b0011; b = 4'b0001; // create the all possible test values
		#50 a = 4'b0000; b = 4'b0111; 
		#50 a = 4'b0001; b = 4'b0001; 
        #50 $finish;
     end
   compare c01(a,b,out);
endmodule