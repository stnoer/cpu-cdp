`timescale 1ns / 1ps

`include "defines.vh"

module WB(
    input  wire [31:0] uimm,
    input  wire [31:0] aluC,
    input  wire [31:0] naddr,
    input  wire [31:0] rdout,
    input  wire [1:0]  WBSel,
    output reg  [31:0] wbD
    );
    
    always @(*)
    begin
        case(WBSel)
        `WB_ALUC:
            wbD = aluC;
        `WB_DRAM:
            wbD = rdout;
        `WB_NADDR:
            wbD = naddr;
        `WB_UIMM:
            wbD = uimm;
        default:
            wbD = 32'b0;
        endcase            
    end
    
endmodule
