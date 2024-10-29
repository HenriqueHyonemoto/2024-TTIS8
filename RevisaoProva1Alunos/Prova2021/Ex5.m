pkg load image;
clc;

img = imread('marcada.bmp');

[M,N] = size(img);
imgResultado = zeros(M,N);

for i = 1:M
  for j = 1:N
    imgResultado(i,j) = bitget(img(i,j),1);
  endfor
end

figure(1),imshow(imgResultado);



