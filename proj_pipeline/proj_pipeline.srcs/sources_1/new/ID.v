module ID(
    input  wire        clk,
    input  wire [4:0]  rR1,
    input  wire [4:0]  rR2,
    input  wire [4:0]  wR,
    input  wire [31:0] wD,
    input  wire        RF_WE,




    input  wire [31:7] immIn,
    input  wire [3:0]  IMMSel,
    output reg  [31:0] imm,

    output reg  [31:0] rD1,
    output reg  [31:0] rD2
);

    wire [31:0] rD1_ID;
    wire [31:0] rD2_ID;
    wire [31:0] imm_ID;

    assign rD1_ID = rD1;
    assign rD2_ID = rD2;
    assign imm_ID = imm;
    
    RF U_RF(
            .clk(clk),
            .rR1(rR1),
            .rR2(rR2),
            .wR(wR),
            .wD(WD),
            .RF_WE(RF_WE),

            .rD1(rD1_ID),
            .rD2(rD2_ID)
            );      
                          
    SEXT U_SEXT(
            .immIn(immIn),
            .IMMSel(Ctrl_IMMSel),
            .imm(imm_ID)
            );

endmodule