`timescale 1ns / 1ps

module instr_memory #(
    int WIDTH = 32,
    int DEPTH = 256
)(
    input logic  [WIDTH-1:0] A,
    output logic [WIDTH-1:0] D
);
    logic [7:0] wordAdrr;
    assign      wordAdrr = A >> 2;

    logic [WIDTH-1:0] ROM [0:DEPTH-1];
    
    initial
        $readmemh("irom.mem",ROM,0,DEPTH-1);
        
    assign D = ROM[wordAdrr];
    
endmodule
