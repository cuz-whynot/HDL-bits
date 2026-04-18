module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    always@(posedge clk) begin
        Q <= (j == k)? (j? ~Q: Q) : j;
    end
endmodule
