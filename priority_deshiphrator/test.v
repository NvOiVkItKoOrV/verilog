`include "priority_deshiphrator.v"

module top();

wire [7:0] num_test1 = 8'b01001100;
wire [7:0] num_test2 = 8'b00001011;
wire [7:0] num_test3 = 8'b00000001;

wire [2:0] res1;
wire [2:0] res2;
wire [2:0] res3;

wire [2:0] check1 = 6;
wire [2:0] check2 = 3;
wire [2:0] check3 = 0;

priority_deshiphrator test1_prioritet_decypher
(
	.num	(num_test1),
	.ub	(res1)
);

priority_deshiphrator test2_prioritet_decypher
(
	.num	(num_test2),
	.ub	(res2)
);

priority_deshiphrator test3_prioritet_decypher
(
	.num	(num_test3),
	.ub	(res3)
);

endmodule