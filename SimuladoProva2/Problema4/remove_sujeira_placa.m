pkg load image;  % Carregar o pacote de imagem
clc;  % Limpar o console
clear all;  % Limpar as variáveis

% Carregar a imagem
img = imread("placa2terra.bmp");

% Verificar se a imagem é colorida (RGB) ou em escala de cinza
if size(img, 3) == 3
    % Converter para escala de cinza
    img = rgb2gray(img);
end

% Converter para binária, usando um limiar
bw = im2bw(img);  % Essa função converte a imagem para binária automaticamente

% Definir o elemento estruturante (kernel) para a operação de abertura
se = strel('disk', 8,0);  % Usamos um disco de raio 5 como elemento estruturante (pode ajustar)

% Aplicar a abertura na imagem binária
opened_img = imclose(bw, se);

% Exibir a imagem original e a imagem com abertura
subplot(1, 2, 1);
imshow(bw);
title('Imagem Binária');

subplot(1, 2, 2);
imshow(opened_img);
title('Imagem com Abertura');
imwrite(opened_img,'placa2limpa.bmp');

