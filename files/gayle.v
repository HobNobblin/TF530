`timescale 1ns / 1ps
module gayle(
           input    CLKCPU, input RESET, input DS20, input AS20,
           input    RW, input IDE_INT,
           output   INT2,
           input [31:0] A, input DIN, output DOUT, output ACCESS
       );
parameter GAYLE_ID_VAL = 4'hd;
wire GAYLE_REGS = ~((A[23:16] == 8'hDA) | (A[23:16] == 8'hDE));
assign ACCESS = GAYLE_REGS;
assign DOUT   = 1'b0;
assign INT2   = 1'b0;
endmodule
