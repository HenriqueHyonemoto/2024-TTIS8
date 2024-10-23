clc;
clear;

img = imread('imgRuido.png');
c3 = img;
#img = rgb2gray(img); não converte imagem que ja é cinza, pois ele procura uma imagem que tem CORES
[M,N] = size(c3);


#imgRuido = imnoise(img, 'salt & pepper');

c3 = double(c3);

for i=2:M-1 #matriz 3x3, começou em 2 para poder existir o (1*(c(i-1,j-1)))
  for j=2:N-1
   c3(i,j) = ((1*(c3(i-1,j-1))) + (1*(c3(i-1,j))) + (1*(c3(i-1,j+1))) + #uma linha e uma coluna antes | somente uma linha antes | uma linha antes e uma coluna depois
              (1*(c3(i,j-1)))   + (1*(c3(i,j)))   + (1*(c3(i,j+1)))   + # somente uma coluna antes | valor de referencia | somente uma coluna depois
              (1*(c3(i+1,j-1))) + (1*(c3(i+1,j))) + (1*(c3(i+1,j+1))))/9; # uma linha depois e uma coluna antes | somente uma linha depois | uma linha e uma coluna depois
  endfor
endfor

c3 = uint8(c3);

figure(1),imshow(img);
figure(2),imshow(c3);



