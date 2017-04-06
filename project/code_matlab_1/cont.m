   % num_bmp=1:1400
    tmp=imread('l.bmp');
    tmp=medfilt2(tmp,[10 10]);
    
    x = zeros(size(tmp,1)+6,size(tmp,2)+6);
    x(4:size(tmp,1)+3,4:size(tmp,2)+3)=tmp;
    x = tmp;
    x=x~=0;
    x=imcomplement(x);
 
img_edge=edge(tmp);
    [a, b]=find(img_edge);
    counter=size(find(img_edge),1);
    point_x(1)=a(1);
    point_y(1)=b(1);             % find out the starting point
    neighbor_offset=[1 1 0 -1 -1 -1 0 1;0 1 1 1 0 -1 -1 -1];
    new_neighbor=[8 8 2 2 4 4 6 6];
    neighbor=1;

    for i=1:counter    %try to find out all those pixels on the contour
        while img_edge(point_x(i)+neighbor_offset(1,neighbor),point_y(i)+neighbor_offset(2,neighbor))==0
            neighbor=mod(neighbor,8)+1;
        end

        point_x(i+1)=point_x(i)+neighbor_offset(1,neighbor);
        point_y(i+1)=point_y(i)+neighbor_offset(2,neighbor);
        neighbor=new_neighbor(neighbor); 

        if and(point_x(1)==point_x(i+1),point_y(1)==point_y(i+1))
            break
        end
    end
for i=1:size(point_x,2);
        if or(and(point_x(i)==point_x(i+1),point_x(i+1)==point_x(i+2)),and(point_y(i)==point_y(i+1),point_y(i+1)==point_y(i+2)))
            point_x(i+1)=[];
            point_y(i+1)=[];
        end
end

for i1=1:n-pointsleft
evomaass=evo(Zneu);%Function: computes a relvance measure   
                                   %for every point"
[y,I]=sort(evomaass);
Zneu(I(1))=[];
%    in Zneu the points with the smallest relevance measure is 
%    removed
end

for k2 = 1:size(a);
    disp(a(k2));
end


