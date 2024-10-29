pkg load image;
clc;
img = imread('marcada.bmp')

pb_filter = [1 2 1;2 0 2;1 2 1]
pb_filter = pb_filter/12;

imgSuavizada = conv2(img, pb_filter);
imgSuavizada = uint8(imgSuavizada);

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(imgSuavizada);

