pkg load image;
clear all;
clc;

#[filename, pathname] = uigetfile({'*.bmp'},'Selecione a Imagem')
[#filename, pathname] = uigetfile({'*.png'},'Selecione a Imagem')
[filename, pathname] = uigetfile('Selecione a Imagem')
[img] = imread(filename);
#img = rgb2gray(img);

imgSobel = edge(img,'sobel');
imgCanny = edge(img,'canny',0.1);
imgRoberts = edge(img,'roberta',0.3);
imgPrewitt = edge(img, 'prewitt');

imwrite(imgSobel, 'ImagemSobel.bmp');
imwrite(imgCanny, 'ImagemCanny.bmp');
imwrite(imgRoberts, 'ImagemRoberts.bmp');
imwrite(imgPrewitt, 'ImagemPrewitt.bmp');

figure(1), subplot(3,3,2),imshow(img),title('Imagem Original');
figure(1), subplot(3,3,4),imshow(img),title('Imagem Filtro');
figure(1), subplot(3,3,6),imshow(img),title('Imagem Filtro');
figure(1), subplot(3,3,7),imshow(img),title('Imagem Filtro');
figure(1), subplot(3,3,9),imshow(img),title('Imagem Filtro');







