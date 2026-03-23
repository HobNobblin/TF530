`timescale 1ns / 1ps
/*
    intreqr stub for TF530 rev3.
    Hardware not populated - outputs held inactive.
    Uses DTACK as clock input to prevent XST optimization.
*/

module intreqr(

    input CLK, 
    
    input [31:0] A,
    inout [15:0] D,
    
    input AS20, 
    input RW20, 
    input INT2, 

    input DTACK,

    output reg ACK     = 1'b1, 
    output reg INTCYCLE = 1'b1, 
    output reg IDEWAIT  = 1'b1
);

// Use DTACK as clock - it has real activity so XST cannot trim.
// Outputs stay high (inactive) regardless of input state.
always @(negedge DTACK or posedge AS20) begin
    if (AS20 == 1'b1) begin
        ACK      <= 1'b1;
        INTCYCLE <= 1'b1;
        IDEWAIT  <= 1'b1;
    end else begin
        ACK      <= 1'b1;
        INTCYCLE <= 1'b1;
        IDEWAIT  <= 1'b1;
    end
end

assign D = 16'bzzzzzzzz_zzzzzzzz;

endmodule
