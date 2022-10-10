`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2022 16:11:19
// Design Name: 
// Module Name: process_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module process_bench();
logic clk;
logic rst;
logic [31:0] out;
logic [31:0] in;

parameter PERIOD = 10;
initial forever begin
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2) clk = 1'b0;
end


processor dut(
    .clk(clk),
    .rst(rst),
    .OUT(out),
    .IN(in)
);


initial begin
    in = 0;
    rst = 0;
    #100;
    rst = 1;
    #300
    rst = 0;
end





















endmodule
