clc;
clear;

pkg image load;

img = imread ('imgFechamento.png');

SE = ones(3,3);#cria uma matriz 3x3 com valores 1, ele é o filtro que passa para selecionar o contorno
dilatacao = imdilate(img,SE);

fechamento = imerode(dilatacao,SE);

figure(1),subplot(2,3,1),imshow(img);
figure(1),subplot(2,3,3),imshow(dilatacao);
figure(1),subplot(2,3,5),imshow(fechamento);
