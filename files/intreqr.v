module intreqr(
    
    input CLK, 
    
    input [31:0] A,
    inout [15:0] D,
    
    input AS20, 
    input RW20, 
    input INT2, 

    input DTACK,

    output ACK, 
    output INTCYCLE, 
    output IDEWAIT
);

assign INTCYCLE = 1'b1;
assign ACK = 1'b1;
assign IDEWAIT = 1'b1;

endmodule
