pkg load image;
clc;

img=imread("Lena512.bmp");

imgNiveis=img;

[M,N]=size(img);

for i = 1:M
  for j = 1:N
    if imgNiveis(i,j) <= 64
      imgNiveis(i,j) = 30;
    elseif imgNiveis(i,j) <= 128
      imgNiveis(i,j) = 100;
    elseif imgNiveis(i,j) <= 192
      imgNiveis(i,j) = 170;
    else
      imgNiveis(i,j) = 250;
        endif
  endfor
  end

  figure(1),subplot(1,2,1),imshow(img);
  figure(1),subplot(1,2,2),imshow(imgNiveis);

