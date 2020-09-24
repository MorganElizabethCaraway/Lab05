`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Morgan Caraway
// 
// Create Date: 09/24/2020 02:00:02 PM
// Design Name: 
// Module Name: addsub_test
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


module addsub_test();
    reg [1:0] a;
    reg [1:0] b;
    reg mode;
    wire [1:0] s;
    wire cout;

addsub dut(
    .a(a),
    .b(b),
    .mode(mode),
    .s(s),
    .cout(cout)
    );

initial begin                                                   //FIXME: fix the initial values
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