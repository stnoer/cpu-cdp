`timescale 1ns / 1ps

module Process_RAW(
    //input   wire        clk,
    input   wire        conflict_ID_EXE,
    input   wire        conflict_EXE_MEM,
    input   wire        conflict_MEM_WB,
    output  reg         stop_PC,
    output  reg         stop_IF_ID,
    output  reg         stop_ID_EXE
    );
    
    always @(*)
    begin
        if(conflict_MEM_WB || conflict_EXE_MEM || conflict_ID_EXE)
        begin
            stop_PC     = 1'b1;
            stop_IF_ID  = 1'b1;
            stop_ID_EXE = 1'b1;
        end
        /*else if(conflict_EXE_MEM)
        begin
            stop_PC     = 1'b1;
            stop_IF_ID  = 1'b1;
            stop_ID_EXE = 1'b1;
        end
        else if(conflict_ID_EXE)
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
