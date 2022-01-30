`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 01:51:33 PM
// Design Name: 
// Module Name: carry_out_block
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


module carry_out_block(
p, g, c, ci , cout
    );
    input [3:0] p ;
    input [3:0] g;
    input ci;
  
    output [3:1] c;
    output cout ;
    wire g_in ;
    wire p_in ;
    assign c[1] = g[0] | (p[0] & ci) ;
    assign c[2] = g[1] | ( p[1] & g[0] ) | (p[1] & p[0] & ci) |( p[1] & g[0]) ;
    assign c[3] = g[2] | ( p[2] & g[1] ) | (p[2] & p[1] & p[0] & ci) | (p[2] & p[1] & g[0] );
    
    assign   p_in = p[3] & p[2] & p[1] & p[0] ;
    assign g_in =  g[3] | ( p[3] & g[2] )| (p[3] & p[2] & g[1] ) | ( p[3] & p[2] & p[1] & g[0] ) ;

    assign cout = g_in | (p_in & ci ) ;
  
   
endmodule
