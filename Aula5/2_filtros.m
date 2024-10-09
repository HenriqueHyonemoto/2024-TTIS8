pkg load image;
clear all;
clc;

img1 = imread('lenaRGB.png');

imwrite(img1, 'lenaRGB.jpg');
imwrite(img1, 'lenaRGB40.jpg', 'jpg', 'Quality',40);

img2 = imread('lenaRGB40.jpg');

semelhanca = corr2(img1, img2)

figure(1), subplot(1,2,1), imshow(img1);
figure(1), subplot(1,2,2), imshow(img2);
