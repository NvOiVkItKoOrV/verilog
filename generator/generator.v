module generator
(
	input	wire	clk,
	input	wire	reset,
	output  reg	imp
);

reg [2:0] stage;

always @(posedge clk)
begin 
	if (reset) 
	begin
		stage <= 3'h0;
		imp <= 1'b0;
	end
	else 
	begin
	if (stage == 3'h4) 
	begin
		stage <= 3'h0;
		imp <= 1'b1;
	end
	else 
	begin
		stage <= stage + 1'b1;
		imp <= 1'b0;
	end
end
end


endmodule