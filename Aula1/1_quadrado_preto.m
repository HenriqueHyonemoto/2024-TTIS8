pkg load image;
clc;

img = imread('C:\Users\Veterano\Documents\H_Topicos\Aula1\lena512.bmp');

imgBkQuad = img;

for col = 1:35
  for lin = 1:55
    imgBkQuad(col,lin) = 0;
  endfor
endfor

figure(1),imshow(img)
figure(2),imshow(imgBkQuad)
