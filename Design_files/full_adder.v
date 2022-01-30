`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 05:00:48 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
X, Y, p , g , ci , sum 
    );
    output  p ;
    output  g;
    input ci ;
    input  X;
    input  Y;
    output sum;
    sum_block B1(p ,  ci ,  sum     );
     carry_propagation B2( X, Y,  p);
      carry_generation B3 ( X ,  Y,   g    );
      
endmodule
