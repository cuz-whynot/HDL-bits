module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);
    int i;
    always@(posedge clk) begin
        if(reset) q<= 3'h0;
        else if(q == 9) q<= 3'h0;
        else q <= q + 3'h1;
        
    end
endmodule
