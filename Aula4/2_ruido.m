clc;
clear;

img = imread('cameraman128.bmp');

#img = rgb2gray(img); não converte imagem que ja é cinza, pois ele procura uma imagem que tem CORES
[M,N] = size(img);

imgRuido = imnoise(img, 'salt & pepper');

c3 = imgRuido;
c5 = imgRuido;
c7 = imgRuido;

c3 = double(c3);
c5 = double(c5);
c7 = double(c7);

for i=2:M-1 #matriz 3x3, começou em 2 para poder existir o (1*(c(i-1,j-1)))
  for j=2:N-1
   c3(i,j) = ((1*(c3(i-1,j-1))) + (1*(c3(i-1,j))) + (1*(c3(i-1,j+1))) +
              (1*(c3(i,j-1)))   + (1*(c3(i,j)))   + (1*(c3(i,j+1)))   +
              (1*(c3(i+1,j-1))) + (1*(c3(i+1,j))) + (1*(c3(i+1,j+1))))/9;
  endfor
endfor

for i = 3:M-2 #matriz 5x5, começou em 3 para poder existir os anteriores
    for j = 3:N-2
        c5(i,j) = (1*(c5(i-2,j-2))  + (1*(c5(i-2,j-1))) + (1*(c5(i-2,j))) + (1*(c5(i-2,j+1))) + (1*(c5(i-2,j+2)))  +
                  (1*(c5(i-1,j-2))) + (1*(c5(i-1,j-1))) + (1*(c5(i-1,j))) + (1*(c5(i-1,j+1))) + (1*(c5(i-1,j+2)))  +
                  (1*(c5(i,j-2)))   + (1*(c5(i,j-1)))   + (1*(c5(i,j)))   + (1*(c5(i,j+1)))   + (1*(c5(i,j+2)))    +
                  (1*(c5(i+1,j-2))) + (1*(c5(i+1,j-1))) + (1*(c5(i+1,j))) + (1*(c5(i+1,j+1))) + (1*(c5(i+1,j+2)))  +
                  (1*(c5(i+2,j-2))) + (1*(c5(i+2,j-1))) + (1*(c5(i+2,j))) + (1*(c5(i+2,j+1))) + (1*(c5(i+2,j+2)))) / 25;
    endfor
endfor

for i = 4:M-3  #matriz 7x7, começou em 4 para poder existir os anteriores, + tratamento de borda
    for j = 4:N-3
        c7(i, j) = (1*(c7(i-3, j-3))  + (1*(c7(i-3, j-2))) + (1*(c7(i-3, j-1))) + (1*(c7(i-3, j))) + (1*(c7(i-3, j+1))) + (1*(c7(i-3, j+2))) + (1*(c7(i-3, j+3)))  +
                   (1*(c7(i-2, j-3))) + (1*(c7(i-2, j-2))) + (1*(c7(i-2, j-1))) + (1*(c7(i-2, j))) + (1*(c7(i-2, j+1))) + (1*(c7(i-2, j+2))) + (1*(c7(i-2, j+3)))  +
                   (1*(c7(i-1, j-3))) + (1*(c7(i-1, j-2))) + (1*(c7(i-1, j-1))) + (1*(c7(i-1, j))) + (1*(c7(i-1, j+1))) + (1*(c7(i-1, j+2))) + (1*(c7(i-1, j+3)))  +
                   (1*(c7(i, j-3)))   + (1*(c7(i, j-2)))   + (1*(c7(i, j-1)))   + (1*(c7(i, j)))   + (1*(c7(i, j+1)))   + (1*(c7(i, j+2)))   + (1*(c7(i, j+3)))    +
                   (1*(c7(i+1, j-3))) + (1*(c7(i+1, j-2))) + (1*(c7(i+1, j-1))) + (1*(c7(i+1, j))) + (1*(c7(i+1, j+1))) + (1*(c7(i+1, j+2))) + (1*(c7(i+1, j+3)))  +
                   (1*(c7(i+2, j-3))) + (1*(c7(i+2, j-2))) + (1*(c7(i+2, j-1))) + (1*(c7(i+2, j))) + (1*(c7(i+2, j+1))) + (1*(c7(i+2, j+2))) + (1*(c7(i+2, j+3)))  +
                   (1*(c7(i+3, j-3))) + (1*(c7(i+3, j-2))) + (1*(c7(i+3, j-1))) + (1*(c7(i+3, j))) + (1*(c7(i+3, j+1))) + (1*(c7(i+3, j+2))) + (1*(c7(i+3, j+3)))) / 49;
    endfor
endfor

c3 = uint8(c3);
c5 = uint8(c5);
c7 = uint8(c7);

figure(1),subplot(1,4,1),imshow(imgRuido);
figure(1),subplot(1,4,2),imshow(c3);
figure(1),subplot(1,4,3),imshow(c5);
figure(1),subplot(1,4,4),imshow(c7);

