`timescale 1ns / 1ps

`include "defines.vh"

module ALU(
    input  wire [31:0] opA,
    input  wire [31:0] opB,
    input  wire [3:0]  ALUSel,
    output reg  [31:0] C
    );
    
    always @(*)
    begin
        case(ALUSel)
        `OP_ADD:
            C = opA + opB;
        `OP_SUB:
            C = opA - opB;
        `OP_AND:
            C = opA & opB;
        `OP_OR:
            C = opA | opB;
        `OP_XOR:
            C = opA ^ opB;
        `OP_SHIFT_LL:
            C = opA << opB[4:0];
        `OP_SHIFT_RL:
            C = opA >> opB[4:0];
        `OP_SHIFT_RA:
            C = $signed(opA) >>> opB[4:0];
        default:
            C = 32'b0;        
        endcase
    end
endmodule
