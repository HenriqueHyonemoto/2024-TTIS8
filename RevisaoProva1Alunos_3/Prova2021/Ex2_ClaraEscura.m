pkg load image;
clc;

img = imread("marcada.bmp");

imgFinal=img/256;
imgFinal=uint8(imgFinal);
imgFinal=imgFinal*256;

[M,N]=size(imgFinal);

for i = 1:M
  for j = 1:N
    if imgFinal(i,j) > 220
      imgFinal(i,j)-30;
    elseif imgFinal(i,j)<120
      imgFinal(i,j)+30;
    endif
  endfor
end

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(imgFinal);
