pkg load image;
clc;

img = imread('C:\Users\Veterano\Documents\H_Topics\Aula1\lena512.bmp');

imgBkQuad = img;

for col = 1:512
  for lin = 1:512
    imgBkQuad(col,lin) += 100;
  endfor
endfor

figure(1),imshow(img)
figure(2),imshow(imgBkQuad)





