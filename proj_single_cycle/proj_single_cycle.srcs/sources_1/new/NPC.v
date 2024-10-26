`timescale 1ns / 1ps

`include "defines.vh"

module NPC(
    input  wire [31:0] naddr,
    input  wire [31:0] baddr,
    input  wire        beq,
    input  wire        blt,
    input  wire        PCSel,
    input  wire [2:0]  BCOMPEn,
    output reg  [31:0] npc
    );
    always@(*)
    begin
        if(PCSel == 0)
        begin
            npc = naddr;
        end
        
        else if(BCOMPEn == 3'b000)
        begin
            npc = baddr;
        end
        
        else if(BCOMPEn == `BCOMP_EQ)  
        begin
            if(beq)
                npc = baddr;
            else
                npc = naddr;            
        end
        else if(BCOMPEn == `BCOMP_NE)                    
        begin
            if(beq)
                npc = naddr;
            else
                npc = baddr;
        end
        else if(BCOMPEn == `BCOMP_LT)  
        begin
            if(blt)
                npc = baddr;
            else
                npc = naddr;            
        end
        else if(BCOMPEn == `BCOMP_GE)                    
        begin
            if(blt)
                npc = naddr;
            else
                npc = baddr;
        end
        else
        npc = naddr;
    end
endmodule
