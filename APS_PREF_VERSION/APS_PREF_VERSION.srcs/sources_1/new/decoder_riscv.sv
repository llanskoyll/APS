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
    enum logic[6:0] {
    LOAD_OPCODE =  7'b0000011,
    MISC_MEM_OPCODE = 7'b0001111,    
    OP_IMM_OPCODE = 7'b0010011,
    AUIPC_OPCODE = 7'b0010111,
    STORE_OPCODE = 7'b0100011,
    OP_OPCODE = 7'b0110011,
    LUI_OPCODE = 7'b0110111,
    BRANCH_OPCODE = 7'b1100011,   
    JALR_OPCODE = 7'b1100111, 
    JAL_OPCODE = 7'b1101111,
    SYSTEM_OPCODE = 7'b1110011
    } OpcodeS;
endpackage


module decoder_riscv(
  input       [31:0]  fetched_instr_i, // Инструкция для декодирования, считанная из памяти инструкций
  output  logic [1:0]   ex_op_a_sel_o, // Управляющий сигнал мультиплексора для выбора первого операнда АЛУ
  output  logic [2:0]   ex_op_b_sel_o, // Управляющий сигнал мультиплексора для выбора второго операнда АЛУ
  output  logic [4:0]   alu_op_o, // Операция АЛУ
  output  logic         mem_req_o,// Запрос на доступ к памяти (часть интерфейса памяти)
  output  logic         mem_we_o, // Сигнал разрешения записи в память, «write enable» (при равенстве нулю происходит чтение)
  output  logic [2:0]   mem_size_o, // Управляющий сигнал для выбора размера слова при чтении-записи в память (часть интерфейса памяти)
  output  logic         gpr_we_a_o, // Сигнал разрешения записи в регистровый файл
  output  logic         wb_src_sel_o,// Управляющий сигнал мультиплексора для выбора данных, записываемых в регистровый файл
  output  logic         illegal_instr_o,// Сигнал о некорректной инструкции (на схеме не отмечен)
  output  logic         branch_o, //Сигнал об инструкции условного перехода
  output  logic         jal_o, // Сигнал об инструкции безусловного перехода jal
  output  logic         jalr_o // Сигнал об инструкции безусловного перехода jalr
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
         MISC_MEM_OPCODE : begin
            illegal_instr_o <= 0;
            mem_req_o <= 0;
            gpr_we_a_o <= 0;
        end

         OP_OPCODE : begin   // R options
               case(func7)
                   7'h00:
                        case(func3)
                              3'h0: begin alu_op_o      <= ADD;  illegal_instr_o <= 0; end
                              3'h4: begin alu_op_o      <= XXOR; illegal_instr_o <= 0; end
                              3'h6: begin alu_op_o      <= OOR;  illegal_instr_o <= 0; end
                              3'h7: begin alu_op_o      <= AAND; illegal_instr_o <= 0; end   
                              3'h1: begin alu_op_o      <= SLL;  illegal_instr_o <= 0; end
                              3'h5: begin alu_op_o      <= SRL;  illegal_instr_o <= 0; end
                              3'h2: begin alu_op_o      <= SLT;  illegal_instr_o <= 0; end
                              3'h3: begin alu_op_o      <= SLTU; illegal_instr_o <= 0; end
                              default: illegal_instr_o <= 1;
                        endcase
                   7'h20:
                        case(func3)
                              3'h0: begin alu_op_o      <= SUB; illegal_instr_o <= 0; end 
                              3'h5: begin alu_op_o      <= SRA; illegal_instr_o <= 0; end 
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
          OP_IMM_OPCODE: begin // I options
                case(func7)
                   7'h00:
                        case(func3)
                              3'h1: begin alu_op_o      <= SLL; illegal_instr_o <= 0; end
                              3'h5: begin alu_op_o      <= SRL; illegal_instr_o <= 0; end
                              default: illegal_instr_o <= 1;
                        endcase
                        
                   7'h20:           
                        case(func3)
                              3'h5: alu_op_o      <= SRA;
                              default: illegal_instr_o <= 1;
                        endcase
                   
                   default:
                        case(func3)
                              3'h0: begin alu_op_o      <= ADD;  illegal_instr_o <= 0; end
                              3'h4: begin alu_op_o      <= XXOR; illegal_instr_o <= 0; end
                              3'h6: begin alu_op_o      <= OOR;  illegal_instr_o <= 0; end
                              3'h7: begin alu_op_o      <= AAND; illegal_instr_o <= 0; end
                              3'h2: begin alu_op_o      <= SLT;  illegal_instr_o <= 0; end
                              3'h3: begin alu_op_o      <= SLTU; illegal_instr_o <= 0; end
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
          LOAD_OPCODE: begin  // Load from memory
                case(func3)
                   3'h00: begin mem_size_o   <= 3'd0; illegal_instr_o <= 0; end// byte
                   3'h01: begin mem_size_o   <= 3'd1; illegal_instr_o <= 0; end // // hal
                   3'h02: begin mem_size_o   <= 3'd2; illegal_instr_o <= 0; end// word
                   3'h04: begin mem_size_o   <= 3'd4; illegal_instr_o <= 0; end// unsigned byte
                   3'h05: begin mem_size_o   <= 3'd5; illegal_instr_o <= 0; end// unsigned half
                   default: begin illegal_instr_o <= 1; mem_size_o <= 3'b0; end
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
          STORE_OPCODE: begin // Save to memory
                case(func3)
                   3'h00: begin mem_size_o   <= 3'd0; illegal_instr_o <= 0; end
                   3'h01: begin mem_size_o   <= 3'd1; illegal_instr_o <= 0; end
                   3'h02: begin mem_size_o   <= 3'd2; illegal_instr_o <= 0; end
                   default: begin mem_size_o <= 0; illegal_instr_o <= 1;end
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
           BRANCH_OPCODE: begin  // Branches (B-operations)
                case(func3)
                   3'h00: begin alu_op_o      <= BEQ;  illegal_instr_o <= 0; end
                   3'h01: begin alu_op_o      <= BNE;  illegal_instr_o <= 0; end
                   3'h04: begin alu_op_o      <= BLT;  illegal_instr_o <= 0; end
                   3'h05: begin alu_op_o      <= BGE;  illegal_instr_o <= 0; end
                   3'h06: begin alu_op_o      <= BLTU; illegal_instr_o <= 0; end
                   3'h07: begin alu_op_o      <= BGEU; illegal_instr_o <= 0; end
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
          JAL_OPCODE: begin  // Jump and Link
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
          JALR_OPCODE: begin                         // Jump and Link Register       
               case(func3)
                   3'h00: illegal_instr_o <= 0;
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
          LUI_OPCODE: begin // LUI - operation
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
          AUIPC_OPCODE: begin  // AUIPC
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
          SYSTEM_OPCODE: begin  // no OPS
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
