`timescale 1ns / 1ps

module BMUX(
    input  wire [31:0] data2,
    input  wire [31:0] imm,
    input  wire        BSel,
    output reg  [31:0] opB
    );
    
    always @(*)
    begin
        opB = BSel ? imm : data2;
    end
    
endmodule
