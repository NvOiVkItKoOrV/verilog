module clk_div
(
	input	wire	clk,
	input	wire	reset,
	output  reg	clk_div6
);

reg [1:0] stage;

always @(posedge clk)
if (reset)
	{clk_div6, stage} <= 4'h0;
else begin
	clk_div6 <= (stage[0] == 0 && stage[1] == 1) ? ~clk_div6 : clk_div6;
	stage <= (stage[0] == 0 && stage[1] == 1) ? 2'h0 : stage + 1;
end
endmodule