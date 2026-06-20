module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
); //
    assign c_load = reset || (Q == 4'hC && enable);
    assign c_d = (c_load)? 4'h1: 4'bxxxx;
    assign c_enable =  (c_load)? 1'bx : enable;
    count4 the_counter (clk, c_enable, c_load, c_d, Q);
endmodule
