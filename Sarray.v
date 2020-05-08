`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2020 07:53:16 PM
// Design Name: 
// Module Name: Sarray
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


module Sarray#(parameter W=8,pix=5*5, dim=32)(
input clk, rst, start, we,
input [W-1:0] indata, 
input [9:0] cnt,
input [6:0]x,y,

output reg [W-1:0] h, v);



reg [W-1:0] p00,p01,p02, p03, p04, p10,p11,p12,p13,p14,p20,p21,p22,p23,p24,p30,p31,p32,p33,p34,p40,p41,p42,p43,p44;
wire [15:0] temp;
//assign temp = 2*x+1+ y*(dim+1);
assign temp = x+1+ y*dim;
always@(posedge clk) begin
    v<= indata;
    h<= indata;  
    if(start==0) begin
        p00<=0; p01<=0; p02<=0;  p03<=0;  p04<=0;  p10<=0; p11<=0; p12<=0; p13<=0; p14<=0; p20<=0; p21<=0; p22<=0; p23<=0; p24<=0; p30<=0; p31<=0; p32<=0; p33<=0; p34<=0; p40<=0; p41<=0; p42<=0; p43<=0; p44<=0;     end else begin
        if(x>1 & cnt== (temp-2)) p20<= indata; 
        if(x>0 & cnt== (temp-1)) p21<= indata; 
        if(cnt== temp) p22<= indata;
        if(x<dim-1 & cnt== (temp+1)) p23<= indata;
        if(x<dim-2 & cnt== (temp+2)) p24<= indata;
        
        if(x>1 & y>0 & cnt== (temp-dim-2)) p10<= indata; 
        if(x>0 & y>0 & cnt== (temp-dim-1)) p11<= indata; 
        if(x>=0 & y>0 & cnt== (temp-dim)) p12<= indata;
        if(x<dim-1 & y>0 & cnt== (temp-dim+1)) p13<= indata;
        if(x<dim-2 & y>0 & cnt== (temp-dim+2)) p14<= indata;
        
        if(x>1 & y>1 & cnt== (temp-dim*2-2)) p00<= indata; 
        if(x>0 & y>1 & cnt== (temp-dim*2-1)) p01<= indata; 
        if(x>=0 & y>1 & cnt== (temp-dim*2)) p02<= indata;
        if(x<dim-1 & y>1 & cnt== (temp-dim*2+1)) p03<= indata;
        if(x<dim-2 & y>1 & cnt== (temp-dim*2+2)) p04<= indata;
        
        if(x>1 & y<=dim-2 & cnt== (temp+dim-2)) p30<= indata; 
        if(x>0 & y<=dim-2 & cnt== (temp+dim-1)) p31<= indata; 
        if(x>=0 & y<=dim-2 & cnt== (temp+dim)) p32<= indata;
        if(x<dim-1 & y<=dim-2 & cnt== (temp+dim+1)) p33<= indata;
        if(x<dim-2 & y<=dim-2 & cnt== (temp+dim+2)) p34<= indata;
        
        if(x>1 & y<dim-2 & cnt== (temp+dim*2-2)) p40<= indata; 
        if(x>0 & y<dim-2 & cnt== (temp+dim*2-1)) p41<= indata; 
        if(x>=0 & y<dim-2 & cnt== (temp+dim*2)) p42<= indata;
        if(x<dim-1 & y<dim-2 & cnt== (temp+dim*2+1)) p43<= indata;
        if(x<dim-2 & y<dim-2 & cnt== (temp+dim*2+2)) p44<= indata;
    end
    
    
end

//wghtRAM RAM(.clk(clk), .rst(rst), .we(we), .start(start), .write_complete(write_complete), .data(data), .weight_bank(wght));

endmodule
