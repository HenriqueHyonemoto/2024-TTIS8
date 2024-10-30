pkg load image;
clc;
clear;

img = imread("marcada.bmp");

img7Niveis = img/37;
img7Niveis = uint8(img7Niveis);
img7Niveis = img*37;

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(img7Niveis);
