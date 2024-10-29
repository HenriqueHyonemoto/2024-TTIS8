pkg load image;
clc;

img = imread('marcada.bmp');

imgGrey = img/255;
imgGrey = uint8(imgGrey);
imgGrey = imgGrey*255;

[X,Y] = size(img);

for i = 1:X
  for j = 1:Y
    if imgGrey(i,j) > 220
      imgGrey(i,j) - 30;
    elseif imgGrey(i,j) < 120
      imgGrey(i,j) + 30;
    endif
  endfor
end

figure(1),imshow(img);
figure(2),imshow(imgGrey);

