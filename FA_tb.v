/* 
Name:Your Name 
File:FA_tb.v
Description: This is a Full Adder testbench
*/
module FA_tb;
reg a,b,cin;
wire sum,cout;
   initial
     begin
        $dumpfile("FA_test.vcd");
        $dumpvars(0, fa01);
        $monitor("%b + %b + %b = %b%b", a, b, cin, cout,sum);
        #0 	a = 1'b0; b = 1'b0; cin = 1'b0; // create the all possible test values
		#50 a = 1'b0; b = 1'b0; cin = 1'b1;
		#50 a = 1'b0; b = 1'b0; cin = 1'b1;
		#50 a = 1'b0; b = 1'b1; cin = 1'b1;
		#50 a = 1'b1; b = 1'b0; cin = 1'b1;
		#50 a = 1'b1; b = 1'b1; cin = 1'b1;
		#50 a = 1'b0; b = 1'b0; cin = 1'b0;
		#50 a = 1'b0; b = 1'b1; cin = 1'b0;
		#50 a = 1'b1; b = 1'b0; cin = 1'b0;
		#50 a = 1'b1; b = 1'b1; cin = 1'b0;
        #50 $finish;
     end
   FA fa01(a,b,cin,sum,cout);
endmodule