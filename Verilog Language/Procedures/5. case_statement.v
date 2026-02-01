// synthesis verilog_input_version verilog_2001
module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case(sel)
            16'h00: begin
                out = data0;
            end
            16'h01 : begin
                out = data1;
            end
            16'h02: begin
                out = data2;
            end
            16'h03: begin
                out = data3;
            end
            16'h04: begin
                out = data4;
            end
            16'h05: begin
                out = data5;
            end
            default: begin
                out = 4'b0000;
            end
        endcase
    end

endmodule
