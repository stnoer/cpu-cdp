`timescale 1ns / 1ps

module HAZARD_DETECTION(
    input   wire [6:0]  opcode,
    input   wire [4:0]  RF_rR1,
    input   wire [4:0]  RF_rR2,
    input   wire        ID_EXE_RF_WE,
    input   wire        EXE_MEM_RF_WE,
    input   wire        MEM_WB_RF_WE,
    input   wire [4:0]  ID_EXE_wR,
    input   wire [4:0]  EXE_MEM_wR,
    input   wire [4:0]  MEM_WB_wR,
    input   wire [31:0]  last_WBperformed_pc,
    input   wire [31:0]  ID_EXE_pc,
    input   wire [31:0]  EXE_MEM_pc,
    input   wire [31:0]  MEM_WB_pc,
    output  reg         stop_PC,
    output  reg         stop_IF_ID,
    output  reg         stop_ID_EXE  
    );
    reg        id_rR1;
    reg        id_rR2;
    always@(*)
    begin
        case(opcode)
            7'b0110111:
                begin
                    id_rR1 = 0;
                    id_rR2 = 0;
                end
            7'b1101111:
                begin
                    id_rR1 = 0;
                    id_rR2 = 0;
                end
            7'b0010011:
                begin
                    id_rR1 = 1;
                    id_rR2 = 0;
                end    
            7'b0000011:
                begin
                    id_rR1 = 1;
                    id_rR2 = 0;
                end    
            7'b1100111:
                begin
                    id_rR1 = 1;
                    id_rR2 = 0;
                end       
            default:
                begin
                    id_rR1 = 1;
                    id_rR2 = 1;
                end    
        endcase    
    end
    
    wire    hazard_rR1;
    assign   hazard_rR1 = ( (RF_rR1 == ID_EXE_wR) || (RF_rR1 == EXE_MEM_wR) || (RF_rR1 == MEM_WB_wR) ) && id_rR1;
    wire    hazard_rR2;
    assign   hazard_rR2 = ( (RF_rR2 == ID_EXE_wR) || (RF_rR2 == EXE_MEM_wR) || (RF_rR2 == MEM_WB_wR) ) && id_rR2;
    

    wire hazard_ID_EXE;
    wire hazard_EXE_MEM;
    wire hazard_MEM_WB;
    assign   hazard_ID_EXE    =   ( ( hazard_rR1 && (RF_rR1 == ID_EXE_wR) ) || ( hazard_rR2 &&  (RF_rR2 == ID_EXE_wR) ) ) &&  (last_WBperformed_pc != ID_EXE_pc)  && ID_EXE_RF_WE;
    assign   hazard_EXE_MEM   =   ( ( hazard_rR1 && (RF_rR1 == EXE_MEM_wR)) || ( hazard_rR2 &&  (RF_rR2 == EXE_MEM_wR)) ) &&  (last_WBperformed_pc != EXE_MEM_pc) && EXE_MEM_RF_WE;
    assign   hazard_MEM_WB    =   ( ( hazard_rR1 && (RF_rR1 == MEM_WB_wR) ) || ( hazard_rR2 &&  (RF_rR2 == MEM_WB_wR) ) ) &&  (last_WBperformed_pc != MEM_WB_pc)  && MEM_WB_RF_WE;
    
    always @(*)
    begin
        if(hazard_MEM_WB || hazard_EXE_MEM || hazard_ID_EXE)
        begin
            stop_PC     = 1'b1;
            stop_IF_ID  = 1'b1;
            stop_ID_EXE = 1'b1;
        end
        else
        begin
            stop_PC     = 1'b0;
            stop_IF_ID  = 1'b0;
            stop_ID_EXE = 1'b0;
        end
    end
    
endmodule
