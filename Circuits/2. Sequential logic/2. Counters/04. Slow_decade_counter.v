module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    int i;
    always@(posedge clk) begin
        if(reset) q<= 3'h0;
        else  if (slowena && q == 9) q<= 3'h0;
        else begin 
            if(slowena)
            	q <= q + 3'h1;
        end
    end
endmodule
