`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Morgan Caraway
// 
// Create Date: 09/24/2020 01:14:43 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input a,
    input b,
    input cin,
    output cout,
    output s
    );
    
    wire c1, c2, s1;
    
    halfadder ha0(
    .a(a),
    .b(b),
    .c(c1),
    .s(s1)
    );
    
    halfadder ha1(
    .a(s1),
    .b(cin),
    .c(c2),
    .s(s)
    );
    
    assign cout = c1 | c2;       // this is the OR gate in the FA
endmodule
