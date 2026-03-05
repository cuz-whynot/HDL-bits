module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
	genvar i;
    generate
        
        for(i=0;i<4;i++) begin
            bcd_fadd u1 (a[], b[], cout_tmp[], cout_tmp[], sum[] );
        end
    endgenerate
endmodule
