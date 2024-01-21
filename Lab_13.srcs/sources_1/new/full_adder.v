`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2023 12:37:07 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(X,Y,Cin,S,Cout); //Declare Parapeters

    input X, Y, Cin; //Set Variable to inputs
    output S, Cout; //Set Variable to outputs
    
    assign S = X ^ Y ^ Cin; //Set the output related to the input boolean expression
    assign Cout = (X&Y) | (X & Cin) | (Y & Cin);//Set the output related to the input boolean expression


endmodule //End of the module
