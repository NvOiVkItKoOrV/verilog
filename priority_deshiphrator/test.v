`timescale 1ns/1ps




module top();

reg [7:0] num_test1;

priority_deshiphrator test1_priority_deshiphrator
(
	.num	(num_test1)
);

initial begin
$dumpfile("out.vcd");
$dumpvars(0, top);
repeat (30) begin
	#2;
	num_test1 = $random;
end

$finish;
end

endmodule