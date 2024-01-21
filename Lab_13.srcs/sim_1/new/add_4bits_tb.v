`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2023 01:10:05 PM
// Design Name: 
// Module Name: add_4bits_tb
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


module add_4bits_tb();
    reg [3:0] X, Y;
    reg Cin;
    wire [3:0] S;
    wire Cout;
    
    add_4bits uadd_4bits(
        .X(X),
        .Y(Y),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );
    
    initial begin
        X = 0; Y = 0; Cin = 0;
        #100;
        X = 3; Y = 6; Cin = 0;
        #100;
        X = 7; Y = 7; Cin = 1;
        #100;
        X = 10; Y = 7; Cin = 1;
        #100;
        $finish;
    end
    
endmodule
