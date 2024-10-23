pkg load image;
clc;

img = imread('lena512.bmp');

imgNiveis = img;

[M, N] = size(img);

for i = 1:M
  for j = 1:N
    if img(i,j) <= 64
      imgNiveis(i,j) = 30;
    elseif img(i,j) <= 128
      imgNiveis(i,j) = 100;
    elseif img(i,j) <= 192
      imgNiveis(i,j) = 170;
    else
      imgNiveis(i,j) = 250;
    endif
  endfor
endfor

figure(1),imshow(img);
figure(2),imshow(imgNiveis);
