`include "log.v"

module top();

wire [7:0] num_test1 = 8'b01000000;
wire [7:0] num_test2 = 8'b00001000;
wire [7:0] num_test3 = 8'b00000001;

wire [2:0] result1;
wire [2:0] result2;
wire [2:0] result3;

wire [2:0] check1 = 6;
wire [2:0] check2 = 3;
wire [2:0] check3 = 0;

get_pow test1_get_pow
(
	.number	(num_test1),
	.pow	(result1)
);

get_pow test2_get_pow
(
	.number	(num_test2),
	.pow	(result2)
);

get_pow test3_get_pow
(
	.number	(num_test3),
	.pow	(result3)
);

endmodule