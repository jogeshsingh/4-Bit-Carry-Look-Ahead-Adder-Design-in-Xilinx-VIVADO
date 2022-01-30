`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 05:45:26 PM
// Design Name: 
// Module Name: top_module_tb
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

`define DELAY 5
module top_module_tb(

    );
    parameter finishtime = 5 ;
    integer N ;
    reg [6:0] result ;
    reg [3:0] test_a ;
    reg [3:0] test_b ;
 reg test_c ;
 wire cout ;
 wire [3:0] sum ;
 
 top_module DUT(.a(test_a[3:0]) , .b(test_b[3:0]),   .cout(cout) , .ci(test_c) ,   .sum(sum) );
 
 initial 
 begin
 test_a = 8'b0000_0000 ;
 test_b = 8'b0000_0000 ;
 test_c = 1'b0 ;
 end
 
 initial 
 begin
 test_c = 1'b1 ;
 for ( N = 0; N<50; N=N+1 )
 #`DELAY test_a = test_a + 1 ;
 
  #finishtime 
  $display ("Finishing simulation due to simulation constraint.");
$display ("Time is - %d",$time);
  end
  
  initial 
 begin
 for ( N = 0; N<50; N=N+1 )
 #`DELAY test_b = $random()%57;
  #finishtime 
  $display ("Finishing simulation due to simulation constraint.");
$display ("Time is - %d",$time);
  end
  
  initial 
 begin
 test_c = 1'b1 ;
 for ( N = 0; N<50; N=N+1 )
 #`DELAY test_c = $random()%50 ;
 
  #finishtime 
  $display ("Finishing simulation due to simulation constraint.");
$display ("Time is - %d",$time);
  end
  
  initial 
 begin
 for ( N = 0; N<50; N=N+1 )
#`DELAY  result = test_a + test_b + test_c ;
 end
  
  initial begin
// Open a db file for saving simulation data
$shm_open (" top_module_tb .db");
// Collect all signals (hierarchically) from the module "mux_tb"
$shm_probe (top_module_tb,"AS");
end
endmodule
