pkg load image;
clc;

img = imread('C:\Users\Veterano\Documents\H_Topics\Aula1\lena512.bmp');

imgBin = img;

[M, N] = size(img);

for i = 1:M
  for j = 1:N
    if img(i,j) <= 31
      imgBin(i,j) = 0;
    elseif img(i,j) <= 63
      imgBin(i,j) = 32;
    elseif img(i,j) <= 95
      imgBin(i,j) = 64;
    elseif img(i,j) <= 127
      imgBin(i,j) = 96;
    elseif img(i,j) <= 159
      imgBin(i,j) = 128;
    elseif img(i,j) <= 191
      imgBin(i,j) = 160;
    elseif img(i,j) <= 223
      imgBin(i,j) = 192;
    else
      imgBin(i,j) = 224;
    endif
  endfor
endfor

figure(1),imshow(img);
figure(2),imshow(imgBin);




