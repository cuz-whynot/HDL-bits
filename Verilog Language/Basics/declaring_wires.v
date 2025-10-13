`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire w_1, w_2, w_3;
    assign w_1 = a & b;
    assign w_2 = c & d;
    assign w_3 = w_1 | w_2;         // used intermediate wire for modularity 
    assign out = w_3;
    assign out_n = ~(w_3);
endmodule
