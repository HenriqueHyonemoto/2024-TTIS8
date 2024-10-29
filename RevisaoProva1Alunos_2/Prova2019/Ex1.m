pkg load image;
clc;

img = imread("buxa.jpeg");

img = rgb2gray(img);

[M,N] = size(img);

for i = 1:M
  for j = 1:N
    if img(i,j) < 64
      img(i,j)=25;
    elseif img(i,j)<128
      img(i,j)=100;
     elseif img(i,j)<192
      img(i,j)=180;
    else
      img(i,j)=250;
    endif
  endfor
 end

 figure(1),imshow(img);
