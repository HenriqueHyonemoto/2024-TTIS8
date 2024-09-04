pkg load image;
clc;

img = imread('C:\Users\Veterano\Documents\H_Topics\Aula1\lena512.bmp');

imgBin = img;

[M, N] = size(img);

for i = 1:M
  for j = 1:N
    if img(i,j) >= 127
      imgBin(i,j) = 255;
    else
      imgBin(i,j) = 0;
    endif
  endfor
endfor

figure(1),imshow(img);
figure(2),imshow(imgBin);





