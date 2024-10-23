pkg load image;
clc;

img = imread('lena512.bmp');

#transformando imagem em 256
img256 = img/255;
img256 = img256*255;



[M, N] = size(img);

for i = 1:M
  for j = 1:N
    if img(i,j) > 220
      img256(i,j) + 20;
    else
      img256(i,j) - 30;
    endif
  endfor
endfor

figure(1),imshow(img);
figure(2),imshow(img256);
