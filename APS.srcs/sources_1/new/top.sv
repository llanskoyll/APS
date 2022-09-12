`timescale 1ns / 1ps

module top(
    input       clk,
    input       a,
    input       b,
    output reg  q   );

wire c;

assign c = a ^ b;

always @(posedge clk) begin
    q <= c;
end
endmodule
