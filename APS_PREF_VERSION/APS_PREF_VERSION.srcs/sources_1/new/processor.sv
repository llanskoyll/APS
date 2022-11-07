`timescale 1ns / 1ps

module processor(
    input               clk,
    input               rst
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
    .we((instruct[29] | instruct[28]) & rst),
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
    
    logic [1:0]   ex_op_a_sel;
    logic [2:0]   ex_op_b_sel; // Управляющий сигнал мультиплексора для выбора второго операнда АЛУ
    logic [4:0]   alu_op; // Операция АЛУ
    logic         mem_req;// Запрос на доступ к памяти (часть интерфейса памяти)
    logic         mem_we; // Сигнал разрешения записи в память, «write enable» (при равенстве нулю происходит чтение)
    logic [2:0]   mem_size; // Управляющий сигнал для выбора размера слова при чтении-записи в память (часть интерфейса памяти)
    logic         gpr_we_a; // Сигнал разрешения записи в регистровый файл
    logic         wb_src_sel;// Управляющий сигнал мультиплексора для выбора данных, записываемых в регистровый файл
    logic         illegal_instr;// Сигнал о некорректной инструкции (на схеме не отмечен)
    logic         branch; //Сигнал об инструкции условного перехода
    logic         jal; // Сигнал об инструкции безусловного перехода jal
    logic         jalr; // Сигнал об инструкции безусловного перехода jalr
    
    decoder_riscv decoder_risc(
        .fetched_instr_i(instruct),
        .ex_op_a_sel_o(ex_op_a_sel),
        .ex_op_b_sel_o(ex_op_b_sel),
        .alu_op_o(alu_op),
        .mem_req_o(mem_req),
        .mem_we_o(mem_we),
        .mem_size_o(mem_size),
        .gpr_we_a_o(gpr_we_a),
        .wb_src_sel_o(wb_src_sel),
        .illegal_instr_o(illegal_instr),
        .branch_o(branch),
        .jal_o(jal),
        .jalr_o(jalr)
    );
    always_comb begin
        case(instruct[29:28])
            2'd1: writeData <= IN;
            2'd2: writeData <= {{24{instruct[12]}},instruct[12:5]};
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
