pkg load image;
clc;

img = imread("marcada.bmp");

imgSecret = bitget(img,1);

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(imgSecret);
