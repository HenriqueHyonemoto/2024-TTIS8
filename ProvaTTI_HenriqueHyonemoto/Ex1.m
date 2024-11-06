pkg load image;
clc;

img = imread("Lena512.bmp");

imgNiveis=img;
[M,N]=size(img);

for i = 1:M
  for j = 1:N
    if imgNiveis(i,j) <= 64
      imgNiveis(i,j)=0;
    elseif imgNiveis(i,j) <= 128
      imgNiveis(i,j)=85;
    elseif imgNiveis(i,j) <= 192
      imgNiveis(i,j)=170;
    else
      imgNiveis(i,j)=255;
    endif
  end
end

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(imgNiveis);
