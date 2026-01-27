module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout1;
    reg [31:0] b_tmp;
    add16 ( .a(a[15:0]), .b(b_tmp[15:0]), .cin(sub), .sum(sum[15:0]), .cout(cout1) );
    add16 ( .a(a[31:16]), .b(b_tmp[31:16]), .cin(cout1), .sum(sum[31:16]), .cout() );
    assign b_tmp = sub? ~b : b;
endmodule
