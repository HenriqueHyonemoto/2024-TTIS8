pkg load image;
clc;

img = imread('Lena512.bmp');

passaBaixa = [1, 2, 1; 2, 4, 2; 1, 2, 1];
passaBaixa = passaBaixa/16;

imgSuavizada = conv2(passaBaixa, img);
imgSuavizada = uint8(imgSuavizada);

figure(1),subplot(1,2,1), imshow(img);
figure(1),subplot(1,2,2), imshow(imgSuavizada);

