pkg load image;
clc;

img = imread("marcada.bmp");

img4 = img/64;
img4 = uint8(img4);
img4 = img4*64;

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(img4);
