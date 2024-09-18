pkg load image;
clc;

imgEsc = imread('C:\Users\Veterano\Documents\H_Topicos\Aula2\ImagemTesteEscuro.bmp');

imgEq = histeq(imgEsc); #função de equalizar o histograma
imgEq = imgEq*255;
imgEq= uint8(imgEq);

figure(1),colormap(gray),imshow(imgEsc), title('Imagem Escura');
figure(2),colormap(gray),imshow(imgEq), title('Imagem Equalizada');

figure(3),colormap(gray),imhist(imgEsc), title('Histograma Imagem Escura');
figure(4),colormap(gray),imhist(imgEq), title('Histograma Imagem Equalizada');







