pkg load image;
clc;

img = imread("marcada.bmp");

imgGray = img/256;
imgGray = uint8(imgGray);
imgGray = imgGray*256;

[M,N] = size(imgGray);

for i=1:M
  for j = 1:N
    if imgGray(i,j) > 200
    imgGray(i,j)-30;
  elseif imgGray(i,j) < 100
    imgGray(i,j)+20;
  end
  end
end

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(imgGray);
