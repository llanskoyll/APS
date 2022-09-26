`timescale 1ns / 1ps

module irom #(
    int WIDTH = 32,
    int DEPTH = 64
) (
    input logic [$clog2(DEPTH) - 1:0] A,
    output logic [WIDTH-1:0] D
);
    logic [WIDTH-1:0] ROM [0:DEPTH-1];
    assign D = ROM[A];
    
    initial 
        $readmemb("irom.mem", ROM, 0, DEPTH-1);
endmodule
