`timescale 1ns / 1ps

module DataMemory #(
    int WIDTH = 32,
    int DEPTH = 256
)(
    input logic            clk,
    input logic            WE,
    input logic            mem_req_o,
    input logic [2:0]      mem_size_o,
    
    input logic [WIDTH-1:0]  A,
    input logic [WIDTH-1:0]  D,
    
    output logic [WIDTH-1:0] RD    
);

logic [WIDTH-1:0] ROM [0:DEPTH-1];

always @(posedge clk) begin
    if(mem_req_o == 1) begin
        if(WE == 1)
            if(A >= 32'h90000000 && A <= 32'h90003FC) 
                ROM[A[11:0] >> 2] = D;
                
        else
            if(A >= 32'h90000000 && A <= 32'h90003FC) 
                 RD = ROM[A[11:0] >> 2];
            else 
                 RD = 0; 
    end
end

endmodule