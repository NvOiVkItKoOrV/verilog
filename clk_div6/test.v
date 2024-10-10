`include "clk_div6.v"
module top();

reg clk = 0;
always #1 clk = ~clk;

reg reset = 0;
initial begin
	reset = 1;
	#2;
	reset = 0;
end

clk_div test_clk_div
(
	.clk(clk),
	.reset(reset),
	.clk_div6(div_6)
);

initial begin
	$dumpfile("out.vcd");
	$dumpvars(0, top);
	#1000;
	$finish;
end
endmodule