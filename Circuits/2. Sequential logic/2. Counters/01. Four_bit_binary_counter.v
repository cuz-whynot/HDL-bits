module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);
    int i;
    always@(posedge clk) begin
        if(reset) q<= 3'h0;
        else begin
            for(i=0;i<16; i = i+1) begin
                q <= q + 3'h1;
            end
        end
    end
endmodule
