`timescale 1ns / 1ps

//Designing a Vending Machine which
//Takes input coin denominations of Rs.1 , Rs.2
//Gives product of Rs.5 and returns change as Rs.1

module Vending_Machine(input clk, input reset, input [1:0] x, output reg product, output reg change);
reg [2:0] cur_state, next_state;

parameter S0=3'b000, S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101,S6=3'b110;

always@(posedge clk, reset, x)begin
    if(reset)begin
        cur_state = S0;
    end
    else
        cur_state = next_state;
end

always@(posedge clk, cur_state, x, negedge reset) begin
    case(cur_state)
        S0 : begin 
                if(x == 2'b00) next_state = S0;
                else if(x == 2'b01) next_state = S1;
                else if(x == 2'b10) next_state = S2;
                end
                
        S1 : begin 
                if(x == 2'b00) next_state = S1;
                else if(x == 2'b01) next_state = S2;
                else if(x == 2'b10) next_state = S3;
                end
                
        S2 : begin 
                if(x == 2'b00) next_state = S2;
                else if(x == 2'b01) next_state = S3;
                else if(x == 2'b10) next_state = S4;
                end
                
        S3 : begin 
                if(x == 2'b00) next_state = S3;
                else if(x == 2'b01) next_state = S4;
                else if(x == 2'b10) next_state = S5;
                end
                
        S4 : begin 
                if(x == 2'b00) next_state = S4;
                else if(x == 2'b01) next_state = S5;
                else if(x == 2'b10) next_state = S6;
                end
                
        S5 : begin 
                if(x == 2'b00) next_state = S0;
                else if(x == 2'b01) next_state = S1;
                else if(x == 2'b10) next_state = S2;
                end 
                
        S6 : begin 
                if(x == 2'b00) next_state = S0;
                else if(x == 2'b01) next_state = S1;
                else if(x == 2'b10) next_state = S2;
                end
                
        default : begin 
                next_state = S0;
                end
          endcase
end

always@(cur_state)begin
    case(cur_state)
        S0 : begin
                product = 0;
                change = 0;
             end
        
        S1 : begin
                product = 0;
                change = 0;
             end
             
        S2 : begin
                product = 0;
                change = 0;
             end
             
        S3 : begin
                product = 0;
                change = 0;
             end
             
        S4 : begin
                product = 0;
                change = 0;
             end
             
        S5 : begin
                product = 1;
                change = 0;
             end
             
        S6 : begin
                product = 1;
                change = 1;
             end
             
        default : begin
                product = 0;
                change = 0;
             end
        endcase
end
endmodule
