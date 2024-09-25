pkg load image;
clc;

imgIf = imread('C:\Users\Veterano\Documents\H_Topicos\Aula2\if.jpg');
imgIfG = rgb2gray(imgIf);

figure(1),imshow(imgIf), title ('img de fundo');
figure(2),imshow(imgIfG), title ('Logo');



