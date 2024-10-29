pkg load image;
clc;

img = imread("marcada.bmp");

pb_filter = [1,2,1;2,0,2;1,2,1];
pb_filter = pb_filter/12;

imgSuave = conv2(pb_filter,img);
imgSuave = uint8(imgSuave);

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(imgSuave);
