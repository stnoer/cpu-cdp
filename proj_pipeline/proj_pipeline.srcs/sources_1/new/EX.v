module EX(
    input  wire [31:0] data1,
    input  wire [31:0] pc,
    input  wire        ASel,
    input  wire [31:0] data2,
    input  wire [31:0] imm,
    input  wire        BSel,
    input  wire [3:0]  ALUSel,

    
    input  wire [2:0]  BCOMPEn,
    output reg         beq,
    output reg         blt,
    output wire  [31:0] C

);
    reg [31:0] opA;
    reg [31:0] opB;
    


    always @(*)//选择操作数AB�?
    begin
        opA = ASel ? pc : data1;
        opB = BSel ? imm : data2;
    end

    always @(*)//判断信号beq、blt取值
    begin
        case(BCOMPEn)
        3'b000:
            begin
                beq = 1;
                blt = 1;
            end
        default:
            begin
                if(data1 == data2)
                    begin
                        beq = 1;
                        blt = 0;
                    end
                else if($signed(data1) < $signed(data2))
                    begin
                        beq = 0;
                        blt = 1;
                    end
                else
                    begin
                        beq = 0;
                        blt = 0;
                    end    
            end
        endcase
    end


    ALU U_ALU(
            .opA(opA),
            .opB(opB),
            .ALUSel(ALUSel),
            .C(C)
            );


endmodule