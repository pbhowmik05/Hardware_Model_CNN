`timescale 1ns / 1ps

module wghtRAM#(parameter w =8, L=6)(
input clk, rst, we, start,
input [w-1:0] data,
output reg write_complete, done,
output reg [5*5*w-1:0] weight_bank 
    );
   
    reg [7:0]count=0;
    reg [5*5*w*L-1:0] ram=0;
    reg [2:0] cnt=0;
    reg t1=0, t2=0, set,set_rd;
    reg [5*5*L-1:0] tag=0;
    wire clock, clk_read;
    assign clock = clk*we;
    assign clk_read = clk*start*!set_rd;
    
    always@(posedge clk) begin
        count <= (rst==1 | set==1) ? 0 : ((count<5*5*L) ? count+1 : count);

        if(we) begin
            ram[w+count*w-1 -: w]<= data;                       
        end
    end    

    always @(posedge clk) begin
        if(we!=t1)
            t1<=we;
        if(we==1 & t1==0) 
            set <=1; 
        else 
            set <=0;            
        tag[0] <=set;
        tag[5*5*L-1:1] <= tag[5*5*L-2:0];     
        
        
        if(start!=t2)
            t2<= start;
        if(start==1 & t2==0)
            set_rd<=1;
        else set_rd<=0;
                    
    end
    
    always @(posedge clk_read) begin

            //cnt <= (rst==1 | set_rd==1) ? 0 : ((cnt<L-1) ? cnt+1 : cnt);
            //if(start==1 & set_rd==0 & cnt>=0 & cnt<=L-1)
            if(set_rd==1) cnt=0;
            if(start==1 & set_rd==0) begin
                cnt <= (rst==1 | set_rd==1) ? 0 : ((cnt<L-1) ? cnt+1 : cnt);
                weight_bank <= ram[5*5*w-1 + 5*5*w*cnt -: 5*5*w];
            end else 
                weight_bank<=0;
            if(cnt==L-1)
                done<=1;
            else done<=0;

    end
    

    always @(posedge clk) begin     

        write_complete <= tag[5*5*L-1];
    end     
endmodule