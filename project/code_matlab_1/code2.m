% read image and convert to binary
img = imread('l.bmp');
%img = imcrop(img,[206,145,60,58]);
coin = im2bw(img);%g > 95;
coin = imcomplement(coin);
figure, imshow(coin)

% find start point
[r,c] = find(coin);
start = [r(1),c(1)];

% trace boundary
B = bwtraceboundary(coin,start,'NW',8,inf,'counterclockwise');

% convert to chain code
code = [3,2,1;4,nan,0;5,6,7];  % Lookup table
B = diff(B)+2;
idx = sub2ind(size(code),B(:,1),B(:,2));
C = code(idx);
