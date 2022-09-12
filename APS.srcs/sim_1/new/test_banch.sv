`timescale 1ns / 1ps

module test_banch #(int N = 32)();
logic [N-1:0] A;
logic [N-1:0] B;
logic [4:0] ALUControl;
logic Flag;
logic [N-1:0] Result;

initial begin 
    A = 32'd1;
    B = 32'd1;
    ALUControl = 5'd0;
    Result = 32'd0;
end

ALU alu(
    .A(A),
    .B(B),
    .ALUControl(ALUControl),
    .Flag(Flag),
    .Result(Result));
    
endmodule
