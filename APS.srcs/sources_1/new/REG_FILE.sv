`timescale 1ns / 1ps

module REG_FILE#(parameter N=32)(
    input            clk,
    input [4:0]      A1,
    input [4:0]      A2,
    input [4:0]      A3,
    input [N-1:0]    WD3,
    input            we,
    output [N-1:0]   RD1,
    output [N-1:0]   RD2   
    );
    
    reg[N-1:0] RAM [0:N-1];
    
    assign RD1 = (A1 != 0) ? RAM[A1] : 32'b0;
    assign RD2 = (A2 != 0) ? RAM[A2] : 32'b0;
    
    always_ff @(posedge clk) begin
        if(we) RAM[A3] <= WD3;
    end
endmodule
