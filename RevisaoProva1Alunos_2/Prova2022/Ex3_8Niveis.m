pkg load image;
clc;

img = imread("Lena512.bmp");

img8L = img/(256/8);
img8L = uint8(img8L);
img8L = img8L*(256/8);

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(img8L);
