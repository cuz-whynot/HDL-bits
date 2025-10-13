module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire w_1, w_2, w_3, w_4;
	assign w_1 = p1a & p1b & p1c;
    assign w_2 = p1d & p1e & p1f;
    assign w_3 = p2a & p2b;
    assign w_4 = p2c & p2d;
    assign p1y = w_1 | w_2;
    assign p2y = w_3 | w_4;
endmodule
