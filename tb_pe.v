`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2020 03:11:11 PM
// Design Name: 
// Module Name: tb_pe
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
module tb_pe#(parameter W=8,L=6, pix=5*5, dim=8);
reg clk, rst, start, we;
reg [W-1:0] indata, ld_wght;
reg [6:0]x,y;
wire [W-1:0]conv_out;
wire ready, we_O,done;
wire  [W-1:0] weight_out, h, v;

pe_new ut(.clk(clk), .rst(rst), .start(start), .we(we), .indata(indata), .weight_in(ld_wght), .x(x), .y(y), .conv_out(conv_out), .we_O(we_O), .done(done), .ready(ready), .weight_out(weight_out), .h(h), .v(v));

         always begin
                 clk = 1; #5; clk = 0; #5; // 10ns period
         end
         initial
         begin        
         #2 ld_wght=1;   we=1;       start=0; rst=0; x=3; y=3; 
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10; 
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;
                     #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;              
         #10 ld_wght=1;          
         #10 ld_wght=2;
         #10 ld_wght=3;
         #10 ld_wght=4;
         #10 ld_wght=5;   
         #10 ld_wght=6;
         #10 ld_wght=7;
         #10 ld_wght=8;
         #10 ld_wght=9;
         #10 ld_wght=10;  
         #40;
         #10 we=0;
         #200; 
         #10  indata = 10; start=1; rst=0; x=3; y=3; //cnt=1; 
         #10  indata = 20;   //cnt = 2; 
         #10  indata = 30;   //cnt = 3;
         #10  indata = 40;   //cnt =  4;
         #10  indata = 50;   //cnt =  5;
         #10  indata = 60;   //cnt =  6;
         #10  indata = 70;  //cnt =  7;
         #10  indata = 80;   //cnt =  8; 
         #10  indata = 11;   //cnt =  9;
         #10  indata = 21;   //cnt =  10;
         #10  indata = 31;   //cnt =  11;
         #10  indata = 41;  //cnt =   12;
         #10  indata = 51;  //cnt =  13;
         #10  indata = 61;  //cnt=  14;
         #10  indata = 71;  //cnt =  15;
         #10  indata = 81;  //cnt =  16;
         #10  indata = 12;   //cnt =  17;
         #10  indata = 22;   //cnt =  18;
         #10  indata = 32;   //cnt =  19;
         #10  indata = 42;   //cnt =  20;
         #10  indata = 52;  //cnt =  21;
         #10  indata = 62;   //cnt =  22;
         #10  indata = 72;  //cnt =  23;
         #10  indata = 82;  //cnt =  24;
         #10  indata = 13;   //cnt =  25;
         #10  indata = 23;   //cnt =  26;
         #10  indata = 33;   //cnt =  27;
         #10  indata = 43;   //cnt =  28;
         #10  indata = 53;  //cnt =  29;
         #10  indata = 63;   //cnt =  30;
         #10  indata = 73;  //cnt =  31;
         #10  indata = 83;  //cnt =  32;
         #10  indata = 14;   //cnt =  33;
         #10  indata = 24;   //cnt =  34;
         #10  indata = 34;   //cnt =  35;
         #10  indata = 44;   //cnt =  36;
         #10  indata = 54;  //cnt =  37;
         #10  indata = 64;   //cnt =  38;
         #10  indata = 74;  //cnt =  39;
         #10  indata = 84;  //cnt=   40;
         #10  indata = 15;   //cnt =  41;
         #10  indata = 25;   //cnt =  42;
         #10  indata = 35;   //cnt =  43;
         #10  indata = 45;   //cnt =  44;
         #10  indata = 55;  //cnt =  45;
         #10  indata = 65;   //cnt =  46;
         #10  indata = 75;  //cnt =  47;
         #10  indata = 85;  //cnt =  48;
         #10  indata = 16;   //cnt =  49;
         #10  indata = 26;   //cnt =  50;
         #10  indata = 36; //cnt=   51;
         #10  indata = 46;   //cnt =  52;
         #10  indata = 56;  //cnt =  53;
         #10  indata = 66;   //cnt =  54;
         #10  indata = 76;  //cnt =  55;     
    end

endmodule
