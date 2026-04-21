module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
	int i;
    always@(posedge clk) begin
    	for(i=0; i<8; i=i+1) begin
            pedge[i] <= (in[i] > in[i-1])? 1:0;
    	end
    end
endmodule
