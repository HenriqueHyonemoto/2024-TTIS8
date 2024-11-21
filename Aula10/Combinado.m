clc;
clear all;

pkg image load;

img = imread ('if.jpg');
imgBW = rgb2gray(img);

SE = ones(13,13);#cria uma matriz 3x3 com valores 1, ele é o filtro que passa para selecionar o contorno
imgErode = imerode(img,SE);

combinado = img - imgErode;

figure(1),subplot(2,3,1),imshow(img);
figure(1),subplot(2,3,3),imshow(imgBW);
figure(1),subplot(2,3,4),imshow(imgErode);
figure(1),subplot(2,3,6),imshow(combinado);
