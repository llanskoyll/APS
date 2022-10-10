`timescale 1ns / 1ps

module processor(
    input           clk,
    input           rst,
    input [31:0]    IN,
    output [31:0]   OUT
    );
    
    logic [31:0]    instruct;
    logic [31:0]    writeData;
    logic           ALUFlag;
    logic [31:0]    ALUResult;   
    logic [7:0]     toSummator;
    logic [7:0]     PC;
    logic [31:0]    oper1;
    logic [31:0]    oper2;
    
    REG_FILE reg_file(
    .clk(clk),
    .A1(instruct[22:18]),
    .A2(instruct[17:13]),
    .A3(instruct[4:0]),
    .WD3(writeData),
    .we(instruct[29] | instruct[28]),
    .RD1(oper1),
    .RD2(oper2)    
    );
    
    ALU alu(
    .A(oper1),
    .B(oper2),
    .ALUControl(instruct[27:23]),
    .Flag(ALUFlag),
    .Result(ALUResult)
    );  
    
    irom memory(
        .clk(clk),
        .A(PC),
        .D(instruct)
    );
    
    always_comb begin
        case(instruct[29:28])
            2'd1: writeData <= IN;
            2'd2: writeData <= {{9{instruct[27]}},instruct[27:5]};
            2'd3: writeData <=  ALUResult;
            default: writeData <= 0;
        endcase
    end
    
    always_comb begin
        case((instruct[30] & ALUFlag) | instruct[31])
            1'd1: toSummator <= instruct[12:5];
            1'd0: toSummator <= 8'd1;
        endcase
    end
    
    always_ff @(posedge clk) begin
        if(!rst) 
           PC <= 8'b0;
        else 
           PC <= toSummator + PC;
    end
    
    assign OUT = oper1;
endmodule
