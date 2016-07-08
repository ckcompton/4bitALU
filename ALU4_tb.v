/* 
Name:Your Name 
File:RCA4_tb.v
Description: This is a Four-Bit RCA testbench
*/
module ALU4_tb;

reg [3:0] a, b;
reg cin;
reg [2:0] op;
output cout;
wire [7:0] out; 
wire [3:0] addersub;
wire [3:0] shift;
   initial
     begin
        $dumpfile("ALU_test.vcd");
        $dumpvars(0, ALU01);
		$display("0010-- A < B");
		$display("0001-- A > B");
		$display("0000-- A = B");
		$display("Op  |  A     B    cin cout  = output");
        $monitor("%b | %b  %b  %b  %b  = %b", op,a, b, cin, cout, out);
		
        #0 	op= 3'b000; a = 4'b0000; b = 4'b0000;cin = 1'b0;
		#50 op= 3'b000; a = 4'b0001; b = 4'b0001;cin = 1'b1;
		#50 op= 3'b000; a = 4'b0010; b = 4'b0010;cin = 1'b1;
		#50 op= 3'b000; a = 4'b0011; b = 4'b0011;cin = 1'b0;
		#50 op= 3'b001; a = 4'b0100; b = 4'b0010;cin = 1'b0;
		#50 op= 3'b001; a = 4'b0101; b = 4'b1001;cin = 1'b1;
		#50 op= 3'b001; a = 4'b0110; b = 4'b0110;cin = 1'b0;
		#50 op= 3'b010; a = 4'b0111; b = 4'b0111;cin = 1'b0;
		#50 op= 3'b010; a = 4'b1000; b = 4'b1000;cin = 1'b1;
		#50 op= 3'b011; a = 4'b0010; b = 4'b0011;cin = 1'b1;
		#50 op= 3'b011; a = 4'b0010; b = 4'b0011;cin = 1'b0;
		#50 op= 3'b100; a = 4'b1000; b = 4'b0010;cin = 1'b1;
		#50 op= 3'b100; a = 4'b0011; b = 4'b0011;cin = 1'b0;
		#50 op= 3'b101; a = 4'b0110; b = 4'b0010;cin = 1'b1;
		#50 op= 3'b101; a = 4'b0011; b = 4'b0111;cin = 1'b0;
		#50 op= 3'b101; a = 4'b0000; b = 4'b0000;cin = 1'b0;
		// Create more test values
        #50 $finish;
     end

   ALU4 ALU01(a,b,cin,op,cout,out);

endmodule
