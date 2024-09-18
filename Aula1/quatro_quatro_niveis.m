pkg load image;
clc;

img = imread('C:\Users\Veterano\Documents\H_Topics\Aula1\lena512.bmp');

imgBin = img;

[M, N] = size(img);

for i = 1:M
  for j = 1:N
    if img(i,j) <= 64
      imgBin(i,j) = 0;
    elseif img(i,j) <= 128
      imgBin(i,j) = 128;
    elseif img(i,j) <= 256
      imgBin(i,j) = 192;
    elseif img(i,j) <= 384
      imgBin(i,j) = 255;
    endif
  endfor
endfor

figure(1),imshow(img);
figure(2),imshow(imgBin);
