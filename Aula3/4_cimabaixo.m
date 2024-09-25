clear;
pkg load image;
clc;


a = imread('lena128.bmp');
b = imread('cameraman128.bmp');
c = uint8(zeros(256,128)); #inverte a orientação 128x256 -> 256x128

for i = 1:256 # troca 128 por 256
    for j = 1:128 # troca 256 por 128
        if i<129 #troca  jpor i
           c(i,j) = a(i,j);
         else
           c(i,j) = b(i-128,j); #tira 128 de i ao inves de j
        endif
    endfor
endfor

figure(1),imshow(c);
imwrite(c,'lena_cameraman.bmp')
