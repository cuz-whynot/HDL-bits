module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] prev_state;
    wire [31:0] temp;
    always@(posedge clk) begin
        prev_state <= in;
        if(reset) begin
            out <= 32'h00;
           // prev_state <= 32'h00;
        end
        else begin
            out <= (prev_state & ~in) | out;
        end
    end
endmodule
