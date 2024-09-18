pkg load image;
clc;

a = imread('C:\Users\Veterano\Documents\H_Topicos\Aula2\lena512.bmp');
b = imcrop(a,[100,100,180,180]);

figure(1), subplot(2,1,1),colormap(gray),imshow(a);
figure(1), subplot(2,1,2),colormap(gray),imshow(b);










