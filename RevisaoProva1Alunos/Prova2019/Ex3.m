pkg load image;
clc;

img = imread('Lena512.bmp');

imgNiveis = img/37;
imgNiveis = uint8(imgNiveis);
imgNiveis = imgNiveis*37;

figure(1),imshow(imgNiveis);
