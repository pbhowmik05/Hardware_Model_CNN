`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2020 09:55:54 PM
// Design Name: 
// Module Name: systolic
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


module systolic#(parameter W=8,pix=5*5)(
input clk, rst, start,
input [4:0] select,
input [7:0] ID, counter_val,
input [7:0] indata,
output [7:0]bypass, 
output reg [7:0] img);



reg[W-1:0] img0,img_0, img1, img2, img3, img4, img32, img33, img34, img35, img36, img64, img65, img66, img67, img68, img96, img97, img98, img99, img100, img128, img129, img130, img131, img132;



//assign allwires ={img0, img1, img2, img3, img4, img32, img33, img34, img35, img36, img64, img65, img66, img67, img68, img96, img97, img98, img99, img100, img128, img129, img130, img131, img132};
assign bypass = indata;

always @(select, img0, img1, img2, img3, img4, img32, img33, img34, img35, img36, img64, img65, img66, img67, img68, img96, img97, img98, img99, img100, img128, img129, img130, img131, img132) begin
    
if(select==0) img<=img0;
else if(select==1) img<=img1;
else if(select==2) img<=img2;
else if(select==3) img<=img3;
else if(select==4) img<=img4;
else if(select==5) img<=img32;
else if(select==6) img<=img33;
else if(select==7) img<=img34;
else if(select==8) img<=img35;
else if(select==9) img<=img36;
else if(select==10) img<=img64;
else if(select==11) img<=img65;
else if(select==12) img<=img66;
else if(select==13) img<=img67;
else if(select==14) img<=img68;
else if(select==15) img<=img96;
else if(select==16) img<=img97;
else if(select==17) img<=img98;
else if(select==18) img<=img99;
else if(select==19) img<=img100;
else if(select==20) img<=img128;
else if(select==21) img<=img129;
else if(select==22) img<=img130;
else if(select==23) img<=img131;
else if(select==24) img<=img132;   
else img<=0;
end

    always@(posedge clk) begin
        if(counter_val==8'b11111111)
          //  img<=0;   
        if(counter_val+1 == ID+6)  img0<=indata;  //neighboring pixel
        if(counter_val+1 == ID+1)  img1<=indata;
        if(counter_val+1 == ID+2)  img2<=indata;
        if(counter_val+1 == ID+3)  img3<=indata;
        if(counter_val+1 == ID+4)  img4<=indata;
        if(counter_val+1 == ID+5)  img_0<=indata;
            
        if(counter_val-1 == ID+32)  img32<=indata;
        if(counter_val-1 == ID+33)  img33<=indata;
        if(counter_val-1 == ID+34)  img34<=indata;
        if(counter_val-1 == ID+35)  img35<=indata;
        if(counter_val-1 == ID+36)  img36<=indata;  
        
        if(counter_val-1 == ID+64)  img64<=indata;  //neighboring pixel
        if(counter_val-1 == ID+65)  img65<=indata;
        if(counter_val-1 == ID+66)  img66<=indata;
        if(counter_val-1 == ID+67)  img67<=indata;
        if(counter_val-1 == ID+68)  img68<=indata;
            
        if(counter_val-1 == ID+96)  img96<=indata;
        if(counter_val-1 == ID+97)  img97<=indata;
        if(counter_val-1 == ID+98)  img98<=indata;
        if(counter_val-1 == ID+99)  img99<=indata;
        if(counter_val-1 == ID+100) img100<=indata;            
    end
endmodule



//module systolic#(parameter W=8, pix=5*5)(
//input clk, rst, start,
//input [7:0] ID, counter_val,
//input [7:0] indata,
//output [7:0]bypass, 
//output reg [7:0] img);

//wire [W-1:0] self_data;
//assign bypass = (ID<100) ? indata :0;

//    always@(posedge clk) begin
//        if(counter_val==8'b11111111)
//            img<=0;   
//        if(counter_val-1 == ID)
//            img<=indata;
//    end
//endmodule