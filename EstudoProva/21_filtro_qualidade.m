pkg load image;
clear all;
clc;

img1 = imread('lenaRGB.png');

imwrite(img1, 'lenaRGB.jpg');
imwrite(img1, 'lenaRGB40.jpg', 'jpg', 'Quality',40);

img2 = imread('lenaRGB40.jpg');

% Convertendo para double antes de calcular a correlação
semelhanca = corr2(double(img1), double(img2));

figure(1), subplot(1,2,1), imshow(img1);
figure(1), subplot(1,2,2), imshow(img2);

