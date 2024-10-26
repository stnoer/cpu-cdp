`timescale 1ns / 1ps


module PC_ADD(
    input  wire [31:0] pc,
    output reg  [31:0] naddr
    );
    
    always @(*)
    begin
        naddr = pc + 32'h0000_0004;
    end
endmodule
