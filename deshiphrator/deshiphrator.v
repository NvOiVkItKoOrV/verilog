module reverse_n
(
	input [2:0]	N,
	output	[7:0]	rev
);

assign rev = (1 << N);

endmodule