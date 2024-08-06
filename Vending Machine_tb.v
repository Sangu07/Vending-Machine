`timescale 1ns / 1ps


module Vending_Machine_tb( );
reg clk = 1;
reg reset;
reg [1:0] x;
wire product, change;

Vending_Machine VM1(.clk(clk), .reset(reset), .x(x), .product(product), .change(change));

always #5 clk = ~clk;

initial 
    begin
        reset = 1; x = 2'b00 ; #10;
        reset = 0; x = 2'b01 ; #10;
        reset = 0; x = 2'b10 ; #10;
        reset = 0; x = 2'b10 ; #10;
        reset = 0; x = 2'b10 ; #10;
        reset = 0; x = 2'b01 ; #10;
        reset = 0; x = 2'b01 ; #10;
        reset = 0; x = 2'b10 ; #10;
        reset = 0; x = 2'b00 ; #10;
        reset = 0; x = 2'b10 ; #10;
        reset = 0; x = 2'b10 ; #10;
        reset = 0; x = 2'b01 ; #10;
        reset = 0; x = 2'b01 ; #10;
        reset = 0; x = 2'b10 ; #10;
        reset = 0; x = 2'b10 ; #10;
        reset = 0; x = 2'b00 ; #10;
        reset = 0; x = 2'b01 ; #10;
        reset = 0; x = 2'b10 ; #10;
    end
initial begin
#200 ;$finish;
end
endmodule
