module priority_deshiphrator
(
	input [7:0] num,
	output [2:0] ub
);

wire [2:0] a [7:0];
wire [2:0] b [3:0];
wire [2:0] c0, c1;

genvar g;
generate for (g = 0; g < 8; g = g + 1)
begin: loop_1
	assign a[g] = (num[g]) ? g : 0;	
end
endgenerate

genvar i;
generate for (i = 0; i < 4; i = i + 1)
begin: loop_2
	assign b[i] = (a[2 * i + 1] >= a[2 * i]) ? a[2 * i + 1] : a[2 * i];	
end
endgenerate


assign c1 = (b[3] >= b[2]) ? b[3] : b[2];
assign c0 = (b[1] >= b[0]) ? b[1] : b[0];

assign ub = (c1 >= c0) ? c1 : c0;
 
endmodule
