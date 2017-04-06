im = imread('l.bmp');
zcLogInd = edge(im, 'zerocross');
[rowInd, colInd] = find(zcLogInd == 1);