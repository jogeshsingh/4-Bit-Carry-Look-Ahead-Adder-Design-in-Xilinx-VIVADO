`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 01:21:10 PM
// Design Name: 
// Module Name: carry_propagation
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


module carry_propagation
( X, Y,  p);

     input X ; 
    input Y;
     output reg  p;
    
    always @ (*)
    begin
    case({X, Y})
    2'b00: p = 1'b0;
    2'b01 : p =1'b1 ;
    2'b10 : p = 1'b1;
    2'b11 : p = 1'b0;
    
    endcase
    end
endmodule

