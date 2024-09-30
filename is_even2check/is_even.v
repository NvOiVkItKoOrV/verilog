module is_even
(
	input [7:0]	number,
	output		even
);

assign even	=	~number[0];

endmodule