`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Morgan Caraway
// 
// Create Date: 09/24/2020 12:18:44 PM
// Design Name: 
// Module Name: halfadder
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


module halfadder(
    input a,
    input b,
    output c,
    output s
    );
    
    assign c = a & b;       // this is the AND gate in the HA
    assign s = a ^ b;       // this is the NOR gate in the HA
endmodule
