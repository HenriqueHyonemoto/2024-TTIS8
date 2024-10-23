pkg load image;
clc;

a = imread('lena512.bmp');
b = imcrop(a,[100,100,180,180]); #100,100 são locais que vao começar o corte posição (linha 100, coluna 100) e (linha 180, coluna 180) isso corta um quadrado no centro da imagem

figure(1), subplot(2,1,1),colormap(gray),imshow(a);
figure(1), subplot(2,1,2),colormap(gray),imshow(b);










