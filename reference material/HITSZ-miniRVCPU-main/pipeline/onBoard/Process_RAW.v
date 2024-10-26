`timescale 1ns / 1ps

module Process_RAW(
    //input   wire        clk,
    input   wire        hazard_ID_EXE,
    input   wire        hazard_EXE_MEM,
    input   wire        hazard_MEM_WB,
    output  reg         stop_PC,
    output  reg         stop_IF_ID,
    output  reg         stop_ID_EXE
    );
    
    always @(*)
    begin
        if(hazard_MEM_WB || hazard_EXE_MEM || hazard_ID_EXE)
        begin
            stop_PC     = 1'b1;
            stop_IF_ID  = 1'b1;
            stop_ID_EXE = 1'b1;
        end
        /*else if(hazard_EXE_MEM)
        begin
            stop_PC     = 1'b1;
            stop_IF_ID  = 1'b1;
            stop_ID_EXE = 1'b1;
        end
        else if(hazard_ID_EXE)
        begin
            stop_PC     = 1'b1;
            stop_IF_ID  = 1'b1;
            stop_ID_EXE = 1'b1;
        end*/
        else
        begin
            stop_PC     = 1'b0;
            stop_IF_ID  = 1'b0;
            stop_ID_EXE = 1'b0;
        end
    end
endmodule
