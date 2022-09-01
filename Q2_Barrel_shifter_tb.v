`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2022 15:56:50
// Design Name: 
// Module Name: Barrel_Shifter_tb
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


module Barrel_Shifter_tb;

reg [2:0] S;
reg [7:0] A;
wire [7:0] Y;

Barrel_Shifter b1(.S(S),.A(A),.Y(Y));

initial begin

    A=8'b01001110;
    S=3'b000;
    end
    
    always #10 S[0]=~S[0];
   always #20 S[1]=~S[1];
   always #40 S[2]=~S[2];

endmodule