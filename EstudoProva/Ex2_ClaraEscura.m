pkg load image;
clc;

img = imread("Lena512.bmp");

imgLD = img/256;
imgLD = uint8(imgLD);
imgLD = imgLD*256;

[M,N]=size(img);

for i = 1:M
  for j = 1:N
    if imgLD(i,j) > 220
      imgLD(i,j)-20;
     elseif imgLD(i,j) < 110
      imgLD(i,j)+30;
    endif
  endfor
end

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(imgLD);
