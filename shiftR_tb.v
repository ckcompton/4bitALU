/*
Name:Your Name 
File:FA_tb.v
Description: This is a Full Adder testbench
*/
module shiftR_tb;
reg [3:0] a;
wire [3:0] out;
   initial
     begin
        $dumpfile("shiftR_test.vcd");
        $dumpvars(0, r01);
        $monitor("%b %b", a, out);
        #0 	a = 4'b0001; // create the all possible test values
		#50 a = 4'b1000; 
		#50 a = 4'b0010;
        #50 $finish;
     end
   Shift r01(a,out);
endmodule