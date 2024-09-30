`timescale 1ns/1ns
`include "deshiphrator.v"

module top();

reg	[2:0]	n_test;
wire	[7:0]	res;

always
begin
	#1
	n_test = $random();
end

reverse_n test_rev
(
	.N	(n_test),
	.rev	(res)
);

endmodule