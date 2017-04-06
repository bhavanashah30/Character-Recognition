function []=freeman()
clc
m=imread('p2.png');
 
 [h w d]=size(m);
 h;
 w;
 d;
 m
 row=0;
 col=0;
 for i=w:-1:1 % column
     for j=1:1:h % row
    %    m(j,i)
         if(m(j,i)==0)
            row=j;
            col=i;
           break;
         end
     end
 end
 
  
 m(row,col);
 oldrow=row;
 oldcol=col;
 newrow=-1;
 newcol=-1;
 %while (row ~=newrow & col ~= newcol )
 for i=1:300;   
      
     if(checkones(m,oldrow,oldcol)==1)%up 1
         %your up is 1
         if(m(oldrow,oldcol+1)==1)%righ 1
             if(m(oldrow+1,oldcol)==1)%down 1
                break;
             else
                      newrow=oldrow+1;
                        newcol=oldcol;
             end
         else
          newrow=oldrow;
     newcol=oldcol+1;  
                
         end
       
      
     else% your up is 0
         if(m(oldrow,oldcol+1)==1)%down
                 newrow=oldrow+1;
                 newcol=oldcol;
         else if(m(oldrow,oldcol+1)==0 &m(oldrow,oldcol-1)~=1)% rigth
                     newrow=oldrow;
                newcol=oldcol+1;  
           else if(m(oldrow,oldcol-1)==1)% up   
         newrow=oldrow-1;
     newcol=oldcol;
         end
        end
    
   oldrow=newrow;
   oldcol=newcol;
   newrow
   newcol
      
end
%- See more at: http://www.codemiles.com/matlab-examples/freeman-chain-code-algorithm-code-t10788.html#sthash.eDKrv5vW.dpuf