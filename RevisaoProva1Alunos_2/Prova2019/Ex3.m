pkg load image;
clc;

img = imread("Lena512.bmp");

img7= img/37;
img7=uint8(img7);
img7=img7*37;

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(img7);
