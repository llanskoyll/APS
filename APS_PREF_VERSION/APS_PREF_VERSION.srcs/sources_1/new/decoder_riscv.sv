`timescale 1ns / 1ps


package ALUOpsDecode;
    enum logic[4:0] {
    ADD = 5'b00000,
    SUB = 5'b01000,
    SLL = 5'b00001,
    SLT = 5'b00010,
    SLTU = 5'b00011,
    XXOR = 5'b00100,
    SRL = 5'b00101,
    SRA = 5'b01101,
    OOR = 5'b00110,
    AAND = 5'b00111,
    BEQ = 5'b11000,
    BNE = 5'b11001,
    BLT = 5'b11100,
    BGE = 5'b11101,
    BLTU = 5'b11110,
    BGEU = 5'b11111
} Ops;
endpackage

module decoder_riscv(
  input       [31:0]  fetched_instr_i, // Инструкция для декодирования, считанная из памяти инструкций
  output  reg [1:0]   ex_op_a_sel_o, // Управляющий сигнал мультиплексора для выбора первого операнда АЛУ
  output  reg [2:0]   ex_op_b_sel_o, // Управляющий сигнал мультиплексора для выбора второго операнда АЛУ
  output  reg [4:0]   alu_op_o, // Операция АЛУ
  output  reg         mem_req_o,// Запрос на доступ к памяти (часть интерфейса памяти)
  output  reg         mem_we_o, // Сигнал разрешения записи в память, «write enable» (при равенстве нулю происходит чтение)
  output  reg [2:0]   mem_size_o, // Управляющий сигнал для выбора размера слова при чтении-записи в память (часть интерфейса памяти)
  output  reg         gpr_we_a_o, // Сигнал разрешения записи в регистровый файл
  output  reg         wb_src_sel_o,// Управляющий сигнал мультиплексора для выбора данных, записываемых в регистровый файл
  output  reg         illegal_instr_o,// Сигнал о некорректной инструкции (на схеме не отмечен)
  output  reg         branch_o, //Сигнал об инструкции условного перехода
  output  reg         jal_o, // Сигнал об инструкции безусловного перехода jal
  output  reg         jalr_o // Сигнал об инструкции безусловного перехода jalr
  );

import ALUOpsDecode::*;

logic [6:0] opcode;
assign opcode = fetched_instr_i[6:0];

logic [2:0] func3;
assign func3 = fetched_instr_i[14:12];

logic [4:0] rs1;
assign rs1 = fetched_instr_i[19:15];

logic [4:0] rs2;
assign rs2 = fetched_instr_i[24:20];

logic [6:0] func7;
assign func7 = fetched_instr_i[31:25];

always_comb begin
    case(opcode)
        7'b0001111: begin
            illegal_instr_o <= 0;
            mem_req_o <= 0;
            gpr_we_a_o <= 0;
        end

        7'b0110011: begin   // R options
               case(func7)
                   7'h00:
                        case(func3)
                              3'h0: alu_op_o      <= ADD;
                              3'h4: alu_op_o      <= XXOR;
                              3'h6: alu_op_o      <= OOR;  
                              3'h7: alu_op_o      <= AAND;    
                              3'h1: alu_op_o      <= SLL;
                              3'h5: alu_op_o      <= SRL;
                              3'h2: alu_op_o      <= SLT;
                              3'h3: alu_op_o      <= SLTU;
                              default: illegal_instr_o <= 1;
                        endcase
                   7'h20:
                        case(func3)
                              3'h0: alu_op_o      <= SUB;
                              3'h5: alu_op_o      <= SRA;
                              default: illegal_instr_o <= 1;
                        endcase
                   default: illegal_instr_o <= 1;
               endcase
               gpr_we_a_o      <= 1;
               ex_op_a_sel_o   <= 0;
               ex_op_b_sel_o   <= 0;
               mem_we_o        <= 0;
               mem_req_o       <= 0;
               mem_size_o      <= 0;
               wb_src_sel_o    <= 0;
               branch_o        <= 0;
               jal_o           <= 0;
               jalr_o          <= 0;
          end
          7'b0010011: begin // I options
                case(func7)
                   7'h00:
                        case(func3)
                              3'h1: alu_op_o      <= SLL;
                              3'h5: alu_op_o      <= SRL;
                              default: illegal_instr_o <= 1;
                        endcase
                        
                   7'h20:           
                        case(func3)
                              3'h5: alu_op_o      <= SRA;
                              default: illegal_instr_o <= 1;
                        endcase
                   
                   default:
                        case(func3)
                              3'h0: alu_op_o      <= ADD;  
                              3'h4: alu_op_o      <= XXOR;
                              3'h6: alu_op_o      <= OOR;
                              3'h7: alu_op_o      <= AAND;
                              3'h2: alu_op_o      <= SLT;
                              3'h3: alu_op_o      <= SLTU;
                              default: illegal_instr_o <= 1;
                        endcase
                        
               endcase  
               gpr_we_a_o      <= 1;
               ex_op_a_sel_o   <= 0;
               ex_op_b_sel_o   <= 1;
               mem_we_o        <= 0;
               mem_req_o       <= 0;
               mem_size_o      <= 0;
               wb_src_sel_o    <= 0;
               branch_o        <= 0;
               jal_o           <= 0;
               jalr_o          <= 0;
          end
          7'b0000011: begin  // Load from memory
                case(func3)
                   7'h00: mem_size_o   <= 3'd0;
                   7'h01: mem_size_o   <= 3'd1;
                   7'h02: mem_size_o   <= 3'd2;
                   7'h04: mem_size_o   <= 3'd4;
                   7'h05: mem_size_o   <= 3'd5;
                   default: illegal_instr_o <= 1;
                endcase
               gpr_we_a_o      <= 1;
               ex_op_a_sel_o   <= 0;
               ex_op_b_sel_o   <= 1;
               alu_op_o        <= ADD;
               mem_we_o        <= 0;
               mem_req_o       <= 1;
               wb_src_sel_o    <= 1;
               branch_o        <= 0;
               jal_o           <= 0;
               jalr_o          <= 0;
          end
          7'b0100011: begin // Save to memory
                case(func3)
                   7'h00: mem_size_o   <= 3'd0;
                   7'h01: mem_size_o   <= 3'd1;
                   7'h02: mem_size_o   <= 3'd2;
                   default: illegal_instr_o <= 1;
                endcase
               gpr_we_a_o      <= 0;
               ex_op_a_sel_o   <= 0;
               ex_op_b_sel_o   <= 3;
               alu_op_o        <= ADD;
               mem_we_o        <= 1;
               mem_req_o       <= 1;
               wb_src_sel_o    <= 0;
               branch_o        <= 0;
               jal_o           <= 0;
               jalr_o          <= 0;
          end
           7'b1100011: begin  // Branches (B-operations)
                case(func3)
                   7'h00: alu_op_o      <= BEQ;
                   7'h01: alu_op_o      <= BNE;
                   7'h04: alu_op_o      <= BLT;
                   7'h05: alu_op_o      <= BGE;
                   7'h06: alu_op_o      <= BLTU;
                   7'h07: alu_op_o      <= BGEU;
                   default: illegal_instr_o <= 1;
                endcase
               gpr_we_a_o      <= 0;
               ex_op_a_sel_o   <= 0;
               ex_op_b_sel_o   <= 0;
               mem_we_o        <= 0;
               mem_req_o       <= 0;
               mem_size_o      <= 0;
               wb_src_sel_o    <= 0;
               branch_o        <= 1;
               jal_o           <= 0;
               jalr_o          <= 0;
          end
          7'b1101111: begin  // Jump and Link
               gpr_we_a_o      <= 1;
               ex_op_a_sel_o   <= 1;
               ex_op_b_sel_o   <= 4;
               alu_op_o        <= ADD;
               mem_we_o        <= 0;
               mem_req_o       <= 0;
               mem_size_o      <= 0;
               wb_src_sel_o    <= 0;
               branch_o        <= 0;
               jal_o           <= 1;
               jalr_o          <= 0;
               illegal_instr_o <= 0;
          end
          7'b1100111: begin                         // Jump and Link Register       
               case(func3)
                   3'h00:   illegal_instr_o <= 0;
                   default: illegal_instr_o <= 1;
                endcase
               gpr_we_a_o      <= 1;
               ex_op_a_sel_o   <= 1;
               ex_op_b_sel_o   <= 4;
               alu_op_o        <= ADD;
               mem_we_o        <= 0;
               mem_req_o       <= 0;
               mem_size_o      <= 0;
               wb_src_sel_o    <= 0;
               branch_o        <= 0;
               jal_o           <= 0;
               jalr_o          <= 1;
          end
          7'b0110111: begin // LUI - operation
               gpr_we_a_o      <= 1;
               ex_op_a_sel_o   <= 2;
               ex_op_b_sel_o   <= 2;
               alu_op_o        <= ADD;
               mem_we_o        <= 0;
               mem_req_o       <= 0;
               mem_size_o      <= 0;
               wb_src_sel_o    <= 0;
               branch_o        <= 0;
               jal_o           <= 0;
               jalr_o          <= 0;
               illegal_instr_o <= 0;
          end
          7'b0010111: begin  // AUIPC
               gpr_we_a_o      <= 1;
               ex_op_a_sel_o   <= 1;
               ex_op_b_sel_o   <= 2;
               alu_op_o        <= ADD;
               mem_we_o        <= 0;
               mem_req_o       <= 0;
               mem_size_o      <= 0;
               wb_src_sel_o    <= 0;
               branch_o        <= 0;
               jal_o           <= 0;
               jalr_o          <= 0;
               illegal_instr_o <= 0;
          end
          7'b1110011: begin  // no OPS
               gpr_we_a_o      <= 0;
               ex_op_a_sel_o   <= 0;
               ex_op_b_sel_o   <= 0;
               alu_op_o        <= ADD;
               mem_we_o        <= 0;
               mem_req_o       <= 0;
               mem_size_o      <= 0;
               wb_src_sel_o    <= 0;
               branch_o        <= 0;
               jal_o           <= 0;
               jalr_o          <= 0;
               illegal_instr_o <= 0;
          end
       default: illegal_instr_o <= 1;   
    endcase
end
endmodule
