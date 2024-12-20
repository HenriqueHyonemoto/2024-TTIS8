clc;
clear all;
pkg load image;

img = imread('rio.bmp');
%img_bin = im2bw(img);

se = strel('square', 8);  % Define o elemento estruturante, neste caso, um disco com raio 5

img_aberta = imerode(img, se);  % Erosão
img_aberta = imdilate(img_aberta, se);  % Dilatação
figure(1),subplot(1,1,1),imshow(img_aberta),title('Abertura');

%img_fechada = imdilate(img, se);  % Dilatação
%img_fechada = imerode(img_fechada, se);  % Erosão
%figure(2),subplot(1,1,1),imshow(img_fechada),title('Fechamento');

