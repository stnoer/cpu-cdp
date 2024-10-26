`timescale 1ns / 1ps

module REG_IF_ID(
    input  wire         cpu_rst,    //High active
    input  wire         cpu_clk,
    input  wire         stop_IF_ID, //High active
    
    
    input  wire [31:0]  PC_pc,
    input  wire [31:0]  PC_ADD_naddr,
    input  wire [31:0]  inst, 
    
    output reg  [31:0]  IF_ID_inst,
    output reg  [31:0]  IF_ID_naddr,
    output reg  [31:0]  IF_ID_pc
    );
    
    always @(posedge cpu_clk or posedge cpu_rst)
    begin
        if(cpu_rst)
            begin
                IF_ID_inst  <= 32'b0;
                IF_ID_naddr  <= 32'b0;
                IF_ID_pc  <= 32'b0;
            end
        else if(stop_IF_ID)
            begin
                IF_ID_inst  <= IF_ID_inst;
                IF_ID_naddr  <= IF_ID_naddr;
                IF_ID_pc  <= IF_ID_pc;
            end
        else
            begin
                IF_ID_inst  <= inst;
                IF_ID_naddr  <= PC_ADD_naddr;
                IF_ID_pc  <= PC_pc;
            end
    end
    

    
endmodule
