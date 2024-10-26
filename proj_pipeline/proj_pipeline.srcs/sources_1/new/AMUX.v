`timescale 1ns / 1ps

module AMUX(
    input  wire [31:0] data1,
    input  wire [31:0] pc,
    input  wire        ASel,
    output reg  [31:0] opA
    );
    
    always @(*)
    begin
        opA = ASel ? pc : data1;
    end
    
endmodule
