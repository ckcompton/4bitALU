/* 
Name:Your Name 
File:RCA4_tb.v
Description: This is a Four-Bit RCA testbench
*/
module RCA4_tb;

reg [3:0] a, b;
reg cin;
reg op;
wire [3:0] sum; 
wire cout;

   initial
     begin
        $dumpfile("RCA_test.vcd");
        $dumpvars(0, RCA01);
		$display("Op|  A    B  cin = cout sum");
        $monitor("%d | %b  %b  %b = %d %b", op,a, b, cin, cout,sum);
        #0 	op= 1'b0; a = 4'd0000; b = 4'b0000;cin = 1'b0;
		#50 op= 1'b0; a = 4'b1111; b = 4'b0101;cin = 1'b0;
		#50 op= 1'b0; a = 4'b0010; b = 4'b0010;cin = 1'b1;
		#50 op= 1'b0; a = 4'b0011; b = 4'b0011;cin = 1'b0;
		#50 op= 1'b0; a = 4'b0100; b = 4'b0001;cin = 1'b1;
		#50 op= 1'b1; a = 4'b0101; b = 4'b0010;cin = 1'b0;
		#50 op= 1'b1; a = 4'b0010; b = 4'b0011;cin = 1'b0;
		#50 op= 1'b1; a = 4'b0010; b = 4'b0100;cin = 1'b0;
		#50 op= 1'b0; a = 4'b0010; b = 4'b0101;cin = 1'b0;
		#50 op= 1'b0; a = 4'b0010; b = 4'b0110;cin = 1'b0;
		#50 op= 1'b0; a = 4'b0010; b = 4'b0110;cin = 1'b0;
		#50 op= 1'b1; a = 4'b0110; b = 4'b0110;cin = 1'b1;
		#50 op= 1'b1; a = 4'b1010; b = 4'b0110;cin = 1'b0;
		#50 op= 1'b1; a = 4'b1110; b = 4'b0110;cin = 1'b0;

		// Create more test values
        #50 $finish;
     end

   RCA4 RCA01(a,b,cin,sum,cout,op);

endmodule
