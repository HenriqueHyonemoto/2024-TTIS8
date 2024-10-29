pkg load image;
clc;

img = imread('marcada.bmp');

img4 = img/64;
img4 = uint8(img4);
img4 = img4*64;


imshow(img4);





