pkg load image;
clc;


s = [-1 -2 -1; 2 4 2; -1 -2 -1]; #2 barras horizontais

s = [-1 2 -1; -1 2 -1; -1 2 -1]; #2 barras verticais
img = zeros(10,10);

img(3:7,3:7)=1;

b = conv2(s,img);

figure(1),subplot(1,2,1),imshow(img);
figure(1),subplot(1,2,2),imshow(b);









