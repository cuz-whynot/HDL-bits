module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] prev_state;
    always@(posedge clk) begin
        if(reset) begin
            out <= 31'h00;
        end
        else begin
            prev_state <= in;
            if(prev_state & ~in ) begin
                out <= prev_state & ~in;
            end
            else begin
                out <= out;
            end
        end
    end
endmodule
