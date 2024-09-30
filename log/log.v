module get_pow
(
	input [7:0] num,
	output [2:0] pow
);

wire [2:0] param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7;

assign param_0 = (num[0] == 1) ? 0 : 0;
assign param_1 = (num[1] == 1) ? 1 : 0;
assign param_2 = (num[2] == 1) ? 2 : 0;
assign param_3 = (num[3] == 1) ? 3 : 0;
assign param_4 = (num[4] == 1) ? 4 : 0;
assign param_5 = (num[5] == 1) ? 5 : 0;
assign param_6 = (num[6] == 1) ? 6 : 0;
assign param_7 = (num[7] == 1) ? 7 : 0;
assign pow = param_0 | param_1 | param_2 | param_3 | param_4 | param_5 | param_6 | param_7;

endmodule
