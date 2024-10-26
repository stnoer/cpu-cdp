`timescale 1ns / 1ps

module PC(
    input  wire        clk,
    input  wire        rst,
    input  wire [31:0] npc,
    output reg  [31:0] pc
    );
    
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            pc <= 32'hFFFF_FFFC;
        end
        else
        begin
            pc <= npc;
        end
    end
endmodule
