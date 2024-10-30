pkg load image;
clc;

img=imread("marcada.bmp");

img4niveis = img/64;
img4niveis = uint8(img4niveis);
img4niveis = img4niveis*64;

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(img4niveis);
