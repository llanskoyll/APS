`timescale 1ns / 1ps

package ALUOps;
    enum logic[4:0] {
        SUM = 5'b0_0_000,
        SUB = 5'b0_1_000,
        SLL = 5'b0_0_001,
        SLT = 5'b0_0_010,
        SLTU = 5'b0_0_011,
        XOR = 5'b0_0_100,
        SRL = 5'b0_0_101,
        SRA = 5'b0_1_101,
        OR = 5'b0_0_110,
        AND = 5'b0_0_111,
        BEQ = 5'b1_1_000,
        BNE = 5'b1_1_001,
        BLT = 5'b1_1_100,
        BGE = 5'b1_1_101,
        BLTU = 5'b1_1_110,
        BGEU = 5'b1_1_111
    } ALOop;  
endpackage
module ALU #(int N = 32)(
       input logic [N-1:0] A,
       input logic [N-1:0] B,
       input logic [4:0] ALUControl,
       output logic Flag,
       output logic [N-1:0] Result
    );
     
    import ALUOps::*;
    
always_comb begin : ALU
    case(ALUControl[4:0])
        SUM : Result = A + (ALUControl[3] ? ~B : B);
        SUB : Result = A - B;
        SLL : Result = A << B;
        SLT : Result = $signed(A<B);
        SLTU : Result = A < B;
        XOR : Result = A ^ B;
        SRL : Result = A >> B;
        SRA : Result = $signed(A) >>> B;
        OR : Result = A | B;
        AND : Result = A & B;
        BEQ : Result = (Flag = (A == B));
        BNE : Result = (Flag = ( A != B));
        BLT : Result = (Flag = $signed(A<B));
        BGE : Result = (Flag = $signed(A >= B));
        BLTU : Result = (Flag = (A < B));
        BGEU : Result = (Flag = (A >= B));
    endcase
end
endmodule
