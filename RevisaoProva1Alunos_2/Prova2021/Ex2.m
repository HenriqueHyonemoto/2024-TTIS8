pkg load image;
clc;

img = imread("marcada.bmp");

img256 = img/256;
img256 = uint8(img256);
img256 = img256*256;

[M,N] = size(img);

for i = 1:M
  for j = 1:N
    if img(i,j) > 220
      img256(i,j) - 30;
     elseif img256(i,j) < 120
      img256(i,j) + 30
    endif
  endfor
 end

 figure(1),subplot(1,2,1),imshow(img);
 figure(1),subplot(1,2,2),imshow(img256);
