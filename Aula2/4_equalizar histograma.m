pkg load image;
clc;

imgEsc = imread('ImagemTesteEscuro.bmp');

#imgEsc = rgb2gray(img); caso a imagem não esteja em tons de cinza.

imgEq = histeq(imgEsc); #função de equalizar o histograma
imgEq = imgEq*255;
imgEq= uint8(imgEq);


figure(1),colormap(gray),imshow(imgEsc), title('Imagem Escura');
figure(2),colormap(gray),imshow(imgEq), title('Imagem Equalizada');

figure(3),colormap(gray),imhist(imgEsc), title('Histograma Imagem Escura');
figure(4),colormap(gray),imhist(imgEq), title('Histograma Imagem Equalizada');

imwrite(imgEq,'imagemEqualizadaAula.bmp');







