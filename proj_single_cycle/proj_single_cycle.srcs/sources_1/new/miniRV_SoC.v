`timescale 1ns / 1ps

`include "defines.vh"

module miniRV_SoC (
    input  wire         fpga_rst,   // High active
    input  wire         fpga_clk,

    input  wire [23:0]  sw,
    input  wire [ 4:0]  button,
    output wire [ 7:0]  dig_en,
    output wire         DN_A,
    output wire         DN_B,
    output wire         DN_C,
    output wire         DN_D,
    output wire         DN_E,
    output wire         DN_F,
    output wire         DN_G,
    output wire         DN_DP,
    output wire [23:0]  led

`ifdef RUN_TRACE
    ,// Debug Interface
    output wire         debug_wb_have_inst, // 当前时钟周期是否有指令执行到WB阶段
    output wire [31:0]  debug_wb_pc,        // WB阶段的PC (若wb_have_inst=0，此项可为任意�??)
    output              debug_wb_ena,       // WB阶段的寄存器写使�? (若wb_have_inst=0，此项可为任意�??)
    output wire [ 4:0]  debug_wb_reg,       // WB阶段写入的寄存器�? (若wb_ena或wb_have_inst=0，此项可为任意�??)
    output wire [31:0]  debug_wb_value      // WB阶段写入寄存器的�? (若wb_ena或wb_have_inst=0，此项可为任意�??)
`endif
);
    //Interface regarding clk
    wire        pll_lock;
    wire        pll_clk;
    wire        cpu_clk;

    // Interface between CPU and IROM
`ifdef RUN_TRACE
    wire [15:0] inst_addr;
`else
    wire [13:0] inst_addr;
`endif
    wire [31:0] inst;

    // Interface between CPU and Bridge
    wire [31:0] Bus_rdata;
    wire [31:0] Bus_addr;
    wire        Bus_we;
    wire [31:0] Bus_wdata;
    
    // Interface between bridge and DRAM
    // wire         rstn_bridge2dram;
    wire         Bridge_to_dram_clk;
    wire [31:0]  Bridge_to_dram_addr;
    wire [31:0]  DRAM_rdata;
    wire         Bridge_to_dram_we;
    wire [31:0]  Bridge_to_dram_wdata;
    
    // Interface between bridge and peripherals
    // TODO: 在此定义总线桥与外设I/O接口电路模块的连接信�?
    // Interface to 7-seg digital LEDs
    wire         Bridge_to_dig_rst;
    wire         Bridge_to_dig_clk;
    wire [31:0]  Bridge_to_dig_addr;
    wire         Bridge_to_dig_we;
    wire [31:0]  Bridge_to_dig_wdata;

    // Interface to LEDs
    wire         Bridge_to_led_rst;
    wire         Bridge_to_led_clk;
    wire [31:0]  Bridge_to_led_addr;
    wire         Bridge_to_led_we;
    wire [31:0]  Bridge_to_led_wdata;

    // Interface to switches
    wire         Bridge_to_sw_rst;
    wire         Bridge_to_sw_clk;
    wire [31:0]  Bridge_to_sw_addr;
    wire [31:0]  Sw_rdata;
    
    // Interface to buttons
    wire         Bridge_to_btn_rst;
    wire         Bridge_to_btn_clk;
    wire [31:0]  Bridge_to_btn_addr;
    wire [31:0]  Btn_rdata;



`ifdef RUN_TRACE
    // Trace调试时，直接使用外部输入时钟
    assign cpu_clk = fpga_clk;
`else
    // 下板时，使用PLL分频后的时钟
    assign cpu_clk = pll_clk & pll_lock;
    cpuclk Clkgen (
        // .resetn     (!fpga_rst),
        .clk_in1    (fpga_clk),
        .clk_out1   (pll_clk),
        .locked     (pll_lock)
    );
`endif
    
    myCPU Core_cpu (
        .cpu_rst            (fpga_rst),
        .cpu_clk            (cpu_clk),

        // Interface to IROM
        .inst_addr          (inst_addr),
        .inst               (inst),

        // Interface to Bridge
        .Bus_addr           (Bus_addr),
        .Bus_rdata          (Bus_rdata),
        .Bus_we             (Bus_we),
        .Bus_wdata          (Bus_wdata)

`ifdef RUN_TRACE
        ,// Debug Interface
        .debug_wb_have_inst (debug_wb_have_inst),
        .debug_wb_pc        (debug_wb_pc),
        .debug_wb_ena       (debug_wb_ena),
        .debug_wb_reg       (debug_wb_reg),
        .debug_wb_value     (debug_wb_value)
`endif
    );
    
    IROM Mem_IROM (
        .a          (inst_addr),
        .spo        (inst)
    );
    
    Bridge Bridge (       
        // Interface to CPU
        .rst_from_cpu       (fpga_rst),
        .clk_from_cpu       (cpu_clk),
        .addr_from_cpu      (Bus_addr),
        .we_from_cpu        (Bus_we),
        .wdata_from_cpu     (Bus_wdata),
        .rdata_to_cpu       (Bus_rdata),
        
        // Interface to DRAM
        // .rst_to_dram    (rst_bridge2dram),
        .clk_to_dram        (Bridge_to_dram_clk),
        .addr_to_dram       (Bridge_to_dram_addr),
        .rdata_from_dram    (DRAM_rdata),
        .we_to_dram         (Bridge_to_dram_we),
        .wdata_to_dram      (Bridge_to_dram_wdata),
        
        // Interface to 7-seg digital LEDs
        .rst_to_dig         (Bridge_to_dig_rst/* TODO */),
        .clk_to_dig         (Bridge_to_dig_clk/* TODO */),
        .addr_to_dig        (Bridge_to_dig_addr/* TODO */),
        .we_to_dig          (Bridge_to_dig_we/* TODO */),
        .wdata_to_dig       (Bridge_to_dig_wdata/* TODO */),

        // Interface to LEDs
        .rst_to_led         (Bridge_to_led_rst/* TODO */),
        .clk_to_led         (Bridge_to_led_clk/* TODO */),
        .addr_to_led        (Bridge_to_led_addr/* TODO */),
        .we_to_led          (Bridge_to_led_we/* TODO */),
        .wdata_to_led       (Bridge_to_led_wdata/* TODO */),

        // Interface to switches
        .rst_to_sw          (Bridge_to_sw_rst/* TODO */),
        .clk_to_sw          (Bridge_to_sw_clk/* TODO */),
        .addr_to_sw         (Bridge_to_sw_addr/* TODO */),
        .rdata_from_sw      (Sw_rdata/* TODO */),

        // Interface to buttons
        .rst_to_btn         (Bridge_to_btn_rst/* TODO */),
        .clk_to_btn         (Bridge_to_btn_clk/* TODO */),
        .addr_to_btn        (Bridge_to_btn_addr/* TODO */),
        .rdata_from_btn     (Btn_rdata/* TODO */)
    );

    DRAM Mem_DRAM (
        .clk        (Bridge_to_dram_clk),
        .a          (Bridge_to_dram_addr[15:2]),
        .spo        (DRAM_rdata),
        .we         (Bridge_to_dram_we),
        .d          (Bridge_to_dram_wdata)
    );
    
    // TODO: 在此实例化你的外设I/O接口电路模块
    //IO between Bridge and 7-seg digital LEDs
    //IO between Bridge and LEDs
    Led U_Led(
        .Bridge_to_dig_clk      (Bridge_to_dig_clk),
        .Bridge_to_dig_rst      (Bridge_to_btn_rst),
        .Bridge_to_dig_we       (Bridge_to_dig_we),
        .Bridge_to_dig_wdata    (Bridge_to_dig_wdata),
        .Bridge_to_led_clk      (Bridge_to_led_clk),
        .Bridge_to_led_rst      (Bridge_to_led_rst),
        .Bridge_to_led_we       (Bridge_to_dig_we),
        .Bridge_to_led_wdata    (Bridge_to_dig_wdata),
        .A                      (DN_A),
        .B                      (DN_B),
        .C                      (DN_C),
        .D                      (DN_D),
        .E                      (DN_E),
        .F                      (DN_F),
        .G                      (DN_G),
        .DP                     (DN_DP),
        .en_7seg                (dig_en),
        .led                    (led)
    );

    //IO between Bridge and switches
    assign Sw_rdata = {8'h00,sw};
    
    //IO between Bridge and buttons
    assign Btn_rdata = {27'h0,button};
    

endmodule
