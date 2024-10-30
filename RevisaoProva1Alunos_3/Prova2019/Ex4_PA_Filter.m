pkg load image;
clc;

img = imread("marcada.bmp");

pa_filter = [1,-2,1;
            -2,4,-2;
              1,2,1];

imgBorda = conv2(pa_filter,img);
imgBorda = uint8(imgBorda);

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(imgBorda);
