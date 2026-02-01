// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
	
    always@(*) begin
    case(in)
        4'h00: pos = 2'h0;	//0000
        4'h01: pos = 2'h0;	//0001
        4'h02: pos = 2'h1;	//0010
        4'h03: pos = 2'h0;	//0011
        4'h04: pos = 2'h2;	//0100
        4'h05: pos = 2'h0;	//0101
        4'h06: pos = 2'h1;	//0110
        4'h07: pos = 2'h0;	//0111
        4'h08: pos = 2'h3;	//1000
        4'h09: pos = 2'h0;	//1001
        4'ha: pos = 2'h1;	//1010
        4'hb: pos = 2'h0;	//1011
        4'hc: pos = 2'h2;	//1100
        4'hd: pos = 2'h0;	//1101
        4'he: pos = 2'h1;	//1110
        4'hf: pos = 2'h0;	//1111
        default: pos = 2'h0;
    endcase
    end
endmodule
