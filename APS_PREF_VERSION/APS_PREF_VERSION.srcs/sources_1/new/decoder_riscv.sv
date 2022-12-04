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

module decoder_riscv (
  input       [31:0]  fetched_instr_i,
  output  reg [1:0]   ex_op_a_sel_o,      // выходы сделаны регистрами,
  output  reg [2:0]   ex_op_b_sel_o,      // потому что всё устройство 
  output  reg [4:0]   alu_op_o,           // будет комбинационной схемой
  output  reg         mem_req_o,          // описанной внутри блока 
  output  reg         mem_we_o,           // always, а слева от знака равно
  output  reg [2:0]   mem_size_o,         // внутри always должны стоять
  output  reg         gpr_we_a_o,         // всегда только регистры,
  output  reg         wb_src_sel_o,       // даже если в итоге схема
  output  reg         illegal_instr_o,    // превратится в
  output  reg         branch_o,           // комбинационно устройство
  output  reg         jal_o,              // без памяти
  output  reg         jalr_o              // 
);

  import ALUOpsDecode::*;

  logic [6:0]  opcode;
  assign opcode = fetched_instr_i[6:0];
  
  logic [2:0]  func3;
  assign func3  = fetched_instr_i[14:12];
  
  logic [4:0]  rs1;
  assign rs1    = fetched_instr_i[19:15];
  
  logic [4:0]  rs2;
  assign rs2    = fetched_instr_i[24:20];
  
  logic [6:0]  func7;
  assign func7  = fetched_instr_i[31:25];

  
  always_comb begin
       illegal_instr_o <= 0;
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
    
    case(opcode)
      7'b0001111: begin
              
                    illegal_instr_o <= 0;
                    mem_req_o <= 0;
                gpr_we_a_o <= 0;
                
           end
/////////////////////////////////////////////////////////////////////////////////////////       
          7'b0110011: begin                            // R options
               case(func7)
                   7'h00:
                        case(func3)
                              3'h0: begin
                                alu_op_o      <= ADD;
                                illegal_instr_o <= 0;
                              end
                                    
                              3'h4: begin
                                alu_op_o      <= XXOR;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h6: begin
                                alu_op_o      <= OOR;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h7: begin
                                alu_op_o      <= AAND;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h1: begin
                                alu_op_o      <= SLL;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h5: begin
                                alu_op_o      <= SRL;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h2: begin
                                alu_op_o      <= SLT;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h3: begin
                                alu_op_o      <= SLTU;
                                illegal_instr_o <= 0;
                                end
                              
                              default: illegal_instr_o <= 1;
                        endcase
                   
                   7'h20:
                        case(func3)
                              3'h0: begin
                                alu_op_o      <= SUB;
                                illegal_instr_o <= 0;
                                end
                                
                              3'h5: begin
                                alu_op_o      <= SRA;
                                illegal_instr_o <= 0;
                                end
                                
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
//////////////////////////////////////////////////////////////////////////////////          
 
 
 //////////////////////////////////////////////////////////////////////////////////         
          7'b0010011: begin                         // I options
                case(func7)
                   7'h00:
                        case(func3)
                              3'h1: begin
                                alu_op_o      <= SLL;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h5: begin
                                alu_op_o      <= SRL;
                                illegal_instr_o <= 0;
                                end
                               
                              3'h0: begin
                                alu_op_o      <= ADD;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h4: begin
                                alu_op_o      <= XXOR;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h6: begin
                                alu_op_o      <= OOR;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h7: begin
                                alu_op_o      <= AAND;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h2: begin
                                alu_op_o      <= SLT;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h3: begin
                                alu_op_o      <= SLTU;
                                illegal_instr_o <= 0;
                                end
                              
                              default: illegal_instr_o <= 1;
                        endcase
                        
                   7'h20:           
                        case(func3)
                              3'h5: begin
                                alu_op_o      <= SRA;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h0: begin
                                alu_op_o      <= ADD;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h4: begin
                                alu_op_o      <= XXOR;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h6: begin
                                alu_op_o      <= OOR;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h7: begin
                                alu_op_o      <= AAND;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h2: begin
                                alu_op_o      <= SLT;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h3: begin
                                alu_op_o      <= SLTU;
                                illegal_instr_o <= 0;
                                end
                              
                              default: illegal_instr_o <= 1;
                        endcase
                   
                   default:
                        case(func3)
                              3'h0: begin
                                alu_op_o      <= ADD;
                                illegal_instr_o <= 0;
                                end
                                    
                              3'h4: begin
                                alu_op_o      <= XXOR;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h6: begin
                                alu_op_o      <= OOR;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h7: begin
                                alu_op_o      <= AAND;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h2: begin
                                alu_op_o      <= SLT;
                                illegal_instr_o <= 0;
                                end
                              
                              3'h3: begin
                                alu_op_o      <= SLTU;
                                illegal_instr_o <= 0;
                                end
                              
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
/////////////////////////////////////////////////////////////////////////////////// 

///////////////////////////////////////////////////////////////////////////////////
          7'b0000011: begin                         // Load from memory
                case(func3)
                   7'h00: begin
                    mem_size_o   <= 3'd0;
                    illegal_instr_o <= 0;
                    end
                   7'h01: begin
                    mem_size_o   <= 3'd1;
                    illegal_instr_o <= 0;
                    end
                   7'h02: begin
                    mem_size_o   <= 3'd2;
                    illegal_instr_o <= 0;
                    end
                   7'h04: begin
                    mem_size_o   <= 3'd4;
                    illegal_instr_o <= 0;
                    end
                   7'h05: begin
                    mem_size_o   <= 3'd5;
                    illegal_instr_o <= 0;
                    end
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
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
          7'b0100011: begin                         // Save to memory
                case(func3)
                   7'h00: begin
                    mem_size_o   <= 3'd0;
                    illegal_instr_o <= 0;
                    end
                   7'h01: begin
                    mem_size_o   <= 3'd1;
                    illegal_instr_o <= 0;
                    end
                   7'h02: begin
                    mem_size_o   <= 3'd2;
                    illegal_instr_o <= 0;
                    end
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
/////////////////////////////////////////////////////////////////////////////////////////// 

///////////////////////////////////////////////////////////////////////////////////
          7'b1100011: begin                         // Branches (B-operations)
                case(func3)
                   7'h00: begin
                    alu_op_o      <= BEQ;
                    illegal_instr_o <= 0;
                    end
                   7'h01: begin
                    alu_op_o      <= BNE;
                    illegal_instr_o <= 0;
                    end
                   7'h04: begin
                    alu_op_o      <= BLT;
                    illegal_instr_o <= 0;
                    end
                   7'h05: begin
                    alu_op_o      <= BGE;
                    illegal_instr_o <= 0;
                    end
                   7'h06: begin
                    alu_op_o      <= BLTU;
                    illegal_instr_o <= 0;
                    end
                   7'h07: begin
                    alu_op_o      <= BGEU;
                    illegal_instr_o <= 0;
                    end
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
///////////////////////////////////////////////////////////////////////////////////////////  

///////////////////////////////////////////////////////////////////////////////////
          7'b1101111: begin                         // Jump and Link
               
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
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
          7'b1100111: begin                         // Jump and Link Register
               
               case(func3)
                   3'h00: begin
                            illegal_instr_o <= 0;
                            gpr_we_a_o      <= 1;
                            ex_op_a_sel_o   <= 1;
                            ex_op_b_sel_o   <= 4;
                            alu_op_o        <= ADD;
                            mem_we_o        <= 1;
                            mem_req_o       <= 0;
                            mem_size_o      <= 0;
                            wb_src_sel_o    <= 0;
                            branch_o        <= 0;
                            jal_o           <= 0;
                            jalr_o          <= 1;
                           end
                   default: begin
                            illegal_instr_o <= 1;
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
                   end
                endcase
              
     
          end
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
          7'b0110111: begin                         // LUI - operation
               
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
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
          7'b0010111: begin                         // AUIPC
               
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
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
          7'b1110011: begin                         // no OPS
               
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
///////////////////////////////////////////////////////////////////////////////////////////  

       default: illegal_instr_o <= 1;   
       endcase
       
  end


endmodule