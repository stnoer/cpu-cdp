module miniCPU (
    input  wire        clk       ,
    input  wire        rst_n     ,

    output wire [31:0] pc_pc     ,
    input  wire [31:0] irom_inst ,

    output wire        dram_we   ,
    output wire [31:0] addr      ,
    output wire [31:0] write_data,
    input  wire [31:0] read_data
);

/*
 *  控制信号
 */

wire        npc_op; // important! 变为了实质上的 pc 跳转信号!
wire [1:0]  wd_sel_ID, wd_sel_EX, wd_sel_MEM;
wire        rf_we_ID, rf_we_EX, rf_we_MEM, rf_we_WB;
wire        alub_sel_ID, alub_sel_EX;
wire        dram_we_ID, dram_we_EX, dram_we_MEM;
wire [2:0]  sext_op_ID, sext_op_EX;
wire [3:0]  alu_op_ID, alu_op_EX;
wire        zero;
wire        sgn;

wire [2:0] branch_ID, branch_EX;
wire [1:0] jump_ID, jump_EX;

/*
 * 数据信号
 */

wire [31:0] pc_imm_ID, pc_imm_EX;
wire [31:0] npc;
wire [31:0] npc_change;
wire [31:0] pc_IF, pc_ID;
wire [31:0] pc4_IF, pc4_ID, pc4_EX;
wire [31:0] inst_IF, inst_ID;
wire [31:0] imm_ID, imm_EX;
wire [31:0] rD1_ID, rD1_EX;
wire [31:0] rD2_ID, rD2_EX, rD2_MEM; // rD2 的用处比 rD1 多, 还要到 MEM 去 sw
wire [31:0] alu_b;
wire [31:0] alu_c_EX, alu_c_MEM;
wire [31:0] dram_rd;
wire [31:0] wD_EX, wD_MEM, wD_MEM_temp, wD_WB;
wire [4:0]  wR_ID, wR_EX, wR_MEM, wR_WB;

/*
 * hazard detection unit
 */

wire        rD1_used, rD2_used; // 用于判断 rD1/rD2 是否被使用
wire        rD1_op, rD2_op; // 前递使能
wire [31:0] rD1_forward, rD2_forward; // 前递数据
wire        keep_PC, keep_IF_ID; // keep_ID_EX, keep_EX_MEM, keep_MEM_WB 在本次实现中不需要
wire        flush_IF_ID, flush_ID_EX; // flush_EX_MEM, flush_MEM_WB 在本次实现中不需要

HAZARD_DETECTION U_HAZARD_DETECTION (
    // input
    .clk            (clk           ),
    .rst_n          (rst_n         ),

    .wd_sel_EX      (wd_sel_EX     ),

    .rD1_used       (rD1_used      ),
    .rD2_used       (rD2_used      ),

    .rf_we_EX       (rf_we_EX      ),
    .rf_we_MEM      (rf_we_MEM     ),
    .rf_we_WB       (rf_we_WB      ),

    .rR1_ID         (inst_ID[19:15]),
    .rR2_ID         (inst_ID[24:20]),

    .wR_EX          (wR_EX         ),
    .wR_MEM         (wR_MEM        ),
    .wR_WB          (wR_WB         ),

    .wD_EX          (wD_EX         ),
    .wD_MEM         (wD_MEM        ),
    .wD_WB          (wD_WB         ),

    .npc_op         (npc_op        ),

    // output
    .keep_PC        (keep_PC       ),
    .keep_IF_ID     (keep_IF_ID    ),

    .flush_IF_ID    (flush_IF_ID   ),
    .flush_ID_EX    (flush_ID_EX   ),

    .rD1_op         (rD1_op        ),
    .rD2_op         (rD2_op        ),
    .rD1_forward    (rD1_forward   ),
    .rD2_forward    (rD2_forward   )
);

/*
 * IF
 */

PC U_PC (
    // input
    .clk         (clk        ),
    .rst_n       (rst_n      ),

    .keep        (keep_PC    ),
    .npc         (npc        ),

    // output
    .pc          (pc_IF      )
);

NPC U_NPC (
    // input
    .op          (npc_op     ),
    .pc          (pc_IF      ),
    .npc_change  (npc_change ),

    // output
    .npc         (npc        ),
    .pc4         (pc4_IF     )
);

assign pc_pc = pc_IF;
assign inst_IF = irom_inst;

REG_IF_ID U_REG_IF_ID (
    .clk         (clk        ),
    .rst_n       (rst_n      ),

    .keep        (keep_IF_ID ),
    .flush       (flush_IF_ID),

    .pc_i        (pc_IF      ),
    .pc_o        (pc_ID      ),

    .pc4_i       (pc4_IF     ),
    .pc4_o       (pc4_ID     ),

    .inst_i      (inst_IF    ),
    .inst_o      (inst_ID    )
);

/*
 * ID
 */

CONTROLLER U_CONTROLLER (
    // input
    .inst        (inst_ID       ),

    // output
    .wd_sel      (wd_sel_ID     ),
    .alu_op      (alu_op_ID     ),
    .alub_sel    (alub_sel_ID   ),
    .rf_we       (rf_we_ID      ),
    .dram_we     (dram_we_ID    ),
    .sext_op     (sext_op_ID    ),
    .branch      (branch_ID     ),
    .jump        (jump_ID       ),

    .rD1_used    (rD1_used      ),
    .rD2_used    (rD2_used      )
);

SEXT U_SEXT (
    // input
    .op          (sext_op_ID    ),
    .din         (inst_ID[31:7] ),

    // output
    .ext         (imm_ID        )
);

RF U_RF (
    // input
    .clk         (clk           ),
    .rst_n       (rst_n         ),

    .rf_we       (rf_we_WB      ),

    .rR1         (inst_ID[19:15]),
    .rR2         (inst_ID[24:20]),
    .wR          (wR_WB         ), // WB is here!
    .wD          (wD_WB         ),

    // output
    .rD1         (rD1_ID        ),
    .rD2         (rD2_ID        )
);

assign wR_ID = inst_ID[11:7];
assign pc_imm_ID = pc_ID + imm_ID;

REG_ID_EX U_REG_ID_EX (
    .clk         (clk           ),
    .rst_n       (rst_n         ),

    .flush       (flush_ID_EX   ),

    .wd_sel_i    (wd_sel_ID     ),
    .wd_sel_o    (wd_sel_EX     ),

    .alu_op_i    (alu_op_ID     ),
    .alu_op_o    (alu_op_EX     ),

    .alub_sel_i  (alub_sel_ID   ),
    .alub_sel_o  (alub_sel_EX   ),

    .rf_we_i     (rf_we_ID      ),
    .rf_we_o     (rf_we_EX      ),

    .dram_we_i   (dram_we_ID    ),
    .dram_we_o   (dram_we_EX    ),

    .branch_i    (branch_ID     ),
    .branch_o    (branch_EX     ),

    .jump_i      (jump_ID       ),
    .jump_o      (jump_EX       ),

    .pc_imm_i    (pc_imm_ID     ),
    .pc_imm_o    (pc_imm_EX     ),

    .imm_i       (imm_ID        ),
    .imm_o       (imm_EX        ),

    .pc4_i       (pc4_ID        ),
    .pc4_o       (pc4_EX        ),

    .wR_i        (wR_ID         ),
    .wR_o        (wR_EX         ),

    .rD1_i       (rD1_ID        ),
    .rD1_o       (rD1_EX        ),

    .rD2_i       (rD2_ID        ),
    .rD2_o       (rD2_EX        ),

    // 数据前递
    .rD1_op      (rD1_op        ),
    .rD2_op      (rD2_op        ),
    .rD1_forward (rD1_forward   ),
    .rD2_forward (rD2_forward   )
);

/*
 * EX
 */

ALU_MUX U_ALU_MUX (
    // input
    .alub_sel    (alub_sel_EX  ),
    .rD2         (rD2_EX       ),
    .imm         (imm_EX       ),
    // output
    .alu_b       (alu_b        )
);

ALU U_ALU (
    // input
    .op          (alu_op_EX    ),

    .A           (rD1_EX       ),
    .B           (alu_b        ),

    // output
    .C           (alu_c_EX     ),
    .zero        (zero         ),
    .sgn         (sgn          )
);

// important! 及其重要的跳转判断以及跳转 pc 值的计算模块(身兼两职)
// 要到 EX 阶段才能获取到 zero 和 sgn 作出最终判断, 才能得到 alu.c 计算 npc
NPC_CONTROL U_NPC_CONTROL (
    // input
    // from ID - CONTROLLER
    .branch      (branch_EX    ),
    .jump        (jump_EX      ),
    // from EX - ALU
    .zero        (zero         ),
    .sgn         (sgn          ),
    // from ID - adder
    .pc_imm      (pc_imm_EX    ),
    // from EX - ALU
    .alu_c       (alu_c_EX     ),

    // output
    // to IF - NPC
    .npc_op      (npc_op       ),
    .npc_change  (npc_change   )
);

// wD 的第一次选择, 主要是为了在流水线寄存器里少塞点数据, 比如不再传递 pc4 和 imm
WD_MUX1 U_WD_MUX1 (
    // input
    .wd_sel      (wd_sel_EX    ),
    .pc4         (pc4_EX       ),
    .imm         (imm_EX       ),
    .alu_c       (alu_c_EX     ),

    // output
    .wD          (wD_EX        )
);

REG_EX_MEM U_REG_EX_MEM (
    .clk         (clk          ),
    .rst_n       (rst_n        ),

    .wd_sel_i    (wd_sel_EX    ),
    .wd_sel_o    (wd_sel_MEM   ),

    .rf_we_i     (rf_we_EX     ),
    .rf_we_o     (rf_we_MEM    ),

    .dram_we_i   (dram_we_EX   ),
    .dram_we_o   (dram_we_MEM  ),

    .wR_i        (wR_EX        ),
    .wR_o        (wR_MEM       ),

    .wD_i        (wD_EX        ),
    .wD_o        (wD_MEM_temp  ),

    .alu_c_i     (alu_c_EX     ),
    .alu_c_o     (alu_c_MEM    ),

    .rD2_i       (rD2_EX       ),
    .rD2_o       (rD2_MEM      )
);

/*
 * MEM
 */

assign dram_we     = dram_we_MEM;
assign addr        = alu_c_MEM  ;
assign write_data  = rD2_MEM    ;
assign dram_rd     = read_data  ;

// wD 的第二次也是最后一次选择, 终于在 MEM 阶段获得了 dram.rd
WD_MUX2 U_WD_MUX2 (
    // input
    .wd_sel      (wd_sel_MEM   ),
    .dram_rd     (dram_rd      ),
    .wD_temp     (wD_MEM_temp  ),

    // output
    .wD          (wD_MEM       )
);

REG_MEM_WB U_REG_MEM_WB (
    .clk         (clk          ),
    .rst_n       (rst_n        ),

    .rf_we_i     (rf_we_MEM    ),
    .rf_we_o     (rf_we_WB     ),

    .wR_i        (wR_MEM       ),
    .wR_o        (wR_WB        ),

    .wD_i        (wD_MEM       ),
    .wD_o        (wD_WB        )
);

endmodule
