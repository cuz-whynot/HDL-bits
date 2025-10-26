// Fadd module remains the same
module Fadd( 
    input a, b, cin,
    output cout, sum );
    assign { cout, sum } = a + b + cin;
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout, 
    output [99:0] sum 
);
    genvar i;
   
    wire [100:0] c; 

    assign c[0] = cin; 

    generate 
        for(i=0; i<100; i = i+1 ) begin : Fadd_gen
            Fadd FA_inst (
                .a(a[i]),
                .b(b[i]),
                .cin(c[i]),      
                .cout(c[i+1]),  
                .sum(sum[i])
            );
        end
    endgenerate
    assign cout = c[100:1]; 

endmodule
