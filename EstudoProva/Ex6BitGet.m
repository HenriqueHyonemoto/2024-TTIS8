pkg load image;
clc;

img = imread("informacao.bmp");

imgMsg = img;
imgMsg=bitget(imgMsg,1);

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(imgMsg);
