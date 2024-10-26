`timescale 1ns / 1ps

module PC(
    input  wire        clk,
    input  wire        rst,
    input  wire        stop_PC,
    input  wire        stop_PC_NPC_MUX,
    input  wire [31:0] npc,
    output reg  [31:0] pc
    );
    
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            pc <= 32'hFFFF_FFFC;
        end
        else if(stop_PC || stop_PC_NPC_MUX)
        begin
            pc <= pc;
        end
        else
        begin
            pc <= npc;
        end
    end
endmodule
