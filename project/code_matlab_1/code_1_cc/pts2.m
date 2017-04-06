%function dis pts(img)
I = imread('1.jpg');
imshow(I)
BW = im2bw(I);
%BW = I;
BW=imcomplement(BW);
imshow(BW)
dim = size(BW);
col = round(dim(2)/2)-90;
row = find(BW(:,col), 1 );
boundary = bwtraceboundary(BW,[row, col],'N');
coord = boundary;
%imshow(coord)
imshow(I)
hold on;
plot(boundary(:,2),boundary(:,1),'g','LineWidth',3);
BW_filled = imfill(BW,'holes');
boundaries = bwboundaries(BW_filled);

for i=1:size(coord)
    fprintf('x = %f . y = %f\n',coord(i,2),coord(i,1));
    ZZ(i)=complex(coord(i,2),coord(i,1));
end

Z=fft(ZZ);

zr=real(Z);
zi=imag(Z);

%FOR CALCULATING THE FOURIER SPECTRUM.
for i=1:11
    fk(i) = sqrt(((zr(i)^2)+(zi(i)^2)));
end

%FOR CALCULATING THE MODIFIED FOURIER SPECTRUM.
for i=1:11
    mfs(i) = zr(i)-zi(i);
end

for i=2:11
    dk1(i-1) = fk(i)/fk(1);
end
%end

