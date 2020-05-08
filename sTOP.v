`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2020 09:02:20 PM
// Design Name: 
// Module Name: sTOP
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


module sTOP#(parameter W=8, dim=32)(
input clk, rst, start,
input [7:0] indata);
//output[W*7-1:0] data_0);

reg[9:0] cnt=0;

always@(posedge clk) begin
    cnt<=cnt+1;
end

genvar i, ii, jj,j,k,m,n,p,q,r,s,a,b,c,d,aa,bb,cc,dd,ab,ac,ad,ba,bc,bd,ca,cb,cd, da,db,dc, sp,ps,sb;
wire [dim*W-1:0] h1, v1;
wire [dim*dim*dim-1:0] li;

generate

    
    Sarray uINT( .clk(clk), .rst(rst), .start(start), .cnt(cnt), .x(0), .y(0), .indata(indata),  .h(h1[W*0 + W-1-:W]), .v(v1[W*0 + W-1-:W]));
    for(ii=1; ii<dim; ii=ii+1) begin :loop1   //horizontal line 0
        Sarray u0( .clk(clk), .rst(rst), .start(start), .cnt(cnt), .x(ii), .y(0), .indata(h1[W*(ii-1) + W-1-:W]), .h(h1[W*ii + W-1-:W]));
    end 
    for(i=1; i<dim; i=i+1) begin :loopVV      //vertical line 0
        Sarray uVV( .clk(clk), .rst(rst), .start(start), .cnt(cnt), .x(0), .y(i), .indata(v1[W*i-1-:W]), .v(v1[W*(i+1)-1-:W]), .h(li[dim*dim*(i-1) +W-1 -:8]));  
    end
    
    for(jj=1; jj<dim; jj=jj+1) begin :loop2   //horizontal line 1
        Sarray u1( .clk(clk), .rst(rst), .start(start), .cnt(cnt), .x(jj), .y(1), .indata(li[dim*dim*0+W*(jj-1)+ W-1-:W]), .h(li[dim*dim*0+ W*jj + W-1-:W]));  
    end
    
    for(k=1; k<dim; k=k+1) begin :loop3   //horizontal line 2
        Sarray u2( .clk(clk), .rst(rst), .start(start),  .cnt(cnt), .x(k), .y(2), .indata(li[dim*dim*1+W*(k-1)+ W-1-:W]), .h(li[dim*dim*1+ W*k + W-1-:W]));  
    end
    for(m=1; m<dim; m=m+1) begin :loop4   //horizontal line 3
        Sarray u3( .clk(clk), .rst(rst), .start(start),  .cnt(cnt),.x(m), .y(3), .indata(li[dim*dim*2+W*(m-1)+ W-1-:W]),.h(li[dim*dim*2+ W*m + W-1-:W]));  
    end
    for(n=1; n<dim; n=n+1) begin :loop5   //horizontal line 4
        Sarray u4( .clk(clk), .rst(rst), .start(start),.cnt(cnt),.x(n), .y(4), .indata(li[dim*dim*3+W*(n-1)+ W-1-:W]), .h(li[dim*dim*3+ W*n + W-1-:W]));  
    end
    
    for(p=1; p<dim; p=p+1) begin :loop6   //horizontal line 5
        Sarray u5( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(p), .y(5), .indata(li[dim*dim*4+W*(p-1)+ W-1-:W]), .h(li[dim*dim*4+ W*p + W-1-:W]));  
    end
    
    for(q=1; q<dim; q=q+1) begin :loop7   //horizontal line 6
        Sarray u6( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(q), .y(6), .indata(li[dim*dim*5+W*(q-1)+ W-1-:W]), .h(li[dim*dim*5+ W*q + W-1-:W]));  
    end
    
    for(r=1; r<dim; r=r+1) begin :loop8   //horizontal line 7
        Sarray u7( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(r), .y(7), .indata(li[dim*dim*6+W*(r-1)+ W-1-:W]), .h(li[dim*dim*6+ W*r + W-1-:W]));  
    end
    
    for(s=1; s<dim; s=s+1) begin :loop9   //horizontal line 8
        Sarray u8( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(s), .y(8), .indata(li[dim*dim*7+W*(s-1)+ W-1-:W]), .h(li[dim*dim*7+ W*s + W-1-:W]));  
    end
    for(a=1; a<dim; a=a+1) begin :loop10   //horizontal line 9
       // Sarray u10( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(a), .y(9), .indata(li[dim*dim*8+W*(a-1)+ W-1-:W]), .h(li[dim*dim*8+ W*a + W-1-:W])); 
        Sarray u10( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(a), .y(9), .indata(li[dim*dim*8+W*(a-1)+ W-1-:W]), .h(li[dim*dim*8+ W*a + W-1-:W]));  
    end
    for(b=1; b<dim; b=b+1) begin :loop11   //horizontal line 10
        Sarray u11( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(b), .y(10), .indata(li[dim*dim*9+W*(b-1)+ W-1-:W]), .h(li[dim*dim*9+ W*b + W-1-:W]));  
    end    
    for(c=1; c<dim; c=c+1) begin :loop12   //horizontal line 11
        Sarray u12( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(c), .y(11), .indata(li[dim*dim*10+W*(c-1)+ W-1-:W]), .h(li[dim*dim*10+ W*c + W-1-:W]));  
    end
    for(d=1; d<dim; d=d+1) begin :loop13   //horizontal line 12
        Sarray u13( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(d), .y(12), .indata(li[dim*dim*11+W*(d-1)+ W-1-:W]), .h(li[dim*dim*11+ W*d + W-1-:W]));  
    end    
    for(aa=1; aa<dim; aa=aa+1) begin :loop14   //horizontal line 13
        Sarray u14( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(aa), .y(13), .indata(li[dim*dim*12+W*(aa-1)+ W-1-:W]), .h(li[dim*dim*12+ W*aa + W-1-:W]));  
    end    
    for(bb=1; bb<dim; bb=bb+1) begin :loop15   //horizontal line 14
        Sarray u15( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(bb), .y(14), .indata(li[dim*dim*13+W*(bb-1)+ W-1-:W]), .h(li[dim*dim*13+ W*bb + W-1-:W]));  
    end    
    for(cc=1; cc<dim; cc=cc+1) begin :loop16   //horizontal line 15
        Sarray u16( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(cc), .y(15), .indata(li[dim*dim*14+W*(cc-1)+ W-1-:W]), .h(li[dim*dim*14+ W*cc + W-1-:W]));  
    end    
    for(dd=1; dd<dim; dd=dd+1) begin :loop17   //horizontal line 16
        Sarray u17( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(dd), .y(16), .indata(li[dim*dim*15+W*(dd-1)+ W-1-:W]), .h(li[dim*dim*15+ W*dd + W-1-:W]));  
    end
    for(ab=1; ab<dim; ab=ab+1) begin :loop18   //horizontal line 17
        Sarray u18( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(ab), .y(17), .indata(li[dim*dim*16+W*(ab-1)+ W-1-:W]), .h(li[dim*dim*16+ W*ab + W-1-:W]));  
    end    
    for(ac=1; ac<dim; ac=ac+1) begin :loop19   //horizontal line 18
        Sarray u19( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(ac), .y(18), .indata(li[dim*dim*17+W*(ac-1)+ W-1-:W]), .h(li[dim*dim*17+ W*ac + W-1-:W]));  
    end
    for(ad=1; ad<dim; ad=ad+1) begin :loop20   //horizontal line 19
        Sarray u20( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(ad), .y(19), .indata(li[dim*dim*18+W*(ad-1)+ W-1-:W]), .h(li[dim*dim*18+ W*ad + W-1-:W]));  
    end    
    for(ba=1; ba<dim; ba=ba+1) begin :loop21   //horizontal line 20
        Sarray u21( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(ba), .y(20), .indata(li[dim*dim*19+W*(ba-1)+ W-1-:W]), .h(li[dim*dim*19+ W*ba + W-1-:W]));  
    end    
    for(bc=1; bc<dim; bc=bc+1) begin :loop22   //horizontal line 21
        Sarray u22( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(bc), .y(21), .indata(li[dim*dim*20+W*(bc-1)+ W-1-:W]), .h(li[dim*dim*20+ W*bc + W-1-:W]));  
    end    
    for(bd=1; bd<dim; bd=bd+1) begin :loop23   //horizontal line 22
        Sarray u23( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(bd), .y(22), .indata(li[dim*dim*21+W*(bd-1)+ W-1-:W]), .h(li[dim*dim*21+ W*bd + W-1-:W]));  
    end     
    for(ca=1; ca<dim; ca=ca+1) begin :loop24   //horizontal line 23
        Sarray u24( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(ca), .y(23), .indata(li[dim*dim*22+W*(ca-1)+ W-1-:W]), .h(li[dim*dim*22+ W*ca + W-1-:W]));  
    end
    for(cb=1; cb<dim; cb=cb+1) begin :loop25   //horizontal line 24
        Sarray u25( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(cb), .y(24), .indata(li[dim*dim*23+W*(cb-1)+ W-1-:W]), .h(li[dim*dim*23+ W*cb + W-1-:W]));  
    end    
    for(cd=1; cd<dim; cd=cd+1) begin :loop26   //horizontal line 25
        Sarray u26( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(cd), .y(25), .indata(li[dim*dim*24+W*(cd-1)+ W-1-:W]), .h(li[dim*dim*24+ W*cd + W-1-:W]));  
    end
    for(da=1; da<dim; da=da+1) begin :loop27   //horizontal line 26
        Sarray u27( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(da), .y(26), .indata(li[dim*dim*25+W*(da-1)+ W-1-:W]), .h(li[dim*dim*25+ W*da + W-1-:W]));  
    end    
    for(db=1; db<dim; db=db+1) begin :loop28   //horizontal line 27
        Sarray u28( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(db), .y(27), .indata(li[dim*dim*26+W*(db-1)+ W-1-:W]), .h(li[dim*dim*26+ W*db + W-1-:W]));  
    end    
    for(dc=1; dc<dim; dc=dc+1) begin :loop29   //horizontal line 28
        Sarray u29( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(dc), .y(28), .indata(li[dim*dim*27+W*(dc-1)+ W-1-:W]), .h(li[dim*dim*27+ W*dc + W-1-:W]));  
    end    
    for(sp=1; sp<dim; sp=sp+1) begin :loop30   //horizontal line 29
        Sarray u30( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(sp), .y(29), .indata(li[dim*dim*28+W*(sp-1)+ W-1-:W]), .h(li[dim*dim*28+ W*sp + W-1-:W]));  
    end     
    for(ps=1; ps<dim; ps=ps+1) begin :loop31   //horizontal line 30
        Sarray u31( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(ps), .y(30), .indata(li[dim*dim*29+W*(ps-1)+ W-1-:W]), .h(li[dim*dim*29+ W*ps + W-1-:W]));  
    end
    for(sb=1; sb<dim; sb=sb+1) begin :loop32   //horizontal line 31
        Sarray u32( .clk(clk), .rst(rst), .start(start), .cnt(cnt),.x(sb), .y(31), .indata(li[dim*dim*30+W*(sb-1)+ W-1-:W]), .h(li[dim*dim*30+ W*sb + W-1-:W]));  
    end    
    

endgenerate 


endmodule
