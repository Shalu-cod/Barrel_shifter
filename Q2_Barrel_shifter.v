`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2022 15:52:32
// Design Name: 
// Module Name: Barrel_Shifter
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


module Barrel_Shifter(
input [2:0] S,
input [7:0] A,
output [7:0] Y
);

assign Y = (S==3'b000) ? A<<5 :
           (S==3'b001) ? A<<2 :
           (S==3'b010) ? A>>3 :
           (S==3'b011) ? A>>4 :
           (S==3'b100) ? (A<<1)|(A>>(8-1)) :
           (S==3'b101) ? (A>>4)|(A<<(8-4)) :
           (S==3'b110) ? (A<<<3) :
           (S==3'b111) ? (A>>>6) :
           0;

endmodule