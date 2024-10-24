pkg load image;
clc;
clear all;

img = imread('Lena512.bmp');

imgMod = img;

[M, N] = size(imgMod);

for i = M:1
  for j = N:1
    if imgMod(i,j) > 200
      imgMod(i,j) + 30;
    else
      imgMod(i,j) - 20;
    endif
  endfor

 figure(1),subplot(1,2,1),imshow(img);
 figure(2),subplot(1,2,2),imshow(imgMod);
