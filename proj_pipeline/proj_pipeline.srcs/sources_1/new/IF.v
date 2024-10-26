module IF (
        input  wire        clk,
        input  wire        rst,
        input  wire        stop_PC,
        input  wire        stop_PC_NPC_MUX,

        input  wire [31:0] baddr,
        input  wire [31:0] EXE_MEM_pc,
        input  wire        beq,
        input  wire        blt,
        input  wire        PCSel,
        input  wire  [2:0] funct3,
        input  wire  [6:0] opcode,

        output wire         stop_PC_out,
        output wire  [31:0] pc  
);
        
        reg  [31:0] naddr;
        wire [31:0] npc_IF;
        reg  [31:0] pc_IF;
        

        assign pc = pc_IF;

        always @(*)
        begin
                naddr = pc_IF + 32'h0000_0004;
        end


        PC U_PC(
                .clk(clk),
                .rst(rst),
                .stop_PC(stop_PC),
                .stop_PC_NPC_MUX(stop_PC_NPC_MUX),
                .npc(npc_IF),

                .pc(pc_IF)
                );

        NPC U_NPC(
                .naddr(naddr),
                .baddr(baddr),
                .pc(pc_IF),
                .EXE_MEM_pc(EXE_MEM_pc),
                .beq(beq),
                .blt(blt),
                .funct3(funct3),
                .opcode(opcode),
                
                .stop_PC(stop_PC_out),
                .npc(npc_IF)
                );
    

endmodule
