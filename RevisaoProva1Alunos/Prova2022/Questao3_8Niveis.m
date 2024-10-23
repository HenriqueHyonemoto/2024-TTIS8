pkg load image;
clc;

img = imread('lena512.bmp');

#Para transformar imagem em niveis de cinza, bazta dividir 256 pelo nuemro de niveis ex 256/8, 8 niveis


img2 = img/32;
img2 = uint8(img2);
img2 = img2*32;


figure(1),imshow(img);
figure(2),imshow(img2);
