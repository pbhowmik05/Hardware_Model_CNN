`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2020 01:09:18 AM
// Design Name: 
// Module Name: mxPL
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
module mxPL#(parameter W=8,L=6)(
input clk, rst,
input [3:0] ry1,ry2,ry3,ry4,
input [2:0] c_cnt1,c_cnt2,c_cnt3, c_cnt4,
input [7:0] conv1,conv2,conv3,conv4,
output reg [L*W-1:0] Max);

 reg begn, begn1;   
 reg [W-1:0] r1[23:0];   
    always @(posedge clk) begin
       if(ry1==1) r1[c_cnt1] <= conv1;
       if(ry2==1) r1[6+c_cnt2] <= conv2;
       if(ry3==1) r1[12+c_cnt3] <= conv3;
       if(ry4==1) r1[18+c_cnt4] <= conv4;
       if(c_cnt4==3'b110) begn<=1; else begn<=0;
       begn1<= begn;
    end
    reg[2:0]mm;
    always@(posedge clk) begin
        if(begn1==1) begin
            for(mm=0; mm<=5; mm=mm+1) begin
                r1[mm+0] <= (r1[mm+0]>r1[mm+6])? r1[mm+0]: r1[mm+6];
                r1[mm+12] <= (r1[mm+12]>r1[mm+18])? r1[mm+12]: r1[mm+18];
                r1[mm+0] <= (r1[mm+0]>r1[mm+12]) ? r1[mm+0]: r1[mm+12];
            end
            Max<={r1[0],r1[1],r1[2],r1[3],r1[4],r1[5]};
        end       
    end
    
endmodule
