module get_pow
(
	input [7:0] num,
	output [2:0] pow
);

wire [2:0] param [7:0];

genvar g;
generate for (g = 0; g < 8; g = g + 1)
begin: loop_1
	assign param[g] = (num[g]) ? g : 0;	
end
endgenerate


assign pow = param[0] | param[1] | param[2] | param[3] | param[4] | param[5] | param[6] | param[7];

endmodule
