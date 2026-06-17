module top_module (
    input clk,
    input d,
    output q
);
	reg q_1, q_2;
    always@(posedge clk) q_1 <= d;
    always@(negedge clk) q_2 <= d;
    assign q = clk? q_1: q_2;
endmodule
