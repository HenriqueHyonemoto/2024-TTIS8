clc;
clear;

pkg image load;

img = imread ('Lena512.bmp');
imgBW = im2bw(img);

SE = ones(3,3);#cria uma matriz 3x3 com valores 1
imgErode = imerode(imgBW,SE);

figure(1),subplot(2,3,2),imshow(img);
figure(1),subplot(2,3,4),imshow(imgBW);
figure(1),subplot(2,3,6),imshow(imgErode);
