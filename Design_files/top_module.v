`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 01:20:19 PM
// Design Name: 
// Module Name: top_module
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


module top_module(
a, b, ci ,  cout,  sum
    );
    
 input [3:0] a;
 input [3:0] b;  
 input ci ;
 output cout ;
 output [3:0] sum ;
 wire [3:0] sum ;
  wire [3:0] p;
 wire [3:0] g; 
    wire [3:1] c; 
     carry_out_block M1( p, g, c, ci , cout  );
     full_adder FA1(a[0], b[0], p[0] , g[0] , ci , sum[0]  );
     full_adder FA2(a[1], b[1], p[1] , g[1] , c[1] , sum[1]  );
     full_adder FA3(a[2], b[2], p[2] , g[2] , c[2] , sum[2]  );
     full_adder FA4(a[3], b[3], p[3] , g[3] , c[3] , sum[3]   );
     
endmodule
