// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Aug  2 11:33:21 2024
// Host        : LAPTOP-V87KTB7N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ IROM_sim_netlist.v
// Design      : IROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "IROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "14" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "16384" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "IROM.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [13:0]a;
  input [31:0]d;
  input [13:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [13:0]a;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31:2] = \^spo [31:2];
  assign spo[1] = \^spo [0];
  assign spo[0] = \^spo [0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31:2],\^spo [0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [30:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [30:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a);
  output [30:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [30:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_10_n_0 ;
  wire \spo[10]_INST_0_i_11_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_7_n_0 ;
  wire \spo[10]_INST_0_i_8_n_0 ;
  wire \spo[10]_INST_0_i_9_n_0 ;
  wire \spo[11]_INST_0_i_10_n_0 ;
  wire \spo[11]_INST_0_i_11_n_0 ;
  wire \spo[11]_INST_0_i_12_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_7_n_0 ;
  wire \spo[11]_INST_0_i_8_n_0 ;
  wire \spo[11]_INST_0_i_9_n_0 ;
  wire \spo[12]_INST_0_i_10_n_0 ;
  wire \spo[12]_INST_0_i_11_n_0 ;
  wire \spo[12]_INST_0_i_12_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_7_n_0 ;
  wire \spo[12]_INST_0_i_8_n_0 ;
  wire \spo[12]_INST_0_i_9_n_0 ;
  wire \spo[13]_INST_0_i_10_n_0 ;
  wire \spo[13]_INST_0_i_11_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[13]_INST_0_i_7_n_0 ;
  wire \spo[13]_INST_0_i_8_n_0 ;
  wire \spo[13]_INST_0_i_9_n_0 ;
  wire \spo[14]_INST_0_i_10_n_0 ;
  wire \spo[14]_INST_0_i_11_n_0 ;
  wire \spo[14]_INST_0_i_12_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_7_n_0 ;
  wire \spo[14]_INST_0_i_8_n_0 ;
  wire \spo[14]_INST_0_i_9_n_0 ;
  wire \spo[15]_INST_0_i_10_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_7_n_0 ;
  wire \spo[15]_INST_0_i_8_n_0 ;
  wire \spo[15]_INST_0_i_9_n_0 ;
  wire \spo[16]_INST_0_i_10_n_0 ;
  wire \spo[16]_INST_0_i_11_n_0 ;
  wire \spo[16]_INST_0_i_12_n_0 ;
  wire \spo[16]_INST_0_i_13_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_7_n_0 ;
  wire \spo[16]_INST_0_i_8_n_0 ;
  wire \spo[16]_INST_0_i_9_n_0 ;
  wire \spo[17]_INST_0_i_10_n_0 ;
  wire \spo[17]_INST_0_i_11_n_0 ;
  wire \spo[17]_INST_0_i_12_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_7_n_0 ;
  wire \spo[17]_INST_0_i_8_n_0 ;
  wire \spo[17]_INST_0_i_9_n_0 ;
  wire \spo[18]_INST_0_i_10_n_0 ;
  wire \spo[18]_INST_0_i_11_n_0 ;
  wire \spo[18]_INST_0_i_12_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_7_n_0 ;
  wire \spo[18]_INST_0_i_8_n_0 ;
  wire \spo[18]_INST_0_i_9_n_0 ;
  wire \spo[19]_INST_0_i_10_n_0 ;
  wire \spo[19]_INST_0_i_11_n_0 ;
  wire \spo[19]_INST_0_i_12_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_7_n_0 ;
  wire \spo[19]_INST_0_i_8_n_0 ;
  wire \spo[19]_INST_0_i_9_n_0 ;
  wire \spo[20]_INST_0_i_10_n_0 ;
  wire \spo[20]_INST_0_i_11_n_0 ;
  wire \spo[20]_INST_0_i_12_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_5_n_0 ;
  wire \spo[20]_INST_0_i_6_n_0 ;
  wire \spo[20]_INST_0_i_7_n_0 ;
  wire \spo[20]_INST_0_i_8_n_0 ;
  wire \spo[20]_INST_0_i_9_n_0 ;
  wire \spo[21]_INST_0_i_10_n_0 ;
  wire \spo[21]_INST_0_i_11_n_0 ;
  wire \spo[21]_INST_0_i_12_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[21]_INST_0_i_7_n_0 ;
  wire \spo[21]_INST_0_i_8_n_0 ;
  wire \spo[21]_INST_0_i_9_n_0 ;
  wire \spo[22]_INST_0_i_10_n_0 ;
  wire \spo[22]_INST_0_i_11_n_0 ;
  wire \spo[22]_INST_0_i_12_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_7_n_0 ;
  wire \spo[22]_INST_0_i_8_n_0 ;
  wire \spo[22]_INST_0_i_9_n_0 ;
  wire \spo[23]_INST_0_i_10_n_0 ;
  wire \spo[23]_INST_0_i_11_n_0 ;
  wire \spo[23]_INST_0_i_12_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_7_n_0 ;
  wire \spo[23]_INST_0_i_8_n_0 ;
  wire \spo[23]_INST_0_i_9_n_0 ;
  wire \spo[24]_INST_0_i_10_n_0 ;
  wire \spo[24]_INST_0_i_11_n_0 ;
  wire \spo[24]_INST_0_i_12_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[24]_INST_0_i_7_n_0 ;
  wire \spo[24]_INST_0_i_8_n_0 ;
  wire \spo[24]_INST_0_i_9_n_0 ;
  wire \spo[25]_INST_0_i_10_n_0 ;
  wire \spo[25]_INST_0_i_11_n_0 ;
  wire \spo[25]_INST_0_i_12_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_5_n_0 ;
  wire \spo[25]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_7_n_0 ;
  wire \spo[25]_INST_0_i_8_n_0 ;
  wire \spo[25]_INST_0_i_9_n_0 ;
  wire \spo[26]_INST_0_i_10_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[26]_INST_0_i_7_n_0 ;
  wire \spo[26]_INST_0_i_8_n_0 ;
  wire \spo[26]_INST_0_i_9_n_0 ;
  wire \spo[27]_INST_0_i_10_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_7_n_0 ;
  wire \spo[27]_INST_0_i_8_n_0 ;
  wire \spo[27]_INST_0_i_9_n_0 ;
  wire \spo[28]_INST_0_i_10_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_7_n_0 ;
  wire \spo[28]_INST_0_i_8_n_0 ;
  wire \spo[28]_INST_0_i_9_n_0 ;
  wire \spo[29]_INST_0_i_10_n_0 ;
  wire \spo[29]_INST_0_i_11_n_0 ;
  wire \spo[29]_INST_0_i_12_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[29]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_7_n_0 ;
  wire \spo[29]_INST_0_i_8_n_0 ;
  wire \spo[29]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[30]_INST_0_i_10_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[30]_INST_0_i_3_n_0 ;
  wire \spo[30]_INST_0_i_4_n_0 ;
  wire \spo[30]_INST_0_i_5_n_0 ;
  wire \spo[30]_INST_0_i_6_n_0 ;
  wire \spo[30]_INST_0_i_7_n_0 ;
  wire \spo[30]_INST_0_i_8_n_0 ;
  wire \spo[30]_INST_0_i_9_n_0 ;
  wire \spo[31]_INST_0_i_10_n_0 ;
  wire \spo[31]_INST_0_i_11_n_0 ;
  wire \spo[31]_INST_0_i_12_n_0 ;
  wire \spo[31]_INST_0_i_13_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_7_n_0 ;
  wire \spo[31]_INST_0_i_8_n_0 ;
  wire \spo[31]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[7]_INST_0_i_10_n_0 ;
  wire \spo[7]_INST_0_i_11_n_0 ;
  wire \spo[7]_INST_0_i_12_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_9_n_0 ;
  wire \spo[8]_INST_0_i_10_n_0 ;
  wire \spo[8]_INST_0_i_11_n_0 ;
  wire \spo[8]_INST_0_i_12_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_7_n_0 ;
  wire \spo[8]_INST_0_i_8_n_0 ;
  wire \spo[8]_INST_0_i_9_n_0 ;
  wire \spo[9]_INST_0_i_10_n_0 ;
  wire \spo[9]_INST_0_i_11_n_0 ;
  wire \spo[9]_INST_0_i_12_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_7_n_0 ;
  wire \spo[9]_INST_0_i_8_n_0 ;
  wire \spo[9]_INST_0_i_9_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[0]_INST_0 
       (.I0(a[12]),
        .I1(\spo[0]_INST_0_i_1_n_0 ),
        .I2(a[11]),
        .I3(a[13]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h0000000011515555)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_2_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011551555)) 
    \spo[0]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[10]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[10]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_2_n_0 ),
        .I1(\spo[10]_INST_0_i_3_n_0 ),
        .I2(a[8]),
        .I3(\spo[10]_INST_0_i_4_n_0 ),
        .I4(a[7]),
        .I5(\spo[10]_INST_0_i_5_n_0 ),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3637C8D801BA25F1)) 
    \spo[10]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h09219E447EED1B6D)) 
    \spo[10]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001055)) 
    \spo[10]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  MUXF7 \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_6_n_0 ),
        .I1(\spo[10]_INST_0_i_7_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[10]_INST_0_i_4 
       (.I0(\spo[10]_INST_0_i_8_n_0 ),
        .I1(\spo[10]_INST_0_i_9_n_0 ),
        .O(\spo[10]_INST_0_i_4_n_0 ),
        .S(a[5]));
  MUXF7 \spo[10]_INST_0_i_5 
       (.I0(\spo[10]_INST_0_i_10_n_0 ),
        .I1(\spo[10]_INST_0_i_11_n_0 ),
        .O(\spo[10]_INST_0_i_5_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hFE77FA76936E13BF)) 
    \spo[10]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC37BFCF0F4737FF3)) 
    \spo[10]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA4A60B2C26B5A8D4)) 
    \spo[10]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD46824CCD6DB6724)) 
    \spo[10]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[11]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[11]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_4_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAA6BBB01002492)) 
    \spo[11]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5982E98374AEAE22)) 
    \spo[11]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2EFEDCDC935ECD91)) 
    \spo[11]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010454)) 
    \spo[11]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  MUXF7 \spo[11]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[11]_INST_0_i_4 
       (.I0(\spo[11]_INST_0_i_7_n_0 ),
        .I1(\spo[11]_INST_0_i_8_n_0 ),
        .O(\spo[11]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hBDB7FDF765B0E7B3)) 
    \spo[11]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC0CCCBF7B07B747F)) 
    \spo[11]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  MUXF7 \spo[11]_INST_0_i_7 
       (.I0(\spo[11]_INST_0_i_9_n_0 ),
        .I1(\spo[11]_INST_0_i_10_n_0 ),
        .O(\spo[11]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[11]_INST_0_i_8 
       (.I0(\spo[11]_INST_0_i_11_n_0 ),
        .I1(\spo[11]_INST_0_i_12_n_0 ),
        .O(\spo[11]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h00753745104A3210)) 
    \spo[11]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[12]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[12]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[12]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_4_n_0 ),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h986B1A1EA813EDED)) 
    \spo[12]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hD0A50E44A0409008)) 
    \spo[12]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h44004872F8939000)) 
    \spo[12]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000050608)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  MUXF7 \spo[12]_INST_0_i_3 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(\spo[12]_INST_0_i_6_n_0 ),
        .O(\spo[12]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[12]_INST_0_i_4 
       (.I0(\spo[12]_INST_0_i_7_n_0 ),
        .I1(\spo[12]_INST_0_i_8_n_0 ),
        .O(\spo[12]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h3C600D263C201633)) 
    \spo[12]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCD8C64CC200AD373)) 
    \spo[12]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  MUXF7 \spo[12]_INST_0_i_7 
       (.I0(\spo[12]_INST_0_i_9_n_0 ),
        .I1(\spo[12]_INST_0_i_10_n_0 ),
        .O(\spo[12]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[12]_INST_0_i_8 
       (.I0(\spo[12]_INST_0_i_11_n_0 ),
        .I1(\spo[12]_INST_0_i_12_n_0 ),
        .O(\spo[12]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h005850E0324022A1)) 
    \spo[12]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[13]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[13]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_1 
       (.I0(\spo[13]_INST_0_i_2_n_0 ),
        .I1(\spo[13]_INST_0_i_3_n_0 ),
        .I2(a[8]),
        .I3(\spo[13]_INST_0_i_4_n_0 ),
        .I4(a[7]),
        .I5(\spo[13]_INST_0_i_5_n_0 ),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h004A40A032482241)) 
    \spo[13]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h08080311004D0880)) 
    \spo[13]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000400)) 
    \spo[13]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[14]_INST_0_i_6_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  MUXF7 \spo[13]_INST_0_i_3 
       (.I0(\spo[13]_INST_0_i_6_n_0 ),
        .I1(\spo[13]_INST_0_i_7_n_0 ),
        .O(\spo[13]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[13]_INST_0_i_4 
       (.I0(\spo[13]_INST_0_i_8_n_0 ),
        .I1(\spo[13]_INST_0_i_9_n_0 ),
        .O(\spo[13]_INST_0_i_4_n_0 ),
        .S(a[5]));
  MUXF7 \spo[13]_INST_0_i_5 
       (.I0(\spo[13]_INST_0_i_10_n_0 ),
        .I1(\spo[13]_INST_0_i_11_n_0 ),
        .O(\spo[13]_INST_0_i_5_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0C0C090400000000)) 
    \spo[13]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4000100020930222)) 
    \spo[13]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h502006908140410D)) 
    \spo[13]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00400032B0819002)) 
    \spo[13]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[14]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[14]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_1 
       (.I0(\spo[14]_INST_0_i_2_n_0 ),
        .I1(\spo[14]_INST_0_i_3_n_0 ),
        .I2(a[8]),
        .I3(\spo[14]_INST_0_i_4_n_0 ),
        .I4(a[7]),
        .I5(\spo[14]_INST_0_i_5_n_0 ),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40F00090008DB300)) 
    \spo[14]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h04D840E0324022A1)) 
    \spo[14]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0A2B0A0C28B1EDCD)) 
    \spo[14]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005001400)) 
    \spo[14]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(\spo[14]_INST_0_i_6_n_0 ),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  MUXF7 \spo[14]_INST_0_i_3 
       (.I0(\spo[14]_INST_0_i_7_n_0 ),
        .I1(\spo[14]_INST_0_i_8_n_0 ),
        .O(\spo[14]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[14]_INST_0_i_4 
       (.I0(\spo[14]_INST_0_i_9_n_0 ),
        .I1(\spo[14]_INST_0_i_10_n_0 ),
        .O(\spo[14]_INST_0_i_4_n_0 ),
        .S(a[5]));
  MUXF7 \spo[14]_INST_0_i_5 
       (.I0(\spo[14]_INST_0_i_11_n_0 ),
        .I1(\spo[14]_INST_0_i_12_n_0 ),
        .O(\spo[14]_INST_0_i_5_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[14]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[6]),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0C0009220C000433)) 
    \spo[14]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h60E4982020D70A22)) 
    \spo[14]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD1A081420E916408)) 
    \spo[14]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[15]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[15]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_2_n_0 ),
        .I1(\spo[15]_INST_0_i_2_n_0 ),
        .I2(a[8]),
        .I3(\spo[15]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[15]_INST_0_i_4_n_0 ),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h120E8049011BB349)) 
    \spo[15]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_10_n_0 ));
  MUXF7 \spo[15]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_5_n_0 ),
        .I1(\spo[15]_INST_0_i_6_n_0 ),
        .O(\spo[15]_INST_0_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \spo[15]_INST_0_i_3 
       (.I0(\spo[15]_INST_0_i_7_n_0 ),
        .I1(\spo[15]_INST_0_i_8_n_0 ),
        .O(\spo[15]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[15]_INST_0_i_4 
       (.I0(\spo[15]_INST_0_i_9_n_0 ),
        .I1(\spo[15]_INST_0_i_10_n_0 ),
        .O(\spo[15]_INST_0_i_4_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h3E08330944C77023)) 
    \spo[15]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h79118A4454087D13)) 
    \spo[15]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1CA78C44886016A8)) 
    \spo[15]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2C5C4A842572C32D)) 
    \spo[15]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00D8506032602221)) 
    \spo[15]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[16]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[16]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_2_n_0 ),
        .I1(\spo[16]_INST_0_i_3_n_0 ),
        .I2(a[8]),
        .I3(\spo[16]_INST_0_i_4_n_0 ),
        .I4(a[7]),
        .I5(\spo[16]_INST_0_i_5_n_0 ),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0DC893D18C1760A8)) 
    \spo[16]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h249082442CF75D75)) 
    \spo[16]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[16]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3688622A3672222B)) 
    \spo[16]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF3BB0E49ABBB1B49)) 
    \spo[16]_INST_0_i_13 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045404040)) 
    \spo[16]_INST_0_i_2 
       (.I0(a[4]),
        .I1(\spo[16]_INST_0_i_6_n_0 ),
        .I2(a[1]),
        .I3(\spo[16]_INST_0_i_7_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  MUXF7 \spo[16]_INST_0_i_3 
       (.I0(\spo[16]_INST_0_i_8_n_0 ),
        .I1(\spo[16]_INST_0_i_9_n_0 ),
        .O(\spo[16]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[16]_INST_0_i_4 
       (.I0(\spo[16]_INST_0_i_10_n_0 ),
        .I1(\spo[16]_INST_0_i_11_n_0 ),
        .O(\spo[16]_INST_0_i_4_n_0 ),
        .S(a[5]));
  MUXF7 \spo[16]_INST_0_i_5 
       (.I0(\spo[16]_INST_0_i_12_n_0 ),
        .I1(\spo[16]_INST_0_i_13_n_0 ),
        .O(\spo[16]_INST_0_i_5_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1200)) 
    \spo[16]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[0]),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[16]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[0]),
        .O(\spo[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0C06000084108393)) 
    \spo[16]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[16]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7182114410330800)) 
    \spo[16]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[17]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[17]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_4_n_0 ),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h63BB6FFD15A400A4)) 
    \spo[17]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[17]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h798FEFBB836040A8)) 
    \spo[17]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[17]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB984FB378FF3A8D5)) 
    \spo[17]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[17]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001500441)) 
    \spo[17]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[17]_INST_0_i_2_n_0 ));
  MUXF7 \spo[17]_INST_0_i_3 
       (.I0(\spo[17]_INST_0_i_5_n_0 ),
        .I1(\spo[17]_INST_0_i_6_n_0 ),
        .O(\spo[17]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[17]_INST_0_i_4 
       (.I0(\spo[17]_INST_0_i_7_n_0 ),
        .I1(\spo[17]_INST_0_i_8_n_0 ),
        .O(\spo[17]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h4041C460C9CDBBCF)) 
    \spo[17]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h60B35757B2B33BA2)) 
    \spo[17]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  MUXF7 \spo[17]_INST_0_i_7 
       (.I0(\spo[17]_INST_0_i_9_n_0 ),
        .I1(\spo[17]_INST_0_i_10_n_0 ),
        .O(\spo[17]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[17]_INST_0_i_8 
       (.I0(\spo[17]_INST_0_i_11_n_0 ),
        .I1(\spo[17]_INST_0_i_12_n_0 ),
        .O(\spo[17]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h36286280FE00EA81)) 
    \spo[17]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[18]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[18]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[17]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_4_n_0 ),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA900050032778888)) 
    \spo[18]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[18]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF427B7F007BC45AD)) 
    \spo[18]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hD4EF4876B9E3B3F7)) 
    \spo[18]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011151441)) 
    \spo[18]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  MUXF7 \spo[18]_INST_0_i_3 
       (.I0(\spo[18]_INST_0_i_5_n_0 ),
        .I1(\spo[18]_INST_0_i_6_n_0 ),
        .O(\spo[18]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[18]_INST_0_i_4 
       (.I0(\spo[18]_INST_0_i_7_n_0 ),
        .I1(\spo[18]_INST_0_i_8_n_0 ),
        .O(\spo[18]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h7EC102FC72C413EC)) 
    \spo[18]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD97DFECC669333B3)) 
    \spo[18]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  MUXF7 \spo[18]_INST_0_i_7 
       (.I0(\spo[18]_INST_0_i_9_n_0 ),
        .I1(\spo[18]_INST_0_i_10_n_0 ),
        .O(\spo[18]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[18]_INST_0_i_8 
       (.I0(\spo[18]_INST_0_i_11_n_0 ),
        .I1(\spo[18]_INST_0_i_12_n_0 ),
        .O(\spo[18]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h007A5040C828C841)) 
    \spo[18]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[19]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[19]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[18]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[19]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_4_n_0 ),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h76BB0004BBBB45DD)) 
    \spo[19]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h89C8A5EB8C136008)) 
    \spo[19]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6C4ADC0410DFB750)) 
    \spo[19]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000510028)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  MUXF7 \spo[19]_INST_0_i_3 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(\spo[19]_INST_0_i_6_n_0 ),
        .O(\spo[19]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[19]_INST_0_i_4 
       (.I0(\spo[19]_INST_0_i_7_n_0 ),
        .I1(\spo[19]_INST_0_i_8_n_0 ),
        .O(\spo[19]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h36083309C6477323)) 
    \spo[19]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE831CEC45C087F11)) 
    \spo[19]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  MUXF7 \spo[19]_INST_0_i_7 
       (.I0(\spo[19]_INST_0_i_9_n_0 ),
        .I1(\spo[19]_INST_0_i_10_n_0 ),
        .O(\spo[19]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[19]_INST_0_i_8 
       (.I0(\spo[19]_INST_0_i_11_n_0 ),
        .I1(\spo[19]_INST_0_i_12_n_0 ),
        .O(\spo[19]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h368872AA365222AB)) 
    \spo[19]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[20]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[20]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_4_n_0 ),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE4A4A00884AD8940)) 
    \spo[20]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[20]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hC4D70E4602D63218)) 
    \spo[20]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h48004A3A13338142)) 
    \spo[20]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000020C0402)) 
    \spo[20]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  MUXF7 \spo[20]_INST_0_i_3 
       (.I0(\spo[20]_INST_0_i_5_n_0 ),
        .I1(\spo[20]_INST_0_i_6_n_0 ),
        .O(\spo[20]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[20]_INST_0_i_4 
       (.I0(\spo[20]_INST_0_i_7_n_0 ),
        .I1(\spo[20]_INST_0_i_8_n_0 ),
        .O(\spo[20]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h8846C9398023CCCC)) 
    \spo[20]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h71C4779318311320)) 
    \spo[20]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_6_n_0 ));
  MUXF7 \spo[20]_INST_0_i_7 
       (.I0(\spo[20]_INST_0_i_9_n_0 ),
        .I1(\spo[20]_INST_0_i_10_n_0 ),
        .O(\spo[20]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[20]_INST_0_i_8 
       (.I0(\spo[20]_INST_0_i_11_n_0 ),
        .I1(\spo[20]_INST_0_i_12_n_0 ),
        .O(\spo[20]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h004194C048EA7505)) 
    \spo[20]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[20]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[21]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[21]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_4_n_0 ),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA020020445D0980)) 
    \spo[21]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h440000200421F941)) 
    \spo[21]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[21]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000012355080040)) 
    \spo[21]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100002)) 
    \spo[21]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[21]_INST_0_i_2_n_0 ));
  MUXF7 \spo[21]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_5_n_0 ),
        .I1(\spo[21]_INST_0_i_6_n_0 ),
        .O(\spo[21]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[21]_INST_0_i_4 
       (.I0(\spo[21]_INST_0_i_7_n_0 ),
        .I1(\spo[21]_INST_0_i_8_n_0 ),
        .O(\spo[21]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h000010000304288C)) 
    \spo[21]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00BC003300800088)) 
    \spo[21]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  MUXF7 \spo[21]_INST_0_i_7 
       (.I0(\spo[21]_INST_0_i_9_n_0 ),
        .I1(\spo[21]_INST_0_i_10_n_0 ),
        .O(\spo[21]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[21]_INST_0_i_8 
       (.I0(\spo[21]_INST_0_i_11_n_0 ),
        .I1(\spo[21]_INST_0_i_12_n_0 ),
        .O(\spo[21]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h06840A0004C31623)) 
    \spo[21]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[21]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[22]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[22]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[21]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_4_n_0 ),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC8C8607897786DF7)) 
    \spo[22]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[22]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h429F7362A809170B)) 
    \spo[22]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[22]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0501A5126B230845)) 
    \spo[22]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000140514)) 
    \spo[22]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  MUXF7 \spo[22]_INST_0_i_3 
       (.I0(\spo[22]_INST_0_i_5_n_0 ),
        .I1(\spo[22]_INST_0_i_6_n_0 ),
        .O(\spo[22]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[22]_INST_0_i_4 
       (.I0(\spo[22]_INST_0_i_7_n_0 ),
        .I1(\spo[22]_INST_0_i_8_n_0 ),
        .O(\spo[22]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h83031604286A9C8D)) 
    \spo[22]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h74483340BCB8B38B)) 
    \spo[22]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  MUXF7 \spo[22]_INST_0_i_7 
       (.I0(\spo[22]_INST_0_i_9_n_0 ),
        .I1(\spo[22]_INST_0_i_10_n_0 ),
        .O(\spo[22]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[22]_INST_0_i_8 
       (.I0(\spo[22]_INST_0_i_11_n_0 ),
        .I1(\spo[22]_INST_0_i_12_n_0 ),
        .O(\spo[22]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hC8E14EF6DCEA01AB)) 
    \spo[22]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[23]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[23]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[23]_INST_0_i_1 
       (.I0(\spo[23]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_4_n_0 ),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9200E0A24D2BDFB2)) 
    \spo[23]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[23]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6000030C10C510A0)) 
    \spo[23]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[23]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h98DA00285A3010E7)) 
    \spo[23]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001151441)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  MUXF7 \spo[23]_INST_0_i_3 
       (.I0(\spo[23]_INST_0_i_5_n_0 ),
        .I1(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[23]_INST_0_i_4 
       (.I0(\spo[23]_INST_0_i_7_n_0 ),
        .I1(\spo[23]_INST_0_i_8_n_0 ),
        .O(\spo[23]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h764C6020C857C862)) 
    \spo[23]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCC30071A15D31571)) 
    \spo[23]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  MUXF7 \spo[23]_INST_0_i_7 
       (.I0(\spo[23]_INST_0_i_9_n_0 ),
        .I1(\spo[23]_INST_0_i_10_n_0 ),
        .O(\spo[23]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[23]_INST_0_i_8 
       (.I0(\spo[23]_INST_0_i_11_n_0 ),
        .I1(\spo[23]_INST_0_i_12_n_0 ),
        .O(\spo[23]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0104456C7C62A809)) 
    \spo[23]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[23]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[24]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[24]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[24]_INST_0_i_1 
       (.I0(\spo[24]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_4_n_0 ),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9E245A82620C880)) 
    \spo[24]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBA2F0DB855CF07AF)) 
    \spo[24]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[24]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFA01CF50B773E195)) 
    \spo[24]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000010A0501)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  MUXF7 \spo[24]_INST_0_i_3 
       (.I0(\spo[24]_INST_0_i_5_n_0 ),
        .I1(\spo[24]_INST_0_i_6_n_0 ),
        .O(\spo[24]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[24]_INST_0_i_4 
       (.I0(\spo[24]_INST_0_i_7_n_0 ),
        .I1(\spo[24]_INST_0_i_8_n_0 ),
        .O(\spo[24]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h404FFF394827FCDC)) 
    \spo[24]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h20D5D71B0BB157CC)) 
    \spo[24]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  MUXF7 \spo[24]_INST_0_i_7 
       (.I0(\spo[24]_INST_0_i_9_n_0 ),
        .I1(\spo[24]_INST_0_i_10_n_0 ),
        .O(\spo[24]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[24]_INST_0_i_8 
       (.I0(\spo[24]_INST_0_i_11_n_0 ),
        .I1(\spo[24]_INST_0_i_12_n_0 ),
        .O(\spo[24]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0C042CC41008C249)) 
    \spo[24]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[25]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[24]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[25]_INST_0_i_1 
       (.I0(\spo[25]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_4_n_0 ),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010841000058C80)) 
    \spo[25]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h016D84908048410C)) 
    \spo[25]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[25]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0A040C2C28513222)) 
    \spo[25]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[25]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000002)) 
    \spo[25]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  MUXF7 \spo[25]_INST_0_i_3 
       (.I0(\spo[25]_INST_0_i_5_n_0 ),
        .I1(\spo[25]_INST_0_i_6_n_0 ),
        .O(\spo[25]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[25]_INST_0_i_4 
       (.I0(\spo[25]_INST_0_i_7_n_0 ),
        .I1(\spo[25]_INST_0_i_8_n_0 ),
        .O(\spo[25]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0000000836330010)) 
    \spo[25]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2828160400080C2C)) 
    \spo[25]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_6_n_0 ));
  MUXF7 \spo[25]_INST_0_i_7 
       (.I0(\spo[25]_INST_0_i_9_n_0 ),
        .I1(\spo[25]_INST_0_i_10_n_0 ),
        .O(\spo[25]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[25]_INST_0_i_8 
       (.I0(\spo[25]_INST_0_i_11_n_0 ),
        .I1(\spo[25]_INST_0_i_12_n_0 ),
        .O(\spo[25]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0540845A400A855B)) 
    \spo[25]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[26]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[26]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_2_n_0 ),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .I2(a[8]),
        .I3(\spo[26]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[26]_INST_0_i_4_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000805004800)) 
    \spo[26]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[26]_INST_0_i_10_n_0 ));
  MUXF7 \spo[26]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_5_n_0 ),
        .I1(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \spo[26]_INST_0_i_3 
       (.I0(\spo[26]_INST_0_i_7_n_0 ),
        .I1(\spo[26]_INST_0_i_8_n_0 ),
        .O(\spo[26]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[26]_INST_0_i_4 
       (.I0(\spo[26]_INST_0_i_9_n_0 ),
        .I1(\spo[26]_INST_0_i_10_n_0 ),
        .O(\spo[26]_INST_0_i_4_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0000800036330010)) 
    \spo[26]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B0005F00000090)) 
    \spo[26]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h002D049080480104)) 
    \spo[26]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2A04840C28513222)) 
    \spo[26]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0840CC0404008A89)) 
    \spo[26]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[26]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[27]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[27]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_2_n_0 ),
        .I1(\spo[27]_INST_0_i_2_n_0 ),
        .I2(a[8]),
        .I3(\spo[27]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[27]_INST_0_i_4_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80010108004200C0)) 
    \spo[27]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[27]_INST_0_i_10_n_0 ));
  MUXF7 \spo[27]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_5_n_0 ),
        .I1(\spo[27]_INST_0_i_6_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \spo[27]_INST_0_i_3 
       (.I0(\spo[27]_INST_0_i_7_n_0 ),
        .I1(\spo[27]_INST_0_i_8_n_0 ),
        .O(\spo[27]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[27]_INST_0_i_4 
       (.I0(\spo[27]_INST_0_i_9_n_0 ),
        .I1(\spo[27]_INST_0_i_10_n_0 ),
        .O(\spo[27]_INST_0_i_4_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0308030106000000)) 
    \spo[27]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0090003F00001000)) 
    \spo[27]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h016D059090484000)) 
    \spo[27]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0080A44085388125)) 
    \spo[27]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0040CC0044048001)) 
    \spo[27]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[27]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[28]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[28]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_2_n_0 ),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .I2(a[8]),
        .I3(\spo[28]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_4_n_0 ),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8045004010021040)) 
    \spo[28]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[28]_INST_0_i_10_n_0 ));
  MUXF7 \spo[28]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(\spo[28]_INST_0_i_6_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \spo[28]_INST_0_i_3 
       (.I0(\spo[28]_INST_0_i_7_n_0 ),
        .I1(\spo[28]_INST_0_i_8_n_0 ),
        .O(\spo[28]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[28]_INST_0_i_4 
       (.I0(\spo[28]_INST_0_i_9_n_0 ),
        .I1(\spo[28]_INST_0_i_10_n_0 ),
        .O(\spo[28]_INST_0_i_4_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0080000004000700)) 
    \spo[28]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4808360400200800)) 
    \spo[28]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h010D051080684000)) 
    \spo[28]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004000C853E8125)) 
    \spo[28]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0504401088820001)) 
    \spo[28]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[29]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[29]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_2_n_0 ),
        .I1(\spo[29]_INST_0_i_3_n_0 ),
        .I2(a[8]),
        .I3(\spo[29]_INST_0_i_4_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_5_n_0 ),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000C85308125)) 
    \spo[29]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[29]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000400020400005)) 
    \spo[29]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8010104000000000)) 
    \spo[29]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \spo[29]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(\spo[29]_INST_0_i_6_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  MUXF7 \spo[29]_INST_0_i_3 
       (.I0(\spo[29]_INST_0_i_7_n_0 ),
        .I1(\spo[29]_INST_0_i_8_n_0 ),
        .O(\spo[29]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[29]_INST_0_i_4 
       (.I0(\spo[29]_INST_0_i_9_n_0 ),
        .I1(\spo[29]_INST_0_i_10_n_0 ),
        .O(\spo[29]_INST_0_i_4_n_0 ),
        .S(a[5]));
  MUXF7 \spo[29]_INST_0_i_5 
       (.I0(\spo[29]_INST_0_i_11_n_0 ),
        .I1(\spo[29]_INST_0_i_12_n_0 ),
        .O(\spo[29]_INST_0_i_5_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[29]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[6]),
        .O(\spo[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000004002000300)) 
    \spo[29]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000C03800000080)) 
    \spo[29]_INST_0_i_8 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h010D051081484008)) 
    \spo[29]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[29]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[2]_INST_0 
       (.I0(a[12]),
        .I1(\spo[2]_INST_0_i_1_n_0 ),
        .I2(a[13]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_3_n_0 ),
        .I4(a[9]),
        .I5(a[11]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_3_n_0 ),
        .I1(\spo[3]_INST_0_i_5_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_6_n_0 ),
        .I4(a[5]),
        .I5(\spo[2]_INST_0_i_4_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h002000020B004E10)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCC00008098058001)) 
    \spo[2]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[30]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[30]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_2_n_0 ),
        .I1(\spo[30]_INST_0_i_2_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_4_n_0 ),
        .O(\spo[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80001008004D0000)) 
    \spo[30]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[30]_INST_0_i_10_n_0 ));
  MUXF7 \spo[30]_INST_0_i_2 
       (.I0(\spo[30]_INST_0_i_5_n_0 ),
        .I1(\spo[30]_INST_0_i_6_n_0 ),
        .O(\spo[30]_INST_0_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \spo[30]_INST_0_i_3 
       (.I0(\spo[30]_INST_0_i_7_n_0 ),
        .I1(\spo[30]_INST_0_i_8_n_0 ),
        .O(\spo[30]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[30]_INST_0_i_4 
       (.I0(\spo[30]_INST_0_i_9_n_0 ),
        .I1(\spo[30]_INST_0_i_10_n_0 ),
        .O(\spo[30]_INST_0_i_4_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h4080400002000300)) 
    \spo[30]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4013120088006480)) 
    \spo[30]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h210D0518814840A8)) 
    \spo[30]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9010000C853AA185)) 
    \spo[30]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0040000004048001)) 
    \spo[30]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[30]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[31]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[31]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_2_n_0 ),
        .I1(\spo[31]_INST_0_i_3_n_0 ),
        .I2(a[8]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_5_n_0 ),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h010D0510814840A8)) 
    \spo[31]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[31]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C853AA185)) 
    \spo[31]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0040000004008001)) 
    \spo[31]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[31]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8100000000000000)) 
    \spo[31]_INST_0_i_13 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005004040)) 
    \spo[31]_INST_0_i_2 
       (.I0(a[4]),
        .I1(\spo[31]_INST_0_i_6_n_0 ),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_7_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  MUXF7 \spo[31]_INST_0_i_3 
       (.I0(\spo[31]_INST_0_i_8_n_0 ),
        .I1(\spo[31]_INST_0_i_9_n_0 ),
        .O(\spo[31]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[31]_INST_0_i_4 
       (.I0(\spo[31]_INST_0_i_10_n_0 ),
        .I1(\spo[31]_INST_0_i_11_n_0 ),
        .O(\spo[31]_INST_0_i_4_n_0 ),
        .S(a[5]));
  MUXF7 \spo[31]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_12_n_0 ),
        .I1(\spo[31]_INST_0_i_13_n_0 ),
        .O(\spo[31]_INST_0_i_5_n_0 ),
        .S(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[31]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[0]),
        .O(\spo[31]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[31]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[0]),
        .O(\spo[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000002300)) 
    \spo[31]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4808160400000800)) 
    \spo[31]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[31]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \spo[3]_INST_0 
       (.I0(a[12]),
        .I1(\spo[3]_INST_0_i_1_n_0 ),
        .I2(a[13]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_3_n_0 ),
        .I4(a[9]),
        .I5(a[11]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00200080108040C0)) 
    \spo[3]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_4_n_0 ),
        .I1(\spo[3]_INST_0_i_5_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_6_n_0 ),
        .I4(a[5]),
        .I5(\spo[3]_INST_0_i_7_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_8_n_0 ),
        .I1(a[7]),
        .I2(\spo[3]_INST_0_i_9_n_0 ),
        .I3(a[5]),
        .I4(\spo[3]_INST_0_i_10_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h002000000B004E10)) 
    \spo[3]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0289745010405008)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00408C1040400020)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCC00008098800500)) 
    \spo[3]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[3]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3403008000000800)) 
    \spo[3]_INST_0_i_9 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[4]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[4]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_4_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7AAAFFFF7EFD3FBF)) 
    \spo[4]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7CAF83AE66BC8EF2)) 
    \spo[4]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBEFF5CFFBF724CF5)) 
    \spo[4]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011151151)) 
    \spo[4]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  MUXF7 \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_7_n_0 ),
        .I1(\spo[4]_INST_0_i_8_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hFFFF5F7FEFBF5F0F)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC3FFBC7F4FF7F3FF)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  MUXF7 \spo[4]_INST_0_i_7 
       (.I0(\spo[4]_INST_0_i_9_n_0 ),
        .I1(\spo[4]_INST_0_i_10_n_0 ),
        .O(\spo[4]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[4]_INST_0_i_8 
       (.I0(\spo[4]_INST_0_i_11_n_0 ),
        .I1(\spo[4]_INST_0_i_12_n_0 ),
        .O(\spo[4]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h00FF15FA7565F5B5)) 
    \spo[4]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[5]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_4_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE70057A8D3F53202)) 
    \spo[5]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA352D9C37C79730B)) 
    \spo[5]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hD9135ACDA333B34A)) 
    \spo[5]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002121101)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  MUXF7 \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_7_n_0 ),
        .I1(\spo[5]_INST_0_i_8_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h41EEC93944AFCCCC)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3CB3370F470F8700)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  MUXF7 \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_9_n_0 ),
        .I1(\spo[5]_INST_0_i_10_n_0 ),
        .O(\spo[5]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[5]_INST_0_i_8 
       (.I0(\spo[5]_INST_0_i_11_n_0 ),
        .I1(\spo[5]_INST_0_i_12_n_0 ),
        .O(\spo[5]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hFFAA00BAEF0A450B)) 
    \spo[5]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[6]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[6]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_2_n_0 ),
        .I1(\spo[6]_INST_0_i_3_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_4_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_5_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF008892EA050A0A)) 
    \spo[6]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h855581020000C040)) 
    \spo[6]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000500)) 
    \spo[6]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(\spo[14]_INST_0_i_6_n_0 ),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  MUXF7 \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_6_n_0 ),
        .I1(\spo[6]_INST_0_i_7_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF7 \spo[6]_INST_0_i_4 
       (.I0(\spo[6]_INST_0_i_8_n_0 ),
        .I1(\spo[6]_INST_0_i_9_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ),
        .S(a[5]));
  MUXF7 \spo[6]_INST_0_i_5 
       (.I0(\spo[6]_INST_0_i_10_n_0 ),
        .I1(\spo[6]_INST_0_i_11_n_0 ),
        .O(\spo[6]_INST_0_i_5_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0000A0801040A0F0)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3C430080B00C0800)) 
    \spo[6]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h835099437C517008)) 
    \spo[6]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4100008DA300B308)) 
    \spo[6]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[7]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[7]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[7]_INST_0_i_4_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8828C0E04A02DCBD)) 
    \spo[7]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4D66809008248686)) 
    \spo[7]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0A551852FAF04290)) 
    \spo[7]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000A80)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  MUXF7 \spo[7]_INST_0_i_3 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[7]_INST_0_i_4 
       (.I0(\spo[7]_INST_0_i_7_n_0 ),
        .I1(\spo[7]_INST_0_i_8_n_0 ),
        .O(\spo[7]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hCFB3CF3FFC33CF00)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h304F70300F003F4F)) 
    \spo[7]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  MUXF7 \spo[7]_INST_0_i_7 
       (.I0(\spo[7]_INST_0_i_9_n_0 ),
        .I1(\spo[7]_INST_0_i_10_n_0 ),
        .O(\spo[7]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[7]_INST_0_i_8 
       (.I0(\spo[7]_INST_0_i_11_n_0 ),
        .I1(\spo[7]_INST_0_i_12_n_0 ),
        .O(\spo[7]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h00001560111505F0)) 
    \spo[7]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[8]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[8]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_4_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74802EA4F3BC13B9)) 
    \spo[8]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5C02800C099086F2)) 
    \spo[8]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h28221494A74044F5)) 
    \spo[8]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080200)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  MUXF7 \spo[8]_INST_0_i_3 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[8]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_7_n_0 ),
        .I1(\spo[8]_INST_0_i_8_n_0 ),
        .O(\spo[8]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0888018944916040)) 
    \spo[8]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000008030B0434C)) 
    \spo[8]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  MUXF7 \spo[8]_INST_0_i_7 
       (.I0(\spo[8]_INST_0_i_9_n_0 ),
        .I1(\spo[8]_INST_0_i_10_n_0 ),
        .O(\spo[8]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[8]_INST_0_i_8 
       (.I0(\spo[8]_INST_0_i_11_n_0 ),
        .I1(\spo[8]_INST_0_i_12_n_0 ),
        .O(\spo[8]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h000510D436226434)) 
    \spo[8]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[9]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[9]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_4_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7365742D9BFFEDA4)) 
    \spo[9]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF90F89AA520022A0)) 
    \spo[9]_INST_0_i_11 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF82394B78F2000C5)) 
    \spo[9]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011120001)) 
    \spo[9]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  MUXF7 \spo[9]_INST_0_i_3 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_3_n_0 ),
        .S(a[5]));
  MUXF8 \spo[9]_INST_0_i_4 
       (.I0(\spo[9]_INST_0_i_7_n_0 ),
        .I1(\spo[9]_INST_0_i_8_n_0 ),
        .O(\spo[9]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h4089418DC6B963CC)) 
    \spo[9]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h040C387730FB884C)) 
    \spo[9]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_6_n_0 ));
  MUXF7 \spo[9]_INST_0_i_7 
       (.I0(\spo[9]_INST_0_i_9_n_0 ),
        .I1(\spo[9]_INST_0_i_10_n_0 ),
        .O(\spo[9]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF7 \spo[9]_INST_0_i_8 
       (.I0(\spo[9]_INST_0_i_11_n_0 ),
        .I1(\spo[9]_INST_0_i_12_n_0 ),
        .O(\spo[9]_INST_0_i_8_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h36FE23EA4135AD94)) 
    \spo[9]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[9]_INST_0_i_9_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif