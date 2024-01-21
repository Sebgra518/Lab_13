`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2023 12:56:44 PM
// Design Name: 
// Module Name: add_4bits
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

module add_4bits(X,Y,Cin,S,Cout); //Declare Parameters
    input [3:0] X; //Create array of X inputs ie(X
    input [3:0] Y;
    input Cin;
    output [3:0] S;
    output Cout;
    wire [3:1] C;
    
    full_adder ufull_adder0(
        .X(X[0]),
        .Y(Y[0]),
        .Cin(Cin),
        .S(S[0]),
        .Cout(C[1])
    );
    full_adder fa1(X[1],Y[1],C[1],S[1],C[2]);
    full_adder fa2(X[2],Y[2],C[2],S[2],C[3]);
    full_adder fa3(X[3],Y[3],C[3],S[3],Cout);

endmodule
