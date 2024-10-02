pkg load image;
clc;

img = imread('cameraman128.bmp');
#img = rgb2gray(img); não converte imagem que ja é cinza, pois ele procura uma imagem que tem CORES
[M,N]= size(img);
img = imnoise(img, 'Salt & Pepper');
c = img;
c = double(c);

for i=2:M-1 #matriz 3x3, começou em 2 para poder existir o (1*(c(i-1,j-1)))
    for j=2:N-1
      filtroc = [(c(i-1,j-1))  (c(i-1,j)) (c(i-1,j+1))
                (c(i,j-1))      (c(i,j))   (c(i,j+1))
                (c(i+1,j-1))    (c(i+1,j))  (c(i+1,j+1))]
             vetc = reshape(filtroc,1,9);
             vetco = sort(vetc);
             c(i,j) = vetco(5);
    endfor
endfor

c = uint8(c);
figure(1), subplot(1,2,1), imshow(img);
figure(1), subplot(1,2,2), imshow(c);










