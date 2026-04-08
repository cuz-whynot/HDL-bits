module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
	logic y, Q_prev, D;
    assign y = E? w: Q_prev;
    assign D = L? R: y;
    always@(posedge clk) begin
        Q <= D;
        Q_prev <= Q; 
    end
endmodule
