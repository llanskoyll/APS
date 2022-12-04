`timescale 1ns / 1ps

package ALUOps;
    enum logic[4:0] {
        SUM = 5'b0_0_000,
        SUB = 5'b0_1_000,
        SLL = 5'b0_0_001,
        SLT = 5'b0_0_010,
        SLTU = 5'b0_0_011,
        XOR_ = 5'b0_0_100,
        SRL = 5'b0_0_101,
        SRA = 5'b0_1_101,
        OR_ = 5'b0_0_110,
        AND_ = 5'b0_0_111,
        BEQ = 5'b1_1_000,
        BNE = 5'b1_1_001,
        BLT = 5'b1_1_100,
        BGE = 5'b1_1_101,
        BLTU = 5'b1_1_110,
        BGEU = 5'b1_1_111
    } ALOop;  
endpackage
module ALU #(parameter N=32)(
       input logic [N-1:0] A,
       input logic [N-1:0] B,
       input logic [4:0] ALUControl,
       output logic Flag,
       output logic [N-1:0] Result
    );
     
    import ALUOps::*;
    
always_comb begin : ALU
    case(ALUControl[4:0])
        SUM : begin
        Result = $signed(A) + $signed(B);
        Flag = 0;
        end
        SUB : begin 
        Result = $signed(A) - $signed(B);
        Flag = 0;
        end
        SLL : begin 
        Result = A << B;
        Flag = 0;
        end
        SLT : begin 
        Result = $signed(A<B);
        Flag = 0;
        end
        SLTU : begin
        Result = A < B;
        Flag = 0;
        end
        XOR_ : begin
        Result = A ^ B;
        Flag = 0;
        end
        SRL : begin 
        Result = A >> B;
        Flag = 0;
        end
        SRA : begin 
        Result = $signed(A) >>> B;
        Flag = 0;
        end
        OR_ : begin
        Result = A | B;
        Flag = 0;
        end
        AND_ : begin
        Result = A & B;
        Flag = 0;
        end
        BEQ : begin
        Result = 0; 
        Flag = (A == B);
        end
        BNE : begin 
        Flag = ( A != B);
        Result = 0;
        end
        BLT : begin 
        Flag = $signed(A<B);
        Result = 0;
        end
        BGE : begin 
        Flag = $signed(A >= B);
        Result = 0;
        end
        BLTU : begin 
        Flag = (A < B);
        Result = 0;
        end
        BGEU : begin 
        Result = (Flag = (A >= B));
        Result = 0;
        end
    endcase
end
endmodule
