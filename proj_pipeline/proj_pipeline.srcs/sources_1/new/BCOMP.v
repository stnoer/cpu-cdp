`timescale 1ns / 1ps

`include "defines.vh"

module BCOMP(
    input  wire [31:0] data1,
    input  wire [31:0] data2,
    input  wire [2:0]  BCOMPEn,
    output reg         beq,
    output reg         blt
    );
    
    always @(*)
    begin
        case(BCOMPEn)
        3'b000:
            begin
                beq = 1;
                blt = 1;
            end
        default:
            begin
                if(data1 == data2)
                    begin
                        beq = 1;
                        blt = 0;
                    end
                else if($signed(data1) < $signed(data2))
                    begin
                        beq = 0;
                        blt = 1;
                    end
                else
                    begin
                        beq = 0;
                        blt = 0;
                    end    
            end
        endcase
    end
    
endmodule
