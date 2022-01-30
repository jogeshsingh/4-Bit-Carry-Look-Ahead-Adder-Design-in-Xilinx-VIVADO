`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 04:58:35 PM
// Design Name: 
// Module Name: sum_block
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


module sum_block(
 p ,  ci , sum  
    );
   output  p ; 
   input ci ; 
    output sum ;
    assign sum = p ^ ci ;

endmodule
