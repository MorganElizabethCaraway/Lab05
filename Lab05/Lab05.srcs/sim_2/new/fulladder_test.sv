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


module fulladder_test();
    reg a;
    reg b;
    reg cin;
    wire cout;
    wire s;

fulladder dut(
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .s(s)
    );

initial begin
    cin = 0; a = 0; b = 0; #10;
    cin = 0; a = 0; b = 1; #10;
    cin = 0; a = 1; b = 0; #10;
    cin = 0; a = 1; b = 1; #10;
    cin = 1; a = 0; b = 0; #10;
    cin = 1; a = 0; b = 1; #10;
    cin = 1; a = 1; b = 0; #10;
    cin = 1; a = 1; b = 1; #10;
    $finish ;
end

endmodule