`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Morgan Caraway
// 
// Create Date: 09/24/2020 02:00:02 PM
// Design Name: 
// Module Name: addsub
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


module addsub(
    input [1:0] a,
    input [1:0] b,
    input mode,
    output [1:0] s,
    output cout
    );
    
    wire c1, c2;
    wire [1:0] b2;
    
    assign b2 = b ^ mode;
    
    fulladder fa0(
    .a(a[0]),
    .b(b[0]),
    .cin(mode),
    .cout(c1),
    .s(s[0])
    );
    
    fulladder fa1(
    .a(a[1]),
    .b(b[1]),
    .cin(c1),
    .cout(c2),
    .s(s[1])
    );
                                                                //FIXME: add the 2 XOR gates
                                                                //FIXME: do the inversion
    assign cout =                                               //FIXME: do the assign
    
endmodule
