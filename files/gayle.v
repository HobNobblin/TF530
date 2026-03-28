`timescale 1ns / 1ps
// Gayle stub - returns GAYLE_ID=0xD, no interrupt support
// Frees ~7 macrocells and 32 pterms for AutoConfig ROM logic

module gayle(
           input    CLKCPU,
           input    RESET,
           input    DS20,
           input    AS20,
           input    RW,
           input    IDE_INT,
           output   INT2,
           input [31:0] A,
           input    DIN,
           output   DOUT,
           output   ACCESS
       );

// Always report GAYLE_ID = 0xD (Gayle present)
// Access decode: 0xDA8000 or 0xDE0000
wire GAYLE_ACCESS = ~((A[23:16] == 8'hDA) | (A[23:16] == 8'hDE));

assign ACCESS = GAYLE_ACCESS;
assign DOUT   = 1'b0;
assign INT2   = 1'b0;

endmodule
