`timescale 1ns / 1ps


module display(
input               en,
input [3:0]         digit,
output logic [6:0]  device
    );
    
always_comb begin
    if(en) begin
       case(digit)
       4'h0: device <= 7'b1000000;
       4'h1: device <= 7'b1111001;
       endcase
    end
endmodule
