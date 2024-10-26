`timescale 1ns / 1ps

`include "defines.vh"

module myCPU (
    input  wire         cpu_rst,    //High active
    input  wire         cpu_clk,

    // Interface to IROM
`ifdef RUN_TRACE
    output wire [15:0]  inst_addr,
`else
    output wire [13:0]  inst_addr,
`endif
    input  wire [31:0]  inst,
    
    // Interface to Bridge
    output wire [31:0]  Bus_addr,
    input  wire [31:0]  Bus_rdata,
    output wire         Bus_we,
    output wire [31:0]  Bus_wdata

`ifdef RUN_TRACE
    ,// Debug Interface
    output wire         debug_wb_have_inst,
    output wire [31:0]  debug_wb_pc,
    output              debug_wb_ena,
    output wire [ 4:0]  debug_wb_reg,
    output wire [31:0]  debug_wb_value
`endif
);

    wire [31:0] PC_pc;
    wire [31:0] PC_ADD_naddr;
    wire [31:0] ALU_aluC;
    wire        BCOMP_beq;
    wire        BCOMP_blt;
    wire [31:0] WB_MUX_wbD;
    wire [31:0] RF_rD1;
    wire [31:0] RF_rD2;
    wire [31:0] IMM_GEN_imm;
    wire [31:0] AMUX_opA;
    wire [31:0] BMUX_opB;
       
    //control signals    
    wire        Ctrl_RFWen;
    wire        Ctrl_DRAMWen;
    wire        Ctrl_PCSel;
    wire  [2:0] Ctrl_BCOMPEn;
    wire  [3:0] Ctrl_IMMSel;
    wire  [3:0] Ctrl_ALUSel;
    wire        Ctrl_ASel;
    wire        Ctrl_BSel;
    wire  [1:0] Ctrl_WBSel;
                      
`ifdef RUN_TRACE
    // Debug Interface
    assign debug_wb_have_inst =  ~cpu_rst;
    assign debug_wb_pc        =  PC_pc;
    assign debug_wb_ena       =  Ctrl_RFWen;
    assign debug_wb_reg       =  inst[11:7];
    assign debug_wb_value     =  WB_MUX_wbD;
`endif

    
            
    `ifdef RUN_TRACE
        assign inst_addr = PC_pc[17:2];
    `else
        assign inst_addr = PC_pc[15:2]; 
    `endif        
      
    //IF
    // IF U_IF(
    //         .clk(cpu_clk),
    //         .rst(cpu_rst),

    //         .baddr(ALU_aluC),
    //         .beq(BCOMP_beq),
    //         .blt(BCOMP_blt),
    //         .PCSel(Ctrl_PCSel),
    //         .BCOMPEn(Ctrl_BCOMPEn),

    //         .pc(PC_pc)
    //         );
    //IF
    PC U_PC(
            .clk(cpu_clk),
            .rst(cpu_rst),
            .npc(NPC_MUX_npc),
            .pc(PC_pc)
            );
         
    NPC U_NPC(
            .naddr(PC_ADD_naddr),
            .baddr(ALU_aluC),
            .beq(BCOMP_beq),
            .blt(BCOMP_blt),
            .PCSel(Ctrl_PCSel),
            .BCOMPEn(Ctrl_BCOMPEn),
            .npc(NPC_MUX_npc)
            );
    
    PC_ADD  U_PC_ADD(
            .pc(PC_pc),
            .naddr(PC_ADD_naddr)
            );
      
            
    //ID        
    RF U_RF(
            .clk(cpu_clk),
            .rR1(inst[19:15]),
            .rR2(inst[24:20]),
            .wR(inst[11:7]),
            .wD(WB_MUX_wbD),
            .RFWen(Ctrl_RFWen),
            .rD1(RF_rD1),
            .rD2(RF_rD2)
            );      
                          
    SEXT U_SEXT(
            .immIn(inst[31:7]),
            .IMMSel(Ctrl_IMMSel),
            .imm(IMM_GEN_imm)
            );
    
    // ID U_ID(
    //         .clk(cpu_clk),
    //         .rR1(inst[19:15]),
    //         .rR2(inst[24:20]),
    //         .wR(inst[11:7]),
    //         .wD(WB_MUX_wbD),
    //         .RFWen(Ctrl_RFWen),
    //         .rD1(RF_rD1),
    //         .rD2(RF_rD2),

    //         .immIn(inst[31:7]),
    //         .IMMSel(Ctrl_IMMSel),
    //         .imm(IMM_GEN_imm)      
    //         );
            
            
    //EXE
    EX U_EX(
            .data1(RF_rD1),
            .pc(PC_pc),
            .ASel(Ctrl_ASel),
            .data2(RF_rD2),
            .imm(IMM_GEN_imm),
            .BSel(Ctrl_BSel),
            .ALUSel(Ctrl_ALUSel),
            
            .BCOMPEn(Ctrl_BCOMPEn),
            .beq(BCOMP_beq),
            .blt(BCOMP_blt),
            .C(ALU_aluC)
    );
            
    //MEM
    assign Bus_addr = ALU_aluC;
    
    assign Bus_wdata = RF_rD2;
    
    //WB
    WB U_WB(
            .uimm(IMM_GEN_imm),
            .aluC(ALU_aluC),
            .naddr(PC_ADD_naddr),
            .rdout(Bus_rdata),
            .WBSel(Ctrl_WBSel),
            .wbD(WB_MUX_wbD)
            );
            
    //CONTROL 
    CONTROLLER U_CONTROLLER(
            .rst(cpu_rst),
            .opcode(inst[6:0]),
            .funct3(inst[14:12]),
            .funct7(inst[31:25]),
            .RFWen(Ctrl_RFWen),
            .DRAMWen(Ctrl_DRAMWen),
            .PCSel(Ctrl_PCSel),
            .BCOMPEn(Ctrl_BCOMPEn),
            .IMMSel(Ctrl_IMMSel),
            .ALUSel(Ctrl_ALUSel),
            .ASel(Ctrl_ASel),
            .BSel(Ctrl_BSel),
            .WBSel(Ctrl_WBSel)
            );
            
    assign  Bus_we = Ctrl_DRAMWen;

endmodule
