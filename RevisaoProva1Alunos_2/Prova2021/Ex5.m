pkg load image;
clc;

img = imread("marcada.bmp");

imgFinal=img;

imgFinal = bitget(imgFinal,1);

figure(1),imshow(imgFinal);
