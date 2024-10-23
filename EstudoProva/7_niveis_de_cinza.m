pkg load image;
clc;

imgIf = imread('if.jpg');
imgIfG = rgb2gray(imgIf);

figure(1),imshow(imgIf), title ('img original');
figure(2),imshow(imgIfG), title ('img niveis de cinza');



