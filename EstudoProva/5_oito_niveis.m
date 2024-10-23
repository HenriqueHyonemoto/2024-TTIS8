pkg load image;
clc;

img = imread('C:\Users\Veterano\Documents\H_Topicos\Aula1\lena512.bmp');

#img2 = img;

#[M, N] = size(img);



img2 = img/32;
img2 = img2*32;


figure(1),imshow(img);
figure(2),imshow(img2);




