`timescale 1ns/1ps




module top();

reg [7:0] num_test1;

get_pow test3_get_pow
(
	.num	(num_test1)
);

initial begin
$dumpfile("out.vcd");
$dumpvars(0, top);
	#2;
	num_test1 = 8'b0010000;
	#2;
	num_test1 = 8'b0000100;
	#2;
	num_test1 = 8'b0001000;
	#2;
	num_test1 = 8'b1000000;
	#2;
	num_test1 = 8'b0000001;

$finish;
end

endmodule
