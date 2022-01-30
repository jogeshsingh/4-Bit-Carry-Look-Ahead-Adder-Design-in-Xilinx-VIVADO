`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 01:21:59 PM
// Design Name: 
// Module Name: carry_generation
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
module carry_generation(
 X,  Y,   g
    );
input X;
input Y;
output reg g ;
  always @ (*)
  begin
  case({X, Y})
  2'b00: g = 1'b0;
  2'b01 : g = 1'b0;
  2'b10 : g = 1'b0;
  2'b11: g = 1'b1  ; 
  default : g = 1'b0;
    endcase
    end
    endmodule