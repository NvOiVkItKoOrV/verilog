module prioritet_deshiphrator
(
	input [7:0] num,
	output [2:0] ub
);

wire [2:0] a0, a1, a2, a3, a4, a5, a6, a7;
wire [2:0] b0, b1, b2, b3;
wire [2:0] c0, c1;

assign a0 =  (num[0] == 1) ? 0 : 0;
assign a1 =  (num[1] == 1) ? 1 : 0;
assign a2 =  (num[2] == 1) ? 2 : 0;
assign a3 =  (num[3] == 1) ? 3 : 0;
assign a4 =  (num[4] == 1) ? 4 : 0;
assign a5 =  (num[5] == 1) ? 5 : 0;
assign a6 =  (num[6] == 1) ? 6 : 0;
assign a7 =  (num[7] == 1) ? 7 : 0;

assign c0 = (a1 >= a0) ? a1 : a0;
assign c1 = (a3 >= a2) ? a3 : a2;
assign c2 = (a5 >= a4) ? a5 : a4;
assign c3 = (a7 >= a6) ? a7 : a6;

assign d0 = (b1 >= b0) ? c1 : c0;
assign d1 = (b3 >= b2) ? c3 : c2;

assign ub = (c1 >= c0) ? d1 : d0;
 
endmodule
