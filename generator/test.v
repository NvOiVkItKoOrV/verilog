`include "generator.v"
module top();

reg tclk = 0;
always #1 tclk = ~tclk;

reg reset = 0;
wire timp;

initial begin
	@(posedge tclk)
	reset <= 1;
	repeat(3) @(negedge tclk);
	reset <= 0;
end

generator
test_generator
(
	.clk(tclk),
	.reset(reset),
	.imp(timp)
);

initial begin
	$dumpfile("out.vcd");
	$dumpvars(0, top);
	#1000;
	$finish;
end
endmodule