file_names = {'1.jpg','2.jpg','3.jpg','4.jpg','5.jpg','6.jpg','7.jpg','8.jpg','9.jpg','10.jpg','11.jpg','12.jpg','13.jpg','14.jpg'};
for i=1:14
    ib =char(file_names(i));        %IB----> to store temp STR
    discrip{i}=pts(ib);
end
%CALCULATE INPUT IMAGE DESC.
in_vec = pts('6.jpg');
for i=1:14
    temp_mat = cell2mat(discrip(i));
    DIST(i)=calcdist(temp_mat,in_vec);
end;
