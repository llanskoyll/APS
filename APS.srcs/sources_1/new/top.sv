`timescale 1ns / 1ps

module segment7 (input logic [3:0] in, output logic [6:0] out);
    always @* begin
        case(in[3:0])
            4'd0: out <= 7'b0001000;
            4'd1: out <= 7'b1011011;            
        endcase
    end
endmodule

module top(
    input logic [3:0] SW,
    output logic [7:0] AN,
    output logic CA,
    output logic CB,
    output logic CF,
    output logic CG,
    output logic CE,
    output logic CD,
    output logic CC
    );
    
    logic [6:0] c;
    assign c = {CA,CB,CF,CG,CC,CE,CD};
    assign AN[0] = 0;
    assign AN[7:1] = {7{1'b1}};
    segment7 s0(.in(SW), .out(c));
    
endmodule

