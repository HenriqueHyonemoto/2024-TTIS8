clc;
clear;

pkg image load;

img = imread ('imgAbertura.png');

SE = ones(3,3);#cria uma matriz 13x13 com valores 1, ele é o filtro que passa para selecionar o contorno
imgErode = imerode(img,SE);

abertura = imdilate(imgErode,SE);

figure(1),subplot(2,3,1),imshow(img);
figure(1),subplot(2,3,3),imshow(imgErode);
figure(1),subplot(2,3,5),imshow(abertura);
