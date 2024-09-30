`timescale 1ns/1ns
`include "is_even.v"

module top();

reg	[7:0]	number_test;
reg			res;

always

begin
	#1;
	number_test = $random();
end

is_even testing
(
	.number	(number_test),
	.even	(res)
);

endmodule