pkg load image;
clc;

a = imread('lena128.bmp');
b = imread('cameraman128.bmp');
c = uint8(zeros(256,128));

for i = 1:128
    for j = 1:256
        if j<129
           c(i,j) = a(i,j);
         else
           c(i,j) = b(i-128,j);
        endif
    endfor
endfor

figure(1),imshow(c);
imwrite(c,'lena_cameraman.bmp')









