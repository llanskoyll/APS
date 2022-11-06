`timescale 1ns / 1ps

module test_banch_reg_file;

 parameter int N = 32;
logic           clk;
logic [4:0]     A1;
logic [4:0]     A2;
logic [4:0]     A3;
logic [N-1:0]   WD3;
logic           we;
logic [N-1:0]   RD1;
logic [N-1:0]   RD2;

parameter PERIOD = 10;

//initial begin
//    clk = 1'b0;
//end

initial forever begin
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2) clk = 1'b0;
end

REG_FILE#(.N(32)) dut(
    .clk(clk),
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .WD3(WD3),
    .we(we),
    .RD1(RD1),
    .RD2(RD2));

//    input integer clk_,
//    input integer A1_,
//    input integer A2_,
//    input integer A3_,
//    input integer WD3_,
//    input integer we_,
//    output integer RD1_,
//    output integer RD2_,
//    input integer rd_,
//    input integer Wait_arg    

task reg_file_task_read_A1(
    input integer A1_,
    output integer RD1_
    );
  begin
    A1 = A1_;
    #5;
    RD1_ = RD1;
  end
endtask

task reg_file_task_read_A2(
    input integer A2_,
    output integer RD2_
    );
  begin
    A2 = A2_;
    #5;
    RD2_ = RD2;
  end
endtask

task reg_file_task_write(
    input integer A3_,
    input integer WD3_
    );
  begin
    A3 = A3_;
    WD3 = WD3_;
    we = 1;
    @(posedge clk); #1;
    we = 0;
  end
endtask


initial begin 
    int data;
    int data_check;
    logic WD3_task;
    for(integer i = 0; i < 32; i++) begin
        @(posedge clk); #1;
        data = $urandom();
       @(posedge clk); #1;
        reg_file_task_write(i, data);
       
       @(posedge clk); #1;
       @(posedge clk); #1;
        reg_file_task_read_A1(i, data_check);
        reg_file_task_read_A2(i, data_check);
        
        if(RD1 == data)
            $display("Good A1 %h", data_check);
        else 
            $display("Bad A1 %h", data_check);
//       @(posedge clk); #1;
       
        if(RD2 == data)
            $display("Good A2");
        else 
            $display("Bad A2");
    end
end

endmodule
