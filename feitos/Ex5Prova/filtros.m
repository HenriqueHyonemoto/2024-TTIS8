pkg load image;
clear all;
clc;

img = imread('Lena512.bmp');

imgSobel = edge(img,'sobel');
imgRoberts = edge(img,'roberts');
imgPrewitt = edge(img, 'prewitt');

figure(1), subplot(2,2,1),imshow(img),title('Imagem Original');
figure(1), subplot(2,2,2),imshow(imgSobel),title('Bordas(Sobel)');
figure(1), subplot(2,2,3),imshow(imgPrewitt),title('Bordas(Prewitt)');
figure(1), subplot(2,2,4),imshow(imgRoberts),title('Bordas(Roberts)');


