pkg load image;
clc;
clear all;
% Leia a imagem (substitua 'imagem.jpg' pelo caminho do arquivo)
img = imread('moeda5.bmp');

% Converta a imagem para tons de cinza (caso não seja)
if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end

% Normalizar a imagem para o intervalo [0, 1]
img_normalized = double(img_gray) / 255;

% Divida em 4 níveis de cinza
% Os níveis serão: 0, 85, 170, 255 (equivalentes a 0, 1/3, 2/3 e 1 em escala normalizada)
img_quantized = round(img_normalized * 3) / 3;

% Converta de volta para o intervalo [0, 255]
img_final = uint8(img_quantized * 255);

% Salve ou visualize a imagem resultante
imshow(img_final);


