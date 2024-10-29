pkg load image;
clc;

img = imread("buxa.jpeg");

img=rgb2gray(img);

for i = 1:M
  for j = 1:N
    if img(i,j) > 200
      img(i,j)-30;
    elseif img(i,j) < 100
      img(i,j)+20;
    endif
  end
 end

  figure(1),imshow(img);
