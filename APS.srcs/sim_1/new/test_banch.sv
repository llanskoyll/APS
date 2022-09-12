`timescale 1ns / 1ps

module test_banch #(int N = 32)();
logic [N-1:0] A;
logic [N-1:0] B;
logic [4:0] ALUControl;
logic Flag;
logic [N-1:0] Result;

import ALUOps::*;

ALU alu(
    .A(A),
    .B(B),
    .ALUControl(ALUControl),
    .Flag(Flag),
    .Result(Result));
    
task alu_oper_task(
    input integer A_t,
    input integer B_t,
    input integer oper_tb,
    input integer Wait
    );
  begin
    A = A_t;
    B = B_t;
    ALUControl = oper_tb;
    #10
    if(Wait == Result) 
        $display("Good, wait %d and result %d", Wait, Result);
    else 
        $display("Wait %d, but Result %d", Wait, Result);
  end
endtask

initial begin 
      alu_oper_task(1,2,SUM,3);
      #10
      alu_oper_task(3,1,SUB,2);
      #10
      alu_oper_task(4,2,SUB,2);
      #10 
      alu_oper_task(4,2,SUB,1);
end

endmodule
