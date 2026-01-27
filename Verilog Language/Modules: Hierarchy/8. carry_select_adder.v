module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel;
    reg [15:0] sum_tmp1, sum_tmp2;
    add16 inst1( .a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(sel) );
    add16 inst2( .a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum_tmp1[15:0]), .cout() );
    add16 inst3( .a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum_tmp2[15:0]), .cout() );
    assign sum[31:16] = (sel)? sum_tmp2[15:0]: sum_tmp1[15:0];
endmodule
