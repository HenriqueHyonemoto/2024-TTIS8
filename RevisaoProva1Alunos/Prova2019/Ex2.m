pkg load image;
clc;

img = imread('Lena512.bmp');
#CASO A IMG NAO ESTEJA EM PRETO E BRANCO
imgMod = img/255;
imgMod=imgMod*255;

[M, N] = size(imgMod);

# I = 1:M
for i = 1:M
  for j = 1:N
    if imgMod(i,j) > 200
      imgMod(i,j) - 30;
    elseif imgMod(i,j) < 100
      imgMod(i,j) + 20;
    endif
  endfor
  end

 figure(1),subplot(1,2,1),imshow(img);
 figure(1),subplot(1,2,2),imshow(imgMod);
