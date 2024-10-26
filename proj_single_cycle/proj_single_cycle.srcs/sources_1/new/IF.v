module IF (
        input  wire        clk,
        input  wire        rst,

        input  wire [31:0] baddr,
        input  wire        beq,
        input  wire        blt,
        input  wire        PCSel,
        input  wire [2:0]  BCOMPEn,

        output wire  [31:0] pc  
);
        
        reg  [31:0] naddr;
        wire [31:0] npc_IF;

        always @(*)
        begin
                naddr = pc + 32'h0000_0004;
        end


        PC U_PC(
                .clk(clk),
                .rst(rst),
                .npc(npc_IF),

                .pc(pc)
                );

        NPC U_NPC(
                .naddr(naddr),
                .baddr(baddr),
                .beq(beq),
                .blt(blt),
                .PCSel(PCSel),
                .BCOMPEn(BCOMPEn),

                .npc(npc_IF)
                );
    

endmodule
